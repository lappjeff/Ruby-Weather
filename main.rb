require 'net/http'
require 'launchy'

require_relative './geodata'
require_relative './weather'
require_relative './chart'

# fetch public ip
public_ip = Net::HTTP.get URI "https://api.ipify.org"

geodata = GeoData.new(public_ip)

weather = Weather.new(geodata.printLatitude, geodata.printLongitude)

weather.reportWeather
