import UIKit
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    var slow = head
    var fast = head
    
}
