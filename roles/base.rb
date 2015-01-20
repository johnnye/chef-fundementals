name "basic"
description "Base Server Role"
run_list "recipe[motd]", "recipe[users]"


