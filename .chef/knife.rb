current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "sajnikanth"
client_key               "#{current_dir}/sajnikanth.pem"
validation_client_name   "eyetys-validator"
validation_key           "#{current_dir}/eyetys-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/eyetys"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
