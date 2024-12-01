import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (input[0], input[1])
var visited = [Bool](repeating: false, count: n + 1)

func dfs(_ nums: [Int]) {
    if nums.count == m {
        nums.forEach { print($0, terminator: " ") }
        print()
        return
    }
    
    for i in 1...n {
        if !visited[i] {
            visited[i] = true
            dfs(nums: nums + [i])
            visited[i] = false
        }
    }
}

dfs([])