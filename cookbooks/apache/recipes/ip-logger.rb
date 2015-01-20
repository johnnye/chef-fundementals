


search("node", "platform:centos").each do |server|
	log "The CentOS servers in your org have the following IP #{server["fqdn"]}/#{server["ipaddress"]}"
end
