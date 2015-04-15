# Change this to your host. See the readme at https://github.com/lassebunk/dynamic_sitemaps
# for examples of multiple hosts and folders.
host "www.calgaryserviceplumbers.com"

sitemap :site do
  url root_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  #url services_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url schedule_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url specials_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url contact_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url blog_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  #url about_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url heating_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url emergencies_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url faucets_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url frozen_pipes_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url garbage_disposal_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url shower_bathtabs_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url sinks_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url sump_pumps_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url toilets_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url water_heater_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url water_pressure_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url drain_cleaning_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url drain_replacement_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url drain_repair_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url backwater_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url camera_inspection_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url hydro_jetting_url, last_mod: Time.now, change_freq: "daily", priority: 1.0
  url drain_sewer_clog_url, last_mod: Time.now, change_freq: "daily", priority: 1.0

end

# You can have multiple sitemaps like the above – just make sure their names are different.

# Automatically link to all pages using the routes specified
# using "resources :pages" in config/routes.rb. This will also
# automatically set <lastmod> to the date and time in page.updated_at:
#
#   sitemap_for Page.scoped

# For products with special sitemap name and priority, and link to comments:
#
#   sitemap_for Product.published, name: :published_products do |product|
#     url product, last_mod: product.updated_at, priority: (product.featured? ? 1.0 : 0.7)
#     url product_comments_url(product)
#   end

# If you want to generate multiple sitemaps in different folders (for example if you have
# more than one domain, you can specify a folder before the sitemap definitions:
# 
#   Site.all.each do |site|
#     folder "sitemaps/#{site.domain}"
#     host site.domain
#     
#     sitemap :site do
#       url root_url
#     end
# 
#     sitemap_for site.products.scoped
#   end

# Ping search engines after sitemap generation:
#
#   ping_with "http://#{host}/sitemap.xml"