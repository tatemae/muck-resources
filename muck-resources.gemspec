# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{muck-resources}
  s.version = "3.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Justin Ball", "Joel Duffin"]
  s.date = %q{2011-03-15}
  s.description = %q{This is a container gem for resources like images, javascript and stylesheets for the muck framework and includes rake tasks for syncing these files into your application.}
  s.email = %q{justin@tatemae.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "MIT-LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/muck-resources.rb",
    "lib/muck-resources/engine.rb",
    "lib/tasks/muck_files.rake",
    "lib/tasks/muck_gems.rake",
    "muck-resources.gemspec",
    "public/images/admin/home.gif",
    "public/images/admin/source/Home.png",
    "public/images/arrow_down.gif",
    "public/images/arrow_left.gif",
    "public/images/arrow_right.gif",
    "public/images/arrow_up.gif",
    "public/images/fancybox/blank.gif",
    "public/images/fancybox/fancy_close.png",
    "public/images/fancybox/fancy_closebox.png",
    "public/images/fancybox/fancy_left.png",
    "public/images/fancybox/fancy_loading.png",
    "public/images/fancybox/fancy_nav_left.png",
    "public/images/fancybox/fancy_nav_right.png",
    "public/images/fancybox/fancy_progress.png",
    "public/images/fancybox/fancy_right.png",
    "public/images/fancybox/fancy_shadow_e.png",
    "public/images/fancybox/fancy_shadow_n.png",
    "public/images/fancybox/fancy_shadow_ne.png",
    "public/images/fancybox/fancy_shadow_nw.png",
    "public/images/fancybox/fancy_shadow_s.png",
    "public/images/fancybox/fancy_shadow_se.png",
    "public/images/fancybox/fancy_shadow_sw.png",
    "public/images/fancybox/fancy_shadow_w.png",
    "public/images/fancybox/fancy_title_left.png",
    "public/images/fancybox/fancy_title_main.png",
    "public/images/fancybox/fancy_title_over.png",
    "public/images/fancybox/fancy_title_right.png",
    "public/images/fancybox/fancybox-x.png",
    "public/images/fancybox/fancybox-y.png",
    "public/images/fancybox/fancybox.png",
    "public/images/icons/accept.png",
    "public/images/icons/add.png",
    "public/images/icons/blue_guy.png",
    "public/images/icons/button_background.png",
    "public/images/icons/cancel.png",
    "public/images/icons/close.png",
    "public/images/icons/comment.png",
    "public/images/icons/delete.png",
    "public/images/icons/exclaim.png",
    "public/images/icons/external.png",
    "public/images/icons/feed.png",
    "public/images/icons/grey_guy.png",
    "public/images/icons/hide.png",
    "public/images/icons/information.png",
    "public/images/icons/minus.png",
    "public/images/icons/pending.png",
    "public/images/icons/question.png",
    "public/images/icons/search_box.png",
    "public/images/icons/star.png",
    "public/images/icons/stop.png",
    "public/images/icons/thumb_down.png",
    "public/images/icons/thumb_up.png",
    "public/images/icons/vote.png",
    "public/images/loading-spinner.gif",
    "public/images/loading.gif",
    "public/images/nothing.png",
    "public/images/service_icons/16/amazon.png",
    "public/images/service_icons/16/ask.png",
    "public/images/service_icons/16/bibsonomy.png",
    "public/images/service_icons/16/bing.png",
    "public/images/service_icons/16/blogger.png",
    "public/images/service_icons/16/bloglines.png",
    "public/images/service_icons/16/citeulike.png",
    "public/images/service_icons/16/clipmarks.png",
    "public/images/service_icons/16/connotea.png",
    "public/images/service_icons/16/dailymotion.png",
    "public/images/service_icons/16/delicious.png",
    "public/images/service_icons/16/digg.png",
    "public/images/service_icons/16/diigo.png",
    "public/images/service_icons/16/facebook.png",
    "public/images/service_icons/16/feed.png",
    "public/images/service_icons/16/fireeagle.png",
    "public/images/service_icons/16/flickr.png",
    "public/images/service_icons/16/fotolog.png",
    "public/images/service_icons/16/friendfeed.png",
    "public/images/service_icons/16/friendster.png",
    "public/images/service_icons/16/furl.png",
    "public/images/service_icons/16/goodreads.png",
    "public/images/service_icons/16/google.png",
    "public/images/service_icons/16/googleblog.png",
    "public/images/service_icons/16/googlenews.png",
    "public/images/service_icons/16/icerocket.png",
    "public/images/service_icons/16/identica.png",
    "public/images/service_icons/16/joost.png",
    "public/images/service_icons/16/lastfm.png",
    "public/images/service_icons/16/librarything.png",
    "public/images/service_icons/16/linkedin.png",
    "public/images/service_icons/16/livejournal.png",
    "public/images/service_icons/16/magnolia.png",
    "public/images/service_icons/16/mendeley.png",
    "public/images/service_icons/16/metacafe.png",
    "public/images/service_icons/16/mixx.png",
    "public/images/service_icons/16/myspace.png",
    "public/images/service_icons/16/netflix.png",
    "public/images/service_icons/16/netvibes.png",
    "public/images/service_icons/16/newsvine.png",
    "public/images/service_icons/16/oai.png",
    "public/images/service_icons/16/odeo.png",
    "public/images/service_icons/16/opml.png",
    "public/images/service_icons/16/pandora.png",
    "public/images/service_icons/16/photobucket.png",
    "public/images/service_icons/16/picasa.png",
    "public/images/service_icons/16/polyvore.png",
    "public/images/service_icons/16/pownce.png",
    "public/images/service_icons/16/reddit.png",
    "public/images/service_icons/16/simpy.png",
    "public/images/service_icons/16/smugmug.png",
    "public/images/service_icons/16/stumbleupon.png",
    "public/images/service_icons/16/tag.png",
    "public/images/service_icons/16/technorati.png",
    "public/images/service_icons/16/tumblr.png",
    "public/images/service_icons/16/twine.png",
    "public/images/service_icons/16/twitter.png",
    "public/images/service_icons/16/vimeo.png",
    "public/images/service_icons/16/webshots.png",
    "public/images/service_icons/16/wordpress.png",
    "public/images/service_icons/16/xanga.png",
    "public/images/service_icons/16/yahoo.png",
    "public/images/service_icons/16/yelp.png",
    "public/images/service_icons/16/youtube.png",
    "public/images/service_icons/16/zooomr.png",
    "public/images/service_icons/16/zotero.png",
    "public/images/service_icons/24/amazon.png",
    "public/images/service_icons/24/ask.png",
    "public/images/service_icons/24/bibsonomy.png",
    "public/images/service_icons/24/bing.png",
    "public/images/service_icons/24/blogger.png",
    "public/images/service_icons/24/bloglines.png",
    "public/images/service_icons/24/citeulike.png",
    "public/images/service_icons/24/clipmarks.png",
    "public/images/service_icons/24/connotea.png",
    "public/images/service_icons/24/dailymotion.png",
    "public/images/service_icons/24/delicious.png",
    "public/images/service_icons/24/digg.png",
    "public/images/service_icons/24/diigo.png",
    "public/images/service_icons/24/facebook.png",
    "public/images/service_icons/24/feed.png",
    "public/images/service_icons/24/fireeagle.png",
    "public/images/service_icons/24/flickr.png",
    "public/images/service_icons/24/fotolog.png",
    "public/images/service_icons/24/friendfeed.png",
    "public/images/service_icons/24/friendster.png",
    "public/images/service_icons/24/furl.png",
    "public/images/service_icons/24/goodreads.png",
    "public/images/service_icons/24/google.png",
    "public/images/service_icons/24/googleblog.png",
    "public/images/service_icons/24/googlenews.png",
    "public/images/service_icons/24/icerocket.png",
    "public/images/service_icons/24/identica.png",
    "public/images/service_icons/24/joost.png",
    "public/images/service_icons/24/lastfm.png",
    "public/images/service_icons/24/librarything.png",
    "public/images/service_icons/24/linkedin.png",
    "public/images/service_icons/24/livejournal.png",
    "public/images/service_icons/24/magnolia.png",
    "public/images/service_icons/24/mendeley.png",
    "public/images/service_icons/24/metacafe.png",
    "public/images/service_icons/24/mixx.png",
    "public/images/service_icons/24/myspace.png",
    "public/images/service_icons/24/netflix.png",
    "public/images/service_icons/24/netvibes.png",
    "public/images/service_icons/24/newsvine.png",
    "public/images/service_icons/24/oai.png",
    "public/images/service_icons/24/odeo.png",
    "public/images/service_icons/24/opml.png",
    "public/images/service_icons/24/pandora.png",
    "public/images/service_icons/24/photobucket.png",
    "public/images/service_icons/24/picasa.png",
    "public/images/service_icons/24/polyvore.png",
    "public/images/service_icons/24/pownce.png",
    "public/images/service_icons/24/reddit.png",
    "public/images/service_icons/24/simpy.png",
    "public/images/service_icons/24/smugmug.png",
    "public/images/service_icons/24/stumbleupon.png",
    "public/images/service_icons/24/tag.png",
    "public/images/service_icons/24/technorati.png",
    "public/images/service_icons/24/tumblr.png",
    "public/images/service_icons/24/twine.png",
    "public/images/service_icons/24/twitter.png",
    "public/images/service_icons/24/vimeo.png",
    "public/images/service_icons/24/webshots.png",
    "public/images/service_icons/24/wordpress.png",
    "public/images/service_icons/24/xanga.png",
    "public/images/service_icons/24/yahoo.png",
    "public/images/service_icons/24/yelp.png",
    "public/images/service_icons/24/youtube.png",
    "public/images/service_icons/24/zooomr.png",
    "public/images/service_icons/24/zotero.png",
    "public/images/service_icons/48/amazon.png",
    "public/images/service_icons/48/ask.png",
    "public/images/service_icons/48/bibsonomy.png",
    "public/images/service_icons/48/bing.png",
    "public/images/service_icons/48/blogger.png",
    "public/images/service_icons/48/bloglines.png",
    "public/images/service_icons/48/citeulike.png",
    "public/images/service_icons/48/clipmarks.png",
    "public/images/service_icons/48/connotea.png",
    "public/images/service_icons/48/dailymotion.png",
    "public/images/service_icons/48/delicious.png",
    "public/images/service_icons/48/digg.png",
    "public/images/service_icons/48/diigo.png",
    "public/images/service_icons/48/facebook.png",
    "public/images/service_icons/48/feed.png",
    "public/images/service_icons/48/fireeagle.png",
    "public/images/service_icons/48/flickr.png",
    "public/images/service_icons/48/fotolog.png",
    "public/images/service_icons/48/friendfeed.png",
    "public/images/service_icons/48/friendster.png",
    "public/images/service_icons/48/furl.png",
    "public/images/service_icons/48/goodreads.png",
    "public/images/service_icons/48/google.png",
    "public/images/service_icons/48/googleblog.png",
    "public/images/service_icons/48/googlenews.png",
    "public/images/service_icons/48/icerocket.png",
    "public/images/service_icons/48/identica.png",
    "public/images/service_icons/48/joost.png",
    "public/images/service_icons/48/lastfm.png",
    "public/images/service_icons/48/librarything.png",
    "public/images/service_icons/48/linkedin.png",
    "public/images/service_icons/48/livejournal.png",
    "public/images/service_icons/48/magnolia.png",
    "public/images/service_icons/48/mendeley.png",
    "public/images/service_icons/48/metacafe.png",
    "public/images/service_icons/48/mixx.png",
    "public/images/service_icons/48/myspace.png",
    "public/images/service_icons/48/netflix.png",
    "public/images/service_icons/48/netvibes.png",
    "public/images/service_icons/48/newsvine.png",
    "public/images/service_icons/48/oai.png",
    "public/images/service_icons/48/odeo.png",
    "public/images/service_icons/48/opml.png",
    "public/images/service_icons/48/pandora.png",
    "public/images/service_icons/48/photobucket.png",
    "public/images/service_icons/48/picasa.png",
    "public/images/service_icons/48/polyvore.png",
    "public/images/service_icons/48/pownce.png",
    "public/images/service_icons/48/reddit.png",
    "public/images/service_icons/48/simpy.png",
    "public/images/service_icons/48/smugmug.png",
    "public/images/service_icons/48/stumbleupon.png",
    "public/images/service_icons/48/tag.png",
    "public/images/service_icons/48/technorati.png",
    "public/images/service_icons/48/tumblr.png",
    "public/images/service_icons/48/twine.png",
    "public/images/service_icons/48/twitter.png",
    "public/images/service_icons/48/vimeo.png",
    "public/images/service_icons/48/webshots.png",
    "public/images/service_icons/48/wordpress.png",
    "public/images/service_icons/48/xanga.png",
    "public/images/service_icons/48/yahoo.png",
    "public/images/service_icons/48/yelp.png",
    "public/images/service_icons/48/youtube.png",
    "public/images/service_icons/48/zooomr.png",
    "public/images/service_icons/48/zotero.png",
    "public/images/service_icons/60/amazon.png",
    "public/images/service_icons/60/ask.png",
    "public/images/service_icons/60/bibsonomy.png",
    "public/images/service_icons/60/bing.png",
    "public/images/service_icons/60/blogger.png",
    "public/images/service_icons/60/bloglines.png",
    "public/images/service_icons/60/citeulike.png",
    "public/images/service_icons/60/clipmarks.png",
    "public/images/service_icons/60/connotea.png",
    "public/images/service_icons/60/dailymotion.png",
    "public/images/service_icons/60/delicious.png",
    "public/images/service_icons/60/digg.png",
    "public/images/service_icons/60/diigo.png",
    "public/images/service_icons/60/facebook.png",
    "public/images/service_icons/60/feed.png",
    "public/images/service_icons/60/fireeagle.png",
    "public/images/service_icons/60/flickr.png",
    "public/images/service_icons/60/fotolog.png",
    "public/images/service_icons/60/friendfeed.png",
    "public/images/service_icons/60/friendster.png",
    "public/images/service_icons/60/furl.png",
    "public/images/service_icons/60/goodreads.png",
    "public/images/service_icons/60/google.png",
    "public/images/service_icons/60/googleblog.png",
    "public/images/service_icons/60/googlenews.png",
    "public/images/service_icons/60/icerocket.png",
    "public/images/service_icons/60/identica.png",
    "public/images/service_icons/60/joost.png",
    "public/images/service_icons/60/lastfm.png",
    "public/images/service_icons/60/librarything.png",
    "public/images/service_icons/60/linkedin.png",
    "public/images/service_icons/60/livejournal.png",
    "public/images/service_icons/60/magnolia.png",
    "public/images/service_icons/60/mendeley.png",
    "public/images/service_icons/60/metacafe.png",
    "public/images/service_icons/60/mixx.png",
    "public/images/service_icons/60/myspace.png",
    "public/images/service_icons/60/netflix.png",
    "public/images/service_icons/60/netvibes.png",
    "public/images/service_icons/60/newsvine.png",
    "public/images/service_icons/60/oai.png",
    "public/images/service_icons/60/odeo.png",
    "public/images/service_icons/60/opml.png",
    "public/images/service_icons/60/pandora.png",
    "public/images/service_icons/60/photobucket.png",
    "public/images/service_icons/60/picasa.png",
    "public/images/service_icons/60/polyvore.png",
    "public/images/service_icons/60/pownce.png",
    "public/images/service_icons/60/reddit.png",
    "public/images/service_icons/60/simpy.png",
    "public/images/service_icons/60/smugmug.png",
    "public/images/service_icons/60/stumbleupon.png",
    "public/images/service_icons/60/tag.png",
    "public/images/service_icons/60/technorati.png",
    "public/images/service_icons/60/tumblr.png",
    "public/images/service_icons/60/twine.png",
    "public/images/service_icons/60/twitter.png",
    "public/images/service_icons/60/vimeo.png",
    "public/images/service_icons/60/webshots.png",
    "public/images/service_icons/60/wordpress.png",
    "public/images/service_icons/60/xanga.png",
    "public/images/service_icons/60/yahoo.png",
    "public/images/service_icons/60/yelp.png",
    "public/images/service_icons/60/youtube.png",
    "public/images/service_icons/60/zooomr.png",
    "public/images/service_icons/60/zotero.png",
    "public/images/service_icons/facebook_friend_links.jpg",
    "public/images/service_icons/facebook_my_links.jpg",
    "public/images/service_icons/source/Aquaticus_Social_Icon_template_by_jwloh.psd",
    "public/images/service_icons/source/Google.psd",
    "public/images/service_icons/source/Quake 9 Design.webloc",
    "public/images/service_icons/source/ReadMe.rtf",
    "public/images/service_icons/source/amazon.png",
    "public/images/service_icons/source/aquaticus.social.png",
    "public/images/service_icons/source/ask.png",
    "public/images/service_icons/source/ask.psd",
    "public/images/service_icons/source/bibsonomy.png",
    "public/images/service_icons/source/bibsonomy.psd",
    "public/images/service_icons/source/bing.png",
    "public/images/service_icons/source/bing.psd",
    "public/images/service_icons/source/blogger.png",
    "public/images/service_icons/source/bloglines.png",
    "public/images/service_icons/source/bloglines.psd",
    "public/images/service_icons/source/citeulike.png",
    "public/images/service_icons/source/clipmarks.png",
    "public/images/service_icons/source/connotea.png",
    "public/images/service_icons/source/connotea.psd",
    "public/images/service_icons/source/dailymotion.png",
    "public/images/service_icons/source/delicious.png",
    "public/images/service_icons/source/digg.png",
    "public/images/service_icons/source/diigo.png",
    "public/images/service_icons/source/facebook.png",
    "public/images/service_icons/source/feed.png",
    "public/images/service_icons/source/fireeagle.psd",
    "public/images/service_icons/source/flickr.png",
    "public/images/service_icons/source/fotolog.png",
    "public/images/service_icons/source/friendfeed.png",
    "public/images/service_icons/source/friendster.png",
    "public/images/service_icons/source/furl.png",
    "public/images/service_icons/source/goodreads.png",
    "public/images/service_icons/source/google.png",
    "public/images/service_icons/source/googleblog.png",
    "public/images/service_icons/source/googlenews.png",
    "public/images/service_icons/source/icerocket.png",
    "public/images/service_icons/source/icerocket.psd",
    "public/images/service_icons/source/identica.png",
    "public/images/service_icons/source/joost.png",
    "public/images/service_icons/source/lastfm.png",
    "public/images/service_icons/source/librarything.png",
    "public/images/service_icons/source/linkedin.png",
    "public/images/service_icons/source/livejournal.png",
    "public/images/service_icons/source/magnolia.png",
    "public/images/service_icons/source/mendeley.png",
    "public/images/service_icons/source/metacafe.png",
    "public/images/service_icons/source/metacafe.psd",
    "public/images/service_icons/source/mixx.png",
    "public/images/service_icons/source/myspace.png",
    "public/images/service_icons/source/netflix.png",
    "public/images/service_icons/source/netvibes.png",
    "public/images/service_icons/source/newsvine.png",
    "public/images/service_icons/source/oai.png",
    "public/images/service_icons/source/odeo.png",
    "public/images/service_icons/source/opml.png",
    "public/images/service_icons/source/pandora.png",
    "public/images/service_icons/source/photobucket.png",
    "public/images/service_icons/source/picasa.png",
    "public/images/service_icons/source/polyvore.png",
    "public/images/service_icons/source/posterous.psd",
    "public/images/service_icons/source/pownce.png",
    "public/images/service_icons/source/reddit.png",
    "public/images/service_icons/source/simpy.png",
    "public/images/service_icons/source/smugmug.png",
    "public/images/service_icons/source/stumbleupon.png",
    "public/images/service_icons/source/tag.png",
    "public/images/service_icons/source/technorati.png",
    "public/images/service_icons/source/template.png",
    "public/images/service_icons/source/tumblr.png",
    "public/images/service_icons/source/twine.png",
    "public/images/service_icons/source/twine.psd",
    "public/images/service_icons/source/twitter.png",
    "public/images/service_icons/source/vimeo.png",
    "public/images/service_icons/source/webshots.png",
    "public/images/service_icons/source/wordpress.png",
    "public/images/service_icons/source/xanga.png",
    "public/images/service_icons/source/yahoo.png",
    "public/images/service_icons/source/yelp.png",
    "public/images/service_icons/source/youtube.png",
    "public/images/service_icons/source/zooomr.png",
    "public/images/service_icons/source/zotero.png",
    "public/images/spinner.gif",
    "public/images/sprites.png",
    "public/javascripts/fancyzoom.min.js",
    "public/javascripts/jquery/colorpicker.js",
    "public/javascripts/jquery/fg.menu.js",
    "public/javascripts/jquery/jquery-ui-1.8.9.custom.min.js",
    "public/javascripts/jquery/jquery-ui.js",
    "public/javascripts/jquery/jquery.autocomplete.min.js",
    "public/javascripts/jquery/jquery.easing.js",
    "public/javascripts/jquery/jquery.fancybox.js",
    "public/javascripts/jquery/jquery.form.js",
    "public/javascripts/jquery/jquery.jgrowl.js",
    "public/javascripts/jquery/jquery.js",
    "public/javascripts/jquery/jquery.metadata.min.js",
    "public/javascripts/jquery/jquery.mousewheel.js",
    "public/javascripts/jquery/jquery.queryString.js",
    "public/javascripts/jquery/jquery.swapimage.js",
    "public/javascripts/jquery/jquery.swapimage.min.js",
    "public/javascripts/jquery/jquery.timers.js",
    "public/javascripts/jquery/jquery.tips.js",
    "public/javascripts/jquery/jrails.js",
    "public/javascripts/tree.js",
    "public/stylesheets/blueprint/ie.css",
    "public/stylesheets/blueprint/liquid_screen.css",
    "public/stylesheets/blueprint/plugins/buttons/icons/cross.png",
    "public/stylesheets/blueprint/plugins/buttons/icons/key.png",
    "public/stylesheets/blueprint/plugins/buttons/icons/tick.png",
    "public/stylesheets/blueprint/plugins/buttons/readme.txt",
    "public/stylesheets/blueprint/plugins/buttons/screen.css",
    "public/stylesheets/blueprint/plugins/fancy-type/readme.txt",
    "public/stylesheets/blueprint/plugins/fancy-type/screen.css",
    "public/stylesheets/blueprint/plugins/link-icons/icons/doc.png",
    "public/stylesheets/blueprint/plugins/link-icons/icons/email.png",
    "public/stylesheets/blueprint/plugins/link-icons/icons/external.png",
    "public/stylesheets/blueprint/plugins/link-icons/icons/feed.png",
    "public/stylesheets/blueprint/plugins/link-icons/icons/im.png",
    "public/stylesheets/blueprint/plugins/link-icons/icons/pdf.png",
    "public/stylesheets/blueprint/plugins/link-icons/icons/visited.png",
    "public/stylesheets/blueprint/plugins/link-icons/icons/xls.png",
    "public/stylesheets/blueprint/plugins/link-icons/readme.txt",
    "public/stylesheets/blueprint/plugins/link-icons/screen.css",
    "public/stylesheets/blueprint/plugins/liquid/liquid.css",
    "public/stylesheets/blueprint/plugins/liquid/src/liquid.css",
    "public/stylesheets/blueprint/plugins/rtl/readme.txt",
    "public/stylesheets/blueprint/plugins/rtl/screen.css",
    "public/stylesheets/blueprint/print.css",
    "public/stylesheets/blueprint/screen.css",
    "public/stylesheets/blueprint/sprite.css",
    "public/stylesheets/blueprint/src/forms.css",
    "public/stylesheets/blueprint/src/grid.css",
    "public/stylesheets/blueprint/src/grid.png",
    "public/stylesheets/blueprint/src/ie.css",
    "public/stylesheets/blueprint/src/print.css",
    "public/stylesheets/blueprint/src/reset.css",
    "public/stylesheets/blueprint/src/typography.css",
    "public/stylesheets/fgmenu/fg.menu.css",
    "public/stylesheets/jquery/jquery.autocomplete.css",
    "public/stylesheets/jquery/jquery.fancybox.css",
    "public/stylesheets/jquery/ui-lightness/images/ui-bg_diagonals-thick_18_b81900_40x40.png",
    "public/stylesheets/jquery/ui-lightness/images/ui-bg_diagonals-thick_20_666666_40x40.png",
    "public/stylesheets/jquery/ui-lightness/images/ui-bg_flat_10_000000_40x100.png",
    "public/stylesheets/jquery/ui-lightness/images/ui-bg_glass_100_f6f6f6_1x400.png",
    "public/stylesheets/jquery/ui-lightness/images/ui-bg_glass_100_fdf5ce_1x400.png",
    "public/stylesheets/jquery/ui-lightness/images/ui-bg_glass_65_ffffff_1x400.png",
    "public/stylesheets/jquery/ui-lightness/images/ui-bg_gloss-wave_35_f6a828_500x100.png",
    "public/stylesheets/jquery/ui-lightness/images/ui-bg_highlight-soft_100_eeeeee_1x100.png",
    "public/stylesheets/jquery/ui-lightness/images/ui-bg_highlight-soft_75_ffe45c_1x100.png",
    "public/stylesheets/jquery/ui-lightness/images/ui-icons_222222_256x240.png",
    "public/stylesheets/jquery/ui-lightness/images/ui-icons_228ef1_256x240.png",
    "public/stylesheets/jquery/ui-lightness/images/ui-icons_ef8c08_256x240.png",
    "public/stylesheets/jquery/ui-lightness/images/ui-icons_ffd27a_256x240.png",
    "public/stylesheets/jquery/ui-lightness/images/ui-icons_ffffff_256x240.png",
    "public/stylesheets/jquery/ui-lightness/jquery-ui-1.8.9.custom.css"
  ]
  s.homepage = %q{http://github.com/tatemae/muck-resources}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.0}
  s.summary = %q{This is a container gem for resources like images, javascript and stylesheets for the muck framework.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

