// https://leetcode.com/problems/maximum-depth-of-binary-tree/
import Foundation


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

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let treeRoot = root else { return 0 }
        var left = 1;
        var right = 1;
        left += maxDepth(treeRoot.left)
        right += maxDepth(treeRoot.right)
        return left > right ? left : right
    }
}