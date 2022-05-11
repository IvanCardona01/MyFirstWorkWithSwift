class ConverterOfUnixMillisecondsInDateTime{
    let staticAgeFromTheUnixTimeInit: Int = 1970

    public func convertUnixTimeInDateTime(unixTimeInMillisseconds: Int, timeZone: TimeZoneType) -> String{
        //var diferencyBetwenTimeZoneGeneralAndTimeZoneInput = timeZone
        var yearsInUnixTime: Int = 0
        var monthsInUnixTime: Int = 0
        var daysInUnixTime: Int = 0
        var hoursInUnixTime: Int = 0
        var minutsInUnixTime: Int = 0
        var secondsInUnixTime: Int = 0
        var timeInTimeZone: Int = 0
        let dateConverted: String = "\(daysInUnixTime)/\(monthsInUnixTime)/\(yearsInUnixTime) the time in \(timeZone) is: \(timeInTimeZone)"
        return dateConverted
    }

}