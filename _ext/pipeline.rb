require 'bootstrap-sass'
require 'redirect_creator'

Awestruct::Extensions::Pipeline.new do
  helper Awestruct::Extensions::GoogleAnalytics
  # extension Awestruct::Extensions::Posts.new '/news'
  #extension Awestruct::Extensions::Indexifier.new
  #extension Awestruct::Extensions::Sitemap.new
  # Indexifier *must* come before Atomizer
  # extension Awestruct::Extensions::Atomizer.new :posts, '/feed.atom'
  extension Awestruct::Extensions::RedirectCreator.new
end
