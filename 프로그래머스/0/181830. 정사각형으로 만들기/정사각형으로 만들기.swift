import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    
    let rowCount = arr.count
    let colCount = arr[0].count
    let maxSize = max(rowCount, colCount)
    
    for row in arr {
        var newRow = row
        if colCount < maxSize {
            newRow += Array(repeating: 0, count: maxSize - colCount)
        }
        result.append(newRow)
    }
    
    if rowCount < maxSize {
        for _ in 0..<(maxSize - rowCount) {
            result.append(Array(repeating: 0, count: maxSize))
        }
    }
    
    return result
}