import Foundation

public extension Int {
    
    var roman: String? {
        if self<1 {
            return nil
        }
        var tempRoman = ""
        for _ in 1...self {
            tempRoman.append("I")
        }
        tempRoman = tempRoman.replacingOccurrences(of: "IIIII", with: "V")
        tempRoman = tempRoman.replacingOccurrences(of: "VV", with: "X")
        tempRoman = tempRoman.replacingOccurrences(of: "XXXXX", with: "L")
        tempRoman = tempRoman.replacingOccurrences(of: "LL", with: "C")
        tempRoman = tempRoman.replacingOccurrences(of: "CCCCC", with: "D")
        tempRoman = tempRoman.replacingOccurrences(of: "DD", with: "M")
        tempRoman = tempRoman.replacingOccurrences(of: "DCCCC", with: "CM")
        tempRoman = tempRoman.replacingOccurrences(of: "CCCC", with: "CD")
        tempRoman = tempRoman.replacingOccurrences(of: "LXXXX", with: "XC")
        tempRoman = tempRoman.replacingOccurrences(of: "XXXX", with: "XL")
        tempRoman = tempRoman.replacingOccurrences(of: "VIIII", with: "IX")
        tempRoman = tempRoman.replacingOccurrences(of: "IIII", with: "IV")
        
        return tempRoman
    }
}
