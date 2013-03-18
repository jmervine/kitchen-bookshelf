root_directory = "/tmp/chef-solo"

file_cache_path root_directory
cookbook_path   [ File.expand_path("cookbooks", root_directory), File.expand_path("site-cookbooks", root_directory) ]


# uncomment for more logging
log_level :info
log_location STDOUT
