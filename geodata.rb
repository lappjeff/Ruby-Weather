require 'net/http'
require 'json'

class GeoData 
    @latitude = nil 
    @longitude = nil 


    def initialize(ip)
        @ip = ip

        fetchCoordinates()
    end 

    def fetchCoordinates
        geocode_api_key = ENV["GEOCODE_API_KEY"]

        if not geocode_api_key
            raise 'No Geocode api key provided. Please follow instructions in readme for Geocode api key provision.'
        end 

        geodata_res = Net::HTTP.get(URI("https://geocode.xyz/#{@ip}?json=1&auth=#{geocode_api_key}"))

        geodata = JSON.parse(geodata_res)        
        
        @longitude = geodata['longt']
        @latitude = geodata['latt']

    end

    private :fetchCoordinates

    def printLatitude 
        @latitude
    end  

    def printLongitude 
        @longitude
    end  

end