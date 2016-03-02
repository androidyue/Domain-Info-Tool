#!/usr/bin/env ruby
require 'net/http'
require 'uri'
require 'json'

def open(url)

  	Net::HTTP.get(URI.parse(url))
end




def outputResult(info)
	ip = info["data"]["ip"]
	location = info["data"]["country"] + " " + info["data"]["area"] + " " + info["data"]["region"] + info["data"]["city"]
	isp = info["data"]["isp"]
  	output = "IP:#{ip}; Location= #{location}; isp=#{isp}"
	puts output
end


def checkDomainInfo(domain)
	allIpAddresses = `ping -c 1 #{domain} | grep -oE '((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])'`
	if $?.to_i == 0 
		# puts "Information about #{domain}"
		line = allIpAddresses.lines.first
		line = line.strip
		geoInformation = open("http://ip.taobao.com/service/getIpInfo.php?ip=#{line}");
		json = JSON.parse geoInformation
		outputResult(json)
	else
		puts 'Network Error'	
	end

end

checkDomainInfo(ARGV[0])