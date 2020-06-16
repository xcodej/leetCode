import Foundation
import UIKit
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init (_ val: Int) {
        self.val = val
        self.next = nil
    }
}




/// 03. 数组中重复的数字
/// 找出数组中重复的数字。
/// 在一个长度为 n 的数组 nums 里的所有数字都在 0～n-1 的范围内。数组中某些数字是重复的，但不知道有几个数字重复了，也不知道每个数字重复了几次。请找出数组中任意一个重复的数字。
/// 来源：力扣（LeetCode）
/// 链接：https://leetcode-cn.com/problems/shu-zu-zhong-zhong-fu-de-shu-zi-lcof
func findRepeatNumber(_ nums: [Int]) -> Int {
    var aMap = [Int : Bool]()
    var result = 0
    for i in 0 ..< nums.count {
        if aMap[nums[i]] == nil {
            aMap[nums[i]] = true
        } else {
            result = nums[i]
            break
        }
    }
    return result
}
//findRepeatNumber([2, 3, 1, 0, 2, 5, 3])


/// 04. 二维数组中的查找
/// 在一个 n * m 的二维数组中，每一行都按照从左到右递增的顺序排序，每一列都按照从上到下递增的顺序排序。请完成一个函数，输入这样的一个二维数组和一个整数，判断数组中是否含有该整数。
/// 来源：力扣（LeetCode）
/// 链接：https://leetcode-cn.com/problems/er-wei-shu-zu-zhong-de-cha-zhao-lcof
func findNumberIn2DArray(_ matrix: [[Int]], _ target: Int) -> Bool {
    if matrix.count == 0 || matrix[0].count == 0 {
        return false
    }
    var result = false
    var y = 0
    var x = matrix[0].count - 1
    while y <= matrix.count - 1 && x >= 0 {
        if target == matrix[y][x] {
            result = true
            break
        } else if target > matrix[y][x] {
            y += 1
        } else {
            x -= 1
        }
    }
    return result
}

//findNumberIn2DArray([[-5]], -2)

//findNumberIn2DArray([
//  [1,   4,  7, 11, 15],
//  [2,   5,  8, 12, 19],
//  [3,   6,  9, 16, 22],
//  [10, 13, 14, 17, 24],
//  [18, 21, 23, 26, 30]
//], 20)



/// 05. 替换空格
/// 请实现一个函数，把字符串 s 中的每个空格替换成"%20"。
func replaceSpace(_ s: String) -> String {
//    return s.replacingOccurrences(of: " ", with: "%20")
    var result = ""
    s.forEach {
        if $0 == " " {
            result.append("%20")
        } else {
            result.append($0)
        }
    }
    return result
}

//replaceSpace("We are happy.")


var data = [1, 3, 4]
data.endIndex
data.startIndex

public class Stack<T> {
    var data: [T]
    public func push(_ val: T) {
        data.append(val)
    }
    public func pop() -> T {
        return data.remove(at: data.endIndex - 1)
    }
    public func peek() -> T {
        return data.last!
    }
    public func isEmpty() -> Bool {
        return data.count == 0
    }
    public init() {
        self.data = [T]()
    }
    
}

func reversePrint(_ head: ListNode?) -> [Int] {
    var mHead = head
    let aStack = Stack<Int>()
    var result = [Int]()
    while let tHead = mHead {
        aStack.push(tHead.val)
        mHead = tHead.next
    }
    while !aStack.isEmpty() {
        result.append(aStack.pop())
    }
    return result
}

//var headNode = ListNode(1)
//headNode.next = ListNode(3)
//headNode.next?.next = ListNode(2)
//
//reversePrint(headNode)


public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}
//var po: [Int]
//var dic = [Int: Int]()
//func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
//    po = preorder
//
//    for i in 0 ..< inorder.count {
//        dic[inorder[i]] = i
//    }
//    return recur(0, 0, inorder.count - 1)
//}

//func recur(_ pre_root: Int, _ in_left: Int, _ in_right: Int) -> TreeNode? {
//    if in_left > in_right {
//        return nil
//    }
//    let root = TreeNode(
//}


func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {
    let mstack = Stack<Int>()
    var pi = 0
    pushed.forEach { (num) in
        mstack.push(num)
        while !mstack.isEmpty(), mstack.peek() == popped[pi] {
            mstack.pop()
            pi = pi + 1
        }
    }
    return mstack.isEmpty()
}

public class Queue<T> {
    var data: [T]
    public func appendTail(_ val: T) {
        data.append(val)
    }
    public func popHead() -> T {
        return data.remove(at: data.startIndex)
    }
    public func isEmpty() -> Bool {
        return data.count == 0
    }
    public func peekHead() -> T {
        return data.first!
    }
    public func peekTail() -> T {
        return data.last!
    }
    public func size() -> Int {
        return data.count
    }
    public init() {
        self.data = [T]()
    }
}

//func levelOrder(_ root: TreeNode?) -> [Int] {
//    if root == nil {
//        return []
//    }
//    var result = [Int]()
//    let queue = Queue<TreeNode>()
//    queue.appendTail(root!)
//    while !queue.isEmpty() {
//        let node = queue.popHead()
//        result.append(node.val)
//        if let left = node.left {
//            queue.appendTail(left)
//        }
//        if let right = node.right {
//            queue.appendTail(right)
//        }
//    }
//    return result
//}

