# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "john_nye"
client_key               "#{current_dir}/john_nye.pem"
validation_client_name   "johnscft-validator"
validation_key           "#{current_dir}/johnscft-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/johnscft"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
