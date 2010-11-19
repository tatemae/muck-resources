require 'fileutils'

namespace :muck do

  namespace :sync do
    desc "Sync files from muck resources."
    task :resources do
      path = File.join(File.dirname(__FILE__), *%w[.. ..])
      # FileUtils.cp_r "#{path}/public", ".", :verbose => true, :remove_destination => true
      system "rsync -ruv #{path}/public ."
    end
  end

end
