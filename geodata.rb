require 'net/http'
require 'json'
require 'dotenv/load'

class GeoData 
    @latitude = nil 
    @longitude = nil 


    def initialize(ip)
        @ip = ip
    end 
    def printLatitude 
        @latitude
    end  

    def printLongitude 
        @longitude
    end  

end