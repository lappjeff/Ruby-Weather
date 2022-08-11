

class Chart 
    @@chart_uri = "https://image-charts.com/chart?chs=999x400"
    @@uri_delimiter = "|"
end 

class BarChart < Chart 

    def initialize(barType, legend)
        @@chart_uri = @@chart_uri + "&cht=#{barType}&chma=0,0,20,10&chxt=x,y&chdl=#{legend}"
    end

    def generateSerie(points)
        points.join(",")
    end

    def generateLabels(labels)
        i = 0

        axis_labels = labels.join(@@uri_delimiter)
        
        axis_labels
    end

    def generateLink(series, dates)
        seriesQuery = series.join(@@uri_delimiter)
        datesQuery = dates.join(@@uri_delimiter)
        fillQuery = generateFillText(series)

        link = "#{@@chart_uri}&chd=a:#{seriesQuery}&chxl=0:#{@@uri_delimiter}#{datesQuery}&chm=#{fillQuery}"
    end

    def generateFillText(series)
        fillString = ""
        fillColor = "ffffff"
        fillFontSize = 15

        i = 0
        
        while i < series.length
        
            fillString += "N,#{fillColor},#{i},,#{fillFontSize}#{@@uri_delimiter}"

            i += 1
        end

        # remove trailing pipe character 
        fillString = fillString.chop
    end
end

