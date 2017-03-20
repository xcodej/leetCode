// https://leetcode.com/problems/remove-duplicates-from-sorted-array/
import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count <= 1 {
        return nums.count
    }
    var count = 1
    for i in 1..<nums.count {
        if nums[i] == nums[i - 1] {
            continue
        } else {
            nums[count] = nums[i]
            count += 1
        }
    }
    return count
}

var a = [1,1,2,2,2,3,3,4,5,7,7,8]
removeDuplicates(&a)
a
