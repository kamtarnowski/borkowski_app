require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = 'http://borkowski-wylewki-tynki.pl'
SitemapGenerator::Sitemap.create do
  add '/', :changefreq => 'daily', :priority => 0.9
  add '/business_methods/1-tynki-agregatem', :changefreq => 'weekly'
  add '/business_methods/2-wylewki-mixokretem', :changefreq => 'weekly'
  add '/business_methods/3-posadzki-przemyslowe', :changefreq => 'weekly'
  add '/galleries/1-galeria', :changefreq => 'weekly'
  add '/contact', :changefreq => 'weekly'
  add '/users/sign_up', :changefreq => 'weekly'
  add '/users/sign_in', :changefreq => 'weekly'
  add '/users/password/new', :changefreq => 'weekly'

end
SitemapGenerator::Sitemap.ping_search_engines