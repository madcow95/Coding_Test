import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var answer: [Int] = []
    var copiedArr = arr
    for (index, num) in query.enumerated() {
        if index % 2 == 0 {
            copiedArr = Array(copiedArr[0...num])
        } else {
            copiedArr = Array(copiedArr[num...copiedArr.count - 1])
        }
    }
    
    return copiedArr
}