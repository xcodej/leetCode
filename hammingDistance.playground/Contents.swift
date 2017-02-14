/**
 * https://leetcode.com/problems/hamming-distance/
 */
class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        return String(x ^ y, radix: 2).characters.filter { $0 == "1"}.count
    }
}