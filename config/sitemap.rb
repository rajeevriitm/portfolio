# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://rajeev.website"

SitemapGenerator::Sitemap.create do
  add '/home', :changefreq => 'daily', :priority => 0.9
  add '/web', :changefreq => 'monthly', :priority => 1
  add '/contact', :changefreq => 'monthly', :priority => 0.9
  Blog.find_each do |blog|
    add blogs_path(blog)
  end

end
