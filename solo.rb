local = File.dirname(__FILE__)
root  = "/tmp"

file_cache_path             File.expand_path("chef-tmp", root)
data_bag_path               File.expand_path("chef-data_bags", root)
encrypted_data_bag_secret   File.expand_path("data_bag_key", root)
cookbook_path               [ File.expand_path("chef-site-cookbooks", root),
                              File.expand_path("chef-cookbooks", root),
                              File.expand_path("cookbooks", local) ]
role_path                   File.expand_path("chef-roles", root)

# uncomment for more logging
log_level :info
log_location STDOUT
