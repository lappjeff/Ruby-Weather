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

    def reportWeather()

        i = 0

        string_break = "-----------------------|"

        puts string_break

        while i < @dates.length
            date = @dates[i]
            top_temp = @max_temps[i]
            min_temp = @min_temps[i]

            puts " Date: #{date}      |"
            puts " Top temperature: #{top_temp} |"
            puts " Min temperature: #{min_temp} |"
            puts "#{string_break}\n"

            i += 1
        end 
    end

end