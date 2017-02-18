import Foundation
// 插入排序
typealias Criteria<T> = (T, T) -> Bool

func insertionSortOf<T: Comparable>(_ coll: [T], byCritera: Criteria<T> = { $0 < $1}) -> [T] {
    guard coll.count > 1 else { return coll }
    var result = coll
    for x in 1 ..< coll.count {
        var currentIndex = x
        
        while currentIndex > 0 && byCritera(result[currentIndex],result[currentIndex - 1]) {
            swap(&result[currentIndex], &result[currentIndex - 1])
            currentIndex -= 1
        }
    }
    return result
}

insertionSortOf([5,3,2,3,5,4],byCritera: >)
// 改进版
func insertionImprovedSortOf<T: Comparable>(_ coll: [T], byCritera: Criteria<T> = {$0 < $1}) -> [T] {
    guard coll.count > 1 else { return coll }
    var result = coll
    for x in 1 ..< coll.count {
        var currentIndex = x
        let currentValue = result[currentIndex]
        
        while currentIndex > 0 && byCritera(currentValue,result[currentIndex - 1]) {
            result[currentIndex] = result[currentIndex - 1]
            currentIndex -= 1
        }
        result[currentIndex] = currentValue
    }
    return result
}

insertionImprovedSortOf([5,3,2,3,5,4],byCritera: <)