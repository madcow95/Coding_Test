import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var bottleCount = n
    var cokeCount = 0

    while bottleCount >= a {
        let remainCoke = (bottleCount / a) * b
        cokeCount += remainCoke
        bottleCount = (bottleCount % a) + remainCoke
    }

    return cokeCount
}