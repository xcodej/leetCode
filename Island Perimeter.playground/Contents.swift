// https://leetcode.com/problems/island-perimeter/
import Foundation
func islandPerimeter(_ grid: [[Int]]) -> Int {
    var isLandNumber = 0
    guard let width = grid.first?.count else { return 0 }
    let height = grid.count
    grid.enumerated().forEach { (i,array) in
        array.enumerated().forEach{ (j,value) in
            if value == 1 {
                if j - 1 < 0 { isLandNumber += 1 }
                else if array[j - 1] == 0 { isLandNumber += 1 }
                if i - 1 < 0 { isLandNumber += 1 }
                else if grid[i - 1][j] == 0 { isLandNumber += 1 }
                if j + 1 == width { isLandNumber += 1 }
                else if array[j + 1] == 0 { isLandNumber += 1 }
                if i + 1 == height { isLandNumber += 1 }
                else if grid[i + 1][j] == 0 { isLandNumber += 1 }
            }
        }
    }
    return isLandNumber
}
islandPerimeter([[0, 0], [0, 1]])
islandPerimeter([[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]])