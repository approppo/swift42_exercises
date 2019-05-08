// Adapted from
// https://github.com/raywenderlich/swift-algorithm-club/tree/master/Slow%20Sort
func slowSort(_ array: inout [Int], _ io: Int? = nil, _ jo: Int? = nil) {
    guard array.count > 1 else { return }
    var i = 0
    if io != nil {
        i = io!
    }
    var j = array.count - 1
    if jo != nil {
        j = jo!
    }
    if i >= j {
        return
    }
    let m = (i + j) / 2
    slowSort(&array, i, m)
    slowSort(&array, m + 1, j)
    if array[j] < array[m] {
        let temp = array[j]
        array[j] = array[m]
        array[m] = temp
    }
    slowSort(&array, i, j-1)
}
