/**
 * https://leetcode.com/problems/number-complement
 */
import Foundation
func findComplement(_ num: Int) -> Int {
    // 1 0 1
    // 0 0 1
    var start = false
    var index = 31
    var tmpNum = num
    while index >= 0 {
        if (tmpNum & 1 << index) != 0 { start = true }
        if start {
            tmpNum ^= 1 << index
        }
        index -= 1
    }
    return tmpNum
}

findComplement(1)


