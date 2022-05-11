import Foundation
import workUnixMilliseconds

print("Ingrese el numero en milliseconds: ")
var timeInMillisenconds = readLine()!
print("OK")

var converterOfUnixMillisecondsInDateTime: ConverterOfUnixMillisecondsInDateTime = ConverterOfUnixMillisecondsInDateTime()
print("\(converterOfUnixMillisecondsInDateTime.staticAgeFromTheUnixTimeInit)")