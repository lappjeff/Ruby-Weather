require 'net/http'
require 'json'

class Weather 
    @dates = nil 
    @max_temps = nil 
    @min_temps = nil 

    def initialize(latitude, longitude, days = 7)
        fetchWeather(latitude, longitude)
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

    def fetchWeather(latitude, longitude, days = 7) 
        weather_uri = URI("https://api.open-meteo.com/v1/forecast?latitude=#{latitude}&longitude=#{longitude}&daily=temperature_2m_max,temperature_2m_min&temperature_unit=fahrenheit&windspeed_unit=mph&timezone=auto&past_days=6")

        weather_res = Net::HTTP.get(weather_uri)

        weather = JSON.parse(weather_res)['daily']

        @dates = weather["time"][0, days]
        @max_temps = weather['temperature_2m_max'][0, days]
        @min_temps = weather["temperature_2m_min"][0, days]
    end

    private :fetchWeather

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