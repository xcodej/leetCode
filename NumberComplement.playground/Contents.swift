/**
 * https://leetcode.com/problems/number-complement
 */
import Foundation
func findComplement(_ num: Int) -> Int {
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

