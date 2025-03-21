import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var answer: [Int] = []
    
    var tempArr: [Int] = []
    for (i, s) in score.enumerated() {
        if i < k {
            tempArr.append(s)
        } else {
            if tempArr.count >= k && tempArr.min()! < s {
                tempArr.removeLast()
                tempArr.append(s)
            }
        }
        tempArr.sort(by: >)
        answer.append(tempArr.min()!)
    }
    
    return answer
}