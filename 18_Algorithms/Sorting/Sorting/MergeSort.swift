// Adapted from
// https://github.com/raywenderlich/swift-algorithm-club/tree/master/Merge%20Sort
func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    let middleIndex = array.count / 2
    let leftArray = mergeSort(Array(array[0..<middleIndex]))
    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
    return merge(leftPile: leftArray, rightPile: rightArray)
}

func merge(leftPile: [Int], rightPile: [Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0
    
    var orderedPile = [Int]()
    
    while leftIndex < leftPile.count && rightIndex < rightPile.count {
        if leftPile[leftIndex] < rightPile[rightIndex] {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
        } else if leftPile[leftIndex] > rightPile[rightIndex] {
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        } else {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        }
    }
    
    while leftIndex < leftPile.count {
        orderedPile.append(leftPile[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < rightPile.count {
        orderedPile.append(rightPile[rightIndex])
        rightIndex += 1
    }
    
    return orderedPile
}
