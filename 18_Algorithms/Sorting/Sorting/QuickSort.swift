func quickSort(_ array: inout [Int],
               _ po: Int? = nil,
               _ ro: Int? = nil) {
    guard array.count > 1 else { return }
    var p = 0
    if po != nil {
        p = po!
    }
    var r = array.count - 1
    if ro != nil {
        r = ro!
    }
    if p < r {
        let q = partition(&array, p, r)
        quickSort(&array, p, q - 1)
        quickSort(&array, q + 1, r)
    }
}

func partition(_ array: inout [Int],
               _ p: Int,
               _ r: Int) -> Int {
    let x = array[r]
    var i = p - 1
    for j in p...(r - 1) {
        if array[j] <= x {
            i = i + 1
            let temp = array[i]
            array[i] = array[j]
            array[j] = temp
        }
    }
    let temp = array[i + 1]
    array[i + 1] = array[r]
    array[r] = temp
    return i + 1
}
