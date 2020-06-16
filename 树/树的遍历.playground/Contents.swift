import UIKit

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

// https://leetcode-cn.com/problems/binary-tree-inorder-traversal/
func inorderTraversal(_ root: TreeNode?) -> [Int] {
    if root == nil {
        return []
    }
    var stack = [TreeNode?]()
    var result = [Int]()
    var cur = root
    while cur != nil || stack.count != 0 {
        while cur != nil {
            stack.append(cur)
            cur = cur?.left
        }
        let visitNode = stack.removeLast()
        cur = visitNode?.right
        result.append(visitNode!.val)
    }
    return result
}
