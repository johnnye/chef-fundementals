name "base"
description "Base Config"
run_list "recipe[chef-client::delete_validation]", "recipe[chef-client]",
  "recipe[ntp]",
  "recipe[motd]", "recipe[users]"
