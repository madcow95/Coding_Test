import Foundation

func solution(_ food:[Int]) -> String {
    var answer: String = ""

    for idx in 1..<food.count {
        let repeatCount = food[idx] / 2
        answer += String(repeating: "\(idx)", count: repeatCount)
    }
    
    let second = answer.reversed()
    answer += "0"
    answer += second
    
    return answer
}