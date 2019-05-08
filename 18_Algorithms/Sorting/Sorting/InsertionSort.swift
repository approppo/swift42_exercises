func insertionSort(_ array: inout [Int]) {
    guard array.count > 1 else { return }
    let len = array.count
    for j in 1...(len - 1) {
        let key = array[j]
        var i = j - 1
        while i > -1 && array[i] > key {
            array[i + 1] = array[i]
            i = i - 1
        }
        array[i + 1] = key
    }
}
