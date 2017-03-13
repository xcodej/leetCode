// https://leetcode.com/problems/reverse-string/
import Foundation
func reverseString(_ s: String) -> String {
    var result = ""
    s.characters.reversed().forEach({
        result.append($0)
    })
    return result
}

reverseString("hello")
