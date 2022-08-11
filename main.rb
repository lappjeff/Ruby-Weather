require 'net/http'
require 'launchy'
require 'dotenv/load'

require_relative './geodata'
require_relative './weather'
require_relative './chart'

# fetch public ip
public_ip = Net::HTTP.get URI "https://api.ipify.org"

geodata = GeoData.new(public_ip)

day_range = ARGV[0] || 7
    
weather = Weather.new(geodata.printLatitude, geodata.printLongitude, day_range)

weather.reportWeather

print "\n View chart data[y,n]?"

view_chart_data = STDIN.gets.chomp

if(view_chart_data != 'y' and view_chart_data != 'yes') 
    return 
end 

barChart = BarChart.new('bvg', "Min|Max")

minSerie = weather.printMinTemps.join(',')
maxSerie = weather.printMaxTemps.join(',')

series = [minSerie, maxSerie]

chartLink = barChart.generateLink(series, weather.printDates)


Launchy.open(chartLink)