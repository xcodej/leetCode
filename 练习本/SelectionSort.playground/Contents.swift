import Foundation

typealias Critera<T> = (T, T) -> Bool

// 选择排序

func selectionSortOf<T: Comparable> (_ coll: [T], byCritera: Critera<T> = {$0 > $1}) -> [T] {
    guard coll.count > 1 else { return coll }
    var result = coll
    for index in 0 ..< result.count {
        var targetIndex = index
        var currentIndex = index
        while currentIndex < result.count {
            if byCritera(result[targetIndex], result[currentIndex]) {
                targetIndex = currentIndex
            }
            
            currentIndex += 1
        }
        if targetIndex != index {
            swap(&result[index], &result[targetIndex])
        }
    }
    return result
}

selectionSortOf([5,4,3,2,4,5,6,7],byCritera: <)