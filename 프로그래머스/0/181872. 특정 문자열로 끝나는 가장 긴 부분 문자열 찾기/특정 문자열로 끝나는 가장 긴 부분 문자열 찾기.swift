import Foundation

func solution(_ myString:String, _ pat:String) -> String {
    let strArray = Array(myString)
    let patCount = pat.count
    
    for i in stride(from: strArray.count, through: patCount, by: -1) {
        let endIndex = strArray.index(strArray.startIndex, offsetBy: i)
        let substring = String(strArray[..<endIndex])
        if substring.hasSuffix(pat) {
            return substring
        }
    }

    return ""
}