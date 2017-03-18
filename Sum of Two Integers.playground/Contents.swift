// https://leetcode.com/problems/sum-of-two-integers
import Foundation
func getSum(_ a: Int, _ b: Int) -> Int {
    var tmpA = a
    var tmpB = b
    var sum: Int
    repeat {
        sum = tmpA ^ tmpB
        tmpB = (tmpA & tmpB) << 1
        tmpA = sum
    } while tmpB != 0
    return sum
}

getSum(100, 3)