import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var scores = [0, 0, 0]
    
    let firstPattern = [1, 2, 3, 4, 5]
    let secondPattern = [2, 1, 2, 3, 2, 4, 2, 5]
    let thirdPattern = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    for (i, answer) in answers.enumerated() {
        if answer == firstPattern[i % firstPattern.count] {
            scores[0] += 1
        }
        
        if answer == secondPattern[i % secondPattern.count] {
            scores[1] += 1
        }
        
        if answer == thirdPattern[i % thirdPattern.count] {
            scores[2] += 1
        }
    }
    
    let max = scores.max()!
    var result: [Int] = []
    
    for (i, score) in scores.enumerated() {
        if score == max {
            result.append(i + 1)
        }
    }
    
    return result
}