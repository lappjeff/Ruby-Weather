require 'net/http'
require 'json'

class Weather 
    @dates = nil 
    @max_temps = nil 
    @min_temps = nil 

    def initialize(latitude, longitude, days = 7)
    end

    def printDates 
        @dates
    end 

    def printMinTemps
        @min_temps
    end 

    def printMaxTemps
        @max_temps
    end 
end