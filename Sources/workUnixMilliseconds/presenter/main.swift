import Foundation

print("Ingrese el numero en milliseconds: ")
var timeInMilliseconds = Double(readLine()!)

var converterOfUnixMillisecondsInDateTime: ConverterOfUnixMillisecondsInDateTime = ConverterOfUnixMillisecondsInDateTime()
let avalibleCountries: Dictionary<String, Double> = converterOfUnixMillisecondsInDateTime.countries
var countrySelected: String
var valideCountry = false
repeat {
    print("Ingrese por favor un pais a calcular su zona horaria")
    let listOfCountriesAvalibles: String = converterOfUnixMillisecondsInDateTime.printCountries()
    print(listOfCountriesAvalibles)
    countrySelected = readLine()!;
    let avalibleCountriesContentSelectedCountry: Bool = listOfCountriesAvalibles.contains(_: countrySelected)
    if avalibleCountriesContentSelectedCountry{
        valideCountry = true
    }else{
        print("Por favor seleccione una opción valida")
    }
} while valideCountry == false

var diferenceTime = avalibleCountries[countrySelected]
print(converterOfUnixMillisecondsInDateTime.calculateUnixTimeInDateTimeInTimeZone(unixTimeInMillisseconds: &timeInMilliseconds!, diferenceTime: &diferenceTime!))
