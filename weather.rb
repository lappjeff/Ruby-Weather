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

end