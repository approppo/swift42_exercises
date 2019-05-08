func countingSort(_ array: inout [Int]) {
    guard array.count > 1 else { return }
    let k = array.max()! + 1
    var c = [Int](repeating: 0, count: k)
    let n = array.count
    var b = [Int](repeating: 0, count: n)
    for j in 0...(n - 1) {
        c[array[j]] = c[array[j]] + 1
    }
    for i in 1...(k - 1) {
        c[i] = c[i] + c[i - 1]
    }
    for j in (0...(n - 1)).reversed() {
        b[c[array[j]] - 1] = array[j]
        c[array[j]] = c[array[j]] - 1
    }
    for i in 0...(n - 1) {
        array[i] = b[i]
    }
}
