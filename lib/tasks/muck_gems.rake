require 'fileutils'
      
namespace :muck do

  # just returns the names of the gems as specified by muck_gems
  def muck_gem_names
    muck_gems = []
    Rails.application.railties.all.each do |railtie|
      muck_gems << railtie.muck_name if railtie.respond_to?(:muck_name)
    end    
    muck_gems
  end
  
  # Returns the folder name for each gem.  Note that muck-solr lives in the acts_as_solr directory
  def muck_gem_paths
      muck_gem_names.collect{|name| muck_gem_path(name)}
  end

  def muck_gem_path(gem_name)
    if gem_name == 'muck-solr'
      'acts_as_solr'
    else
      gem_name
    end
  end

  def muck_gem_lib(gem_name)
    if gem_name == 'muck-solr'
      'acts_as_solr'
    else
      gem_name.sub('-', '_')
    end
  end

  def ensure_muck_gems_path
    gem_path = muck_gems_path
    FileUtils.mkdir_p(gem_path) unless File.exists?(gem_path)
  end

  def muck_gems_path
    #File.join(File.dirname(__FILE__), '..', '..', 'vendor', 'gems')
    File.join(RAILS_ROOT, 'vendor', 'gems')
  end

  # Path to all other projects.  Usually the muck engines will be a sibling to muck
  def projects_path
    File.join(RAILS_ROOT, '..')
  end

  def release_gem(path, gem_name)
    gem_path = File.join(path, muck_gem_path(gem_name))
    puts "releasing #{gem_name}"
    inside gem_path do
      if File.exists?('pkg/*')
        puts "attempting to delete files from pkg.  Results #{system("rm pkg/*")}"
      end
      puts system("rake version:bump:patch")
      system("rake gemspec")
      puts system("rake gemcutter:release")
    end
    write_new_gem_version(path, gem_name)
  end

  # examples of stuff we need to look for:
  # config.gem "muck-raker", :version => '>=0.3.2'
  def write_new_gem_version(path, gem_name)
    puts "Updating version for: #{gem_name}"
    gem_lib = muck_gem_lib(gem_name)
    gem_path = File.join(path, muck_gem_path(gem_name))
    env_file = File.join(RAILS_ROOT, 'config', 'environment.rb')
    version_file = File.join(gem_path, 'VERSION')
    if !File.exists?(version_file)
      puts "Could not find version file for #{gem_name}.  You probably don't have the code for this gem.  
        No big deal since if you don't have the code you probably haven't change it.  Skipping version for this gem."
      return 
    end
    version = IO.read(version_file).strip
    environment = IO.read(env_file)
  
    search = Regexp.new(/\:lib\s*=>\s*['"]#{gem_lib}['"],\s*\:version\s*=>\s*['"][ <>=~]*\d+\.\d+\.\d+['"]/)
    failure = environment.gsub!(search, ":lib => '#{gem_lib}', :version => '>=#{version}'").nil?
  
    if failure
      search = Regexp.new(/config.gem\s*['"]#{gem_name}['"],\s*\:version\s*=>\s*['"][ <>=~]*\d+\.\d+\.\d+['"]/)
      failure = environment.gsub!(search, "config.gem '#{gem_name}', :version => '>=#{version}'").nil?
    end  

    if failure
      search = Regexp.new(/config.gem\s*['"]#{gem_name}['"],\s*\:lib\s*=>\s*['"]#{gem_lib}['"]/)
      failure = environment.gsub!(search, "config.gem '#{gem_name}', :lib => '#{gem_lib}', :version => '>=#{version}'").nil?
    end
  
    if failure
      search = Regexp.new(/config.gem\s*['"]#{gem_name}['"]/)
      failure = environment.gsub!(search, "config.gem '#{gem_name}', :version => '>=#{version}'").nil?
    end
  
    if failure
      puts "Could not update version for #{gem_name}"
    end

    File.open(env_file, 'w') { |f| f.write(environment) }
  end
  
  
  # examples of stuff we need to look for:
  # config.gem "muck-raker", :version => '>=0.3.2'
  def write_new_gem_version_in_bundle(path, gem_name)
    puts "Updating version for: #{gem_name}"
    gem_lib = muck_gem_lib(gem_name)
    gem_path = File.join(path, muck_gem_path(gem_name))
    gem_file = File.join(RAILS_ROOT, 'Gemfile')
    version_file = File.join(gem_path, 'VERSION')
    if !File.exists?(version_file)
      puts "Could not find version file for #{gem_name}.  You probably don't have the code for this gem.  
        No big deal since if you don't have the code you probably haven't change it.  Skipping version for this gem."
      return 
    end
    version = IO.read(version_file).strip
    environment = IO.read(gem_file)
  
    search = Regexp.new(/\:require\s*=>\s*['"]#{gem_lib}['"],\s*['"][ <>=~]*\d+\.\d+\.\d+['"]/)
    failure = environment.gsub!(search, "'#{version}', :require => '#{gem_lib}'").nil?
  
    if failure
      search = Regexp.new(/gem\s*['"]#{gem_name}['"],\s*['"][ <>=~]*\d+\.\d+\.\d+['"]/)
      failure = environment.gsub!(search, "gem '#{gem_name}', '#{version}'").nil?
    end  

    if failure
      search = Regexp.new(/gem\s*['"]#{gem_name}['"],\s*\:require\s*=>\s*['"]#{gem_lib}['"]/)
      failure = environment.gsub!(search, "gem '#{gem_name}', '#{version}', :require => '#{gem_lib}'").nil?
    end
  
    if failure
      search = Regexp.new(/gem\s*['"]#{gem_name}['"]/)
      failure = environment.gsub!(search, "gem '#{gem_name}', '#{version}'").nil?
    end
  
    if failure
      puts "Could not update version for #{gem_name}"
    end

    File.open(gem_file, 'w') { |f| f.write(environment) }
  end

  # Rewrite the Gemfile with the latest gem versions installed on the local machine.
  def update_gem_file
    gemfile = File.join(RAILS_ROOT, 'Gemfile')
    contents = IO.read(gemfile)
    gems = contents.scan(/gem\s*['"]([-_\d\w]+)['"],\s*(['"][~><>=\d\.]+['"])?\s*(\:require\s*=>\s*['"]\w+['"])?/)
    gems.each do |g|
      success = false
      search = "gem #{g[0]}"
      search << ", #{g[1]}" if g[1] # add on version if it was present
      search << ", #{g[2]}" if g[2] # add on require if it was present
      new_version = get_gem_version(g[0])
      if new_version
        replace = "gem #{g[0]}, '#{new_version}'"
        replace << ", #{g[2]}" if g[2] # add on require if it was present
        success = !contents.gsub!(search, replace)
      end
      if !success
        puts "Failed to update version for #{g[0]}"
      end
    end
    File.open(gemfile, 'w') { |f| f.write(contents) }
  end
  
  # Get the latest gem version
  def get_gem_version(gem_name)
    @si ||= Gem::SourceIndex.from_installed_gems
    gems = @si.find_name(gem_name)
    newest_gem = gems[0]
    if newest_gem
      gems.each do |gem|
        newest_gem = gem if gem.version > newest_gem.version
      end
      newest_gem.version.version
    else
      #puts "Failed to find #{gem_name} in index"
    end
  end
  
  def git_commit(path, message)
    puts "Commiting #{BLUE}#{File.basename(path)}#{INVERT}"
    repo = Git.open("#{path}")
    puts repo.add('.')
    puts repo.commit(message) rescue 'nothing to commit'
  end

  def git_push(path)
    puts "Pushing #{BLUE}#{File.basename(path)}#{INVERT}"
    repo = Git.open("#{path}")
    puts repo.push
  end

  def git_pull(path)
    puts "Pulling code for #{BLUE}#{File.basename(path)}#{INVERT}"
    repo = Git.open("#{path}")
    puts repo.pull
  end

  def git_status(path)
    repo = Git.open("#{path}")
    status = repo.status

    changed = (status.changed.length > 0 ? RED : GREEN) + "#{status.changed.length}#{INVERT}"
    untracked = (status.untracked.length > 0 ? RED : GREEN) + "#{status.untracked.length}#{INVERT}"
    added = (status.added.length > 0 ? RED : GREEN) + "#{status.added.length}#{INVERT}"
    deleted = (status.deleted.length > 0 ? RED : GREEN) + "#{status.deleted.length}#{INVERT}"
    puts "#{BLUE}#{File.basename(path)}:#{INVERT}  Changed(#{changed}) Untracked(#{untracked}) Added(#{added}) Deleted(#{deleted})"
    if status.changed.length > 0
      status.changed.each do |file|
        puts "    Changed: #{RED}#{file[1].path}#{INVERT}"
      end
    end
    # if status.untracked.length > 0
    #   status.untracked.each do |file|
    #     puts "    Untracked: #{RED}#{file[1].path}#{INVERT}"
    #   end
    # end
    # if status.added.length > 0
    #   status.added.each do |file|
    #     puts "    Added: #{RED}#{file[1].path}#{INVERT}"
    #   end
    # end
    if status.deleted.length > 0
      status.deleted.each do |file|
        puts "    Deleted: #{RED}#{file[1].path}#{INVERT}"
      end
    end
    puts ""
  end

  # execute commands in a different directory
  def inside(dir, &block)
    FileUtils.cd(dir) { block.arity == 1 ? yield(dir) : yield }
  end
  
  namespace :gems do
    
    # desc "Release and commit muck gems"
    # task :release_commit do
    #   muck_gem_names.each do |gem_name|
    #     message = "Released new gem"
    #     release_gem("#{projects_path}", gem_name)
    #     git_commit("#{projects_path}/#{muck_gem_path(gem_name)}", message)
    #     git_push("#{projects_path}/#{muck_gem_path(gem_name)}")
    #   end
    # end

    # desc "Release muck gems"
    # task :release do
    #   muck_gem_names.each do |gem_name|
    #     release_gem("#{projects_path}", gem_name)
    #   end
    # end
    # 
    # desc "commit gems after a release"
    # task :commit do
    #   message = "Released new gem"
    #   muck_gem_paths.each do |gem_name|
    #     git_commit("#{projects_path}/#{gem_name}", message)
    #   end
    # end
    # 
    # desc "Pull code for all the gems (use with caution)"
    # task :pull do
    #   muck_gem_paths.each do |gem_name|
    #     git_pull("#{projects_path}/#{gem_name}")
    #   end
    # end
    # 
    # desc "Push code for all the gems (use with caution)"
    # task :push do
    #   muck_gem_paths.each do |gem_name|
    #     git_push("#{projects_path}/#{gem_name}")
    #   end
    # end
    # 
    # desc "Gets status for all the muck gems"
    # task :status do
    #   muck_gem_paths.each do |gem_name|
    #     git_status("#{projects_path}/#{gem_name}")
    #   end
    # end
  
    desc "Test all muck gems"
    task :test do
      muck_gem_paths.each do |gem_name|
        puts "***************************************************************"
        puts "testing #{gem_name}"
        puts "***************************************************************"
        system("cd #{projects_path}/#{gem_name}/ && rake test")
      end
    end

    # desc "Translate all muck gems"
    # task :translate do
    #   muck_gem_paths.each do |gem_name|
    #     puts "translating #{gem_name}"
    #     system("babelphish -o -y #{projects_path}/#{gem_name}/locales/en.yml")
    #   end
    # end
    #   
    # desc "write specs into muck gems"
    # task :specs do
    #   muck_write_specs
    # end
    
  end
          
  # desc "Write muck gem versions into muck"
  # task :versions do
  #   muck_gem_names.each do |gem_name|
  #     write_new_gem_version("#{projects_path}", gem_name)
  #   end
  # end

  desc "Write muck gem versions into application's 'Gemfile'"
  task :versions do
    muck_gem_names.each do |gem_name|
      write_new_gem_version_in_bundle("#{projects_path}", gem_name)
    end
  end
  
  desc "Write gem versions (for all gems) into application's 'Gemfile'. Be sure to test with the updated gems and check the new versions."
  task :vers_all => :environment do
    update_gem_file
  end
  
  desc 'Translate app into all languages supported by Google'
  task :translate_app => :environment do
    puts 'translating app'
    system("babelphish -o -y #{RAILS_ROOT}/config/locales/en.yml")
  end

  # desc "Completely reset and repopulate the database and annotate models. THIS WILL DELETE ALL YOUR DATA"
  # task :reset do
  #   Rake::Task[ "muck:sync" ].execute
  #   Rake::Task[ "muck:reset_db" ].execute
  # end

end
