import Foundation

func solution(_ intStrs:[String], _ k:Int, _ s:Int, _ l:Int) -> [Int] {
    return intStrs.compactMap { Int($0.dropFirst(s).prefix(l)) }.filter { $0 > k }
}