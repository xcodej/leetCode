// https://leetcode.com/problems/next-greater-element-i/

import Foundation
func nextGreaterElement(_ findNums: [Int], _ nums: [Int]) -> [Int] {
    var result = [Int]()
    findNums.forEach { (value) in
        for i in nums.index(of: value)!..<nums.count {
            if nums[i] > value {
                result.append(nums[i])
                break
            }
            if i + 1 == nums.count {
                result.append(-1)
            }
        }
    }
    return result
}