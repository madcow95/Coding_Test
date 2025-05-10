import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = 0

    for i in 0..<nums.count {
        for j in (i + 1)..<nums.count {
            for k in (j + 1)..<nums.count {
                if isPrime(n: nums[i] + nums[j] + nums[k]) {
                    answer += 1
                }
            }
        }
    }

    return answer
}

func isPrime(n: Int) -> Bool {
    if n < 2 { return false }
    
    for i in 2...Int(sqrt(Double(n))) {
        if n % i == 0 {
            return false
        }
    }
    
    return true
}