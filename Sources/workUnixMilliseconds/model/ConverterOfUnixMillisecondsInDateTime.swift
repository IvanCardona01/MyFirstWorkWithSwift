import Foundation

class ConverterOfUnixMillisecondsInDateTime{
    var date: Date?
    let millisecondsInOneSecond:Double = 1000
    let countries: Dictionary <String, Double> = [
                                    "Este de EEUU": -7, 
                                    "Mexico": 6, 
                                    "Colombia": -3,
                                    "España": 0,
                                    "China": 7
                                  ]

    public func calculateUnixTimeInDateTimeInTimeZone(unixTimeInMillisseconds: inout Double, diferenceTime: inout Double) -> Date{
        let unixTimeInSeconds = unixTimeInMillisseconds/millisecondsInOneSecond
        let secondsContentInOneHour: Double = 3600
        diferenceTime = diferenceTime*secondsContentInOneHour
        let epochTime = TimeInterval(unixTimeInSeconds + diferenceTime)
        date = Date(timeIntervalSince1970: epochTime)
        return date!;
    }

    public func printCountries() -> String{
        var listOfCountries: String = "\n"
        for (country) in countries {
            listOfCountries += "\(country.key)\n"
        }
        return listOfCountries
    }
}