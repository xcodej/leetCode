/**
 * https://leetcode.com/problems/number-complement
 */
import Foundation
func findComplement(_ num: Int) -> Int {
    let binaryNum = String(num, radix: 2)
    var str = ""
    binaryNum.characters.forEach { (char) in
        if char == "1" {
            str.append("0")
        } else {
            str.append("1")
        }
    }
    return Int(str, radix: 10)!
}

findComplement(5)

import UIKit
let btn = UIButton(type: .contactAdd)
btn.frame = CGRect(x: 10, y: 10, width: 20, height: 20)