func levelOrder(_ root: TreeNode?) -> [[Int]] {
    if root == nil {
        return []
    }
    var result = [[Int]]()
    let queue = Queue<TreeNode>()
    queue.appendTail(root!)
    while !queue.isEmpty() {
        var tmp = [Int]()
        for _ in 0 ..< queue.size() {
            let node = queue.popHead()
            tmp.append(node.val)
            if let left = node.left {
                queue.appendTail(left)
            }
            if let right = node.right {
                queue.appendTail(right)
            }
        }
        if ((result.count + 1) % 2) == 0 {
            result.append(tmp.reversed())
        } else {
            result.append(tmp)
        }
    }
    return result
}

func isValidBST(_ root: TreeNode?) -> Bool {
    let mstack = Stack<TreeNode>()
    var curValue = 0
    var isFirst = true
    var cur = root
    while cur != nil, !mstack.isEmpty() {
        if cur != nil {
            mstack.push(cur!)
            cur = cur?.left
        } else {
            cur = mstack.pop()
            if isFirst {
                curValue = cur!.val
                isFirst = false
            } else if curValue > cur!.val {
                return false
            } else {
                curValue = cur!.val
            }
            cur = cur?.right
        }
    }
    return true
}


func verifyPostorder(_ postorder: [Int]) -> Bool {
    return recur(postorder, 0, postorder.count - 1)
}

func recur(_ postorder: [Int], _ i: Int, _ j: Int) -> Bool {
    if i >= j {
        return true
    }
    var p = i
    while postorder[p] < postorder[j] {
        p = p  + 1
    }
    let m = p
    while postorder[p] > postorder[j] {
        p = p + 1
    }
    return (p == j) && recur(postorder, i, m - 1) && recur(postorder, m, j - 1)
}


class Solution {
    var res = [[Int]]()
    var path = [Int]()
    func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
        recur(root, sum)
        return res
    }
    func recur(_ root: TreeNode?, _ target: Int) {
        if root == nil {
            return;
        }
        path.append(root!.val)
        var tar = target
        tar = tar - root!.val
        if tar == 0, root?.left == nil, root?.right == nil {
            res.append(path)
        }
        recur(root?.left, tar)
        recur(root?.right, tar)
        path.removeLast()
    }
}

func majorityElement(_ nums: [Int]) -> Int {
    var result = 0
    var vote = 0
    for num in nums {
        if vote == 0 {
            result = num
        }
        if num == result {
            vote = vote + 1
        } else {
            vote = vote - 1
        }
    }
    return result
}

func partition(_ arr: inout [Int], _ left: Int, _ right: Int) -> Int {
    
    var i = left
    var j = right
    let key = arr[i]
    while i < j {
        while i < j, arr[i] <= key {
            i = i + 1
        }
        arr[j] = arr[i]
        while i < j, arr[j] >= key {
            j = j - 1
        }
        arr[i] = arr[j]
    }
    arr[i] = key
    return i
}

func getLeastNumbers(_ arr: [Int], _ k: Int) -> [Int] {
    var arr = arr
    var left = 0
    var right = arr.count - 1
    while true {
        let index = partition(&arr, left, right)
        if k == index {
            return Array(arr[0 ..< (k - 1)])
        } else if k > index {
            left = left + 1
        } else {
            right = right - 1
        }
    }
}

func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    var ma = headA
    var mb = headB
    
    while ma?.val != mb?.val {
        if ma == nil {
            ma = headB
        } else {
            ma = ma?.next
        }
        if mb == nil {
            mb = headA
        } else {
            mb = mb?.next
        }
    }
    return ma
}


func search(_ nums: [Int], _ target: Int) -> Int {
    return helper(nums, target) - helper(nums, target - 1)
}

func helper(_ nums: [Int], _ tar: Int) -> Int {
    var i = 0
    var j = nums.count - 1
    while i <= j {
        let m = (i + j) / 2
        if nums[m] > j {
            j = m - 1
        } else {
            i = m + 1
        }
    }
    return i
}

func maxDepth(_ root: TreeNode?) -> Int {
    if root == nil {
        return 0
    }
    return max(maxDepth(root?.left) + 1, maxDepth(root?.right) + 1)
}

func findContinuousSequence(_ target: Int) -> [[Int]] {
    var left = 0
    var right = 0
    var sum = 0
    var res = [[Int]]()
    while left <= target / 2 {
        if sum > target {
            sum -= left
            left = left + 1
        } else if sum < target {
            sum += right
            right = right + 1
        } else {
            res.append(Array())
        }
    }
    return res
}

func threeSum(_ nums: [Int],_ target: Int = 0) -> [[Int]] {
    var result = [[Int]]()
    let nums = nums.sorted()
    for i in 0 ..< nums.count - 2 {
        if nums[i] > target {
            break
        }
        if i > 0, nums[i] == nums[i - 1] {
            continue
        }
        var i1 = i + 1
        var i2 = nums.count - 1
        while i1 < i2 {
            let sum = nums[i] + nums[i1] + nums[i2]
            if sum > target {
                i2 = i2 - 1
                while i1 < i2, nums[i2] == nums[i2 + 1] {
                    i2 = i2 - 1
                }
            } else if sum < target {
                i1 = i1 + 1
                while i1 < i2, nums[i1] == nums[i1 - 1] {
                    i1 = i1 + 1
                }
            } else {
                result.append([nums[i], nums[i1], nums[i2]])
                i2 = i2 - 1
                while i1 < i2, nums[i2] == nums[i2 + 1] {
                    i2 = i2 - 1
                }
                i1 = i1 + 1
                while i1 < i2, nums[i1] == nums[i1 - 1] {
                    i1 = i1 + 1
                }
            }
        }
    }
    return result
}

threeSum([-1, 0, 1, 2, -1, -4])
