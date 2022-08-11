

class Chart 
    @@chart_uri = "https://image-charts.com/chart?chs=999x400"
    @@uri_delimiter = "|"
end 

class BarChart < Chart 

    def initialize(barType, legend)
        @@chart_uri = @@chart_uri + "&cht=#{barType}&chma=0,0,20,10&chxt=x,y&chdl=#{legend}"
    end

end

