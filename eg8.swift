func quickSort<T: Comparable>(_ array: [T]) -> [T] {
    if array.isEmpty {
        return array
    } else {
        let head = array[0]
        let body = array[1..<array.count]
        let left = quickSort(body.filter({$0 < head}))
        let right = quickSort(body.filter({$0 >= head}))
        return left + [head] + right
    }
}

var arr = [3, 1, 7, 9, 4, 2, 8]
print(arr[1..<arr.count])

print(quickSort([3, 1, 7, 9, 4, 2, 8]))
print(quickSort(["goat", "arm", "toe", "dog", "bat"]))
