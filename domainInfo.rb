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
	allIpAddresses = `host #{domain}  | awk '/has address/ { print $4 }'`
	if $?.to_i == 0 
		puts "Information about #{domain}"
		allIpAddresses.each_line  do |line|
			line = line.strip
			geoInformation = open("http://ip.taobao.com/service/getIpInfo.php?ip=#{line}");
			json = JSON.parse geoInformation
			outputResult(json)
		end
	else
		puts 'Network Error'	
	end

end

checkDomainInfo(ARGV[0])