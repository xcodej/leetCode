//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func removeDot(str: String) -> String {
    var str1 = str.characters.filter { (char) -> Bool in
        char != ","}
    return str1
}

removeDot(str: str)

