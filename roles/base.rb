name "base"
description "Base Config"
run_list "recipe[motd]", "recipe[users]"
