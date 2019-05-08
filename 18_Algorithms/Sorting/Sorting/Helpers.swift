import Foundation

func randomArray(_ size: UInt32,
                 _ max: UInt32 = 20) -> [Int] {
    var result = [Int]()
    for _ in 1...size {
        let num = Int(arc4random_uniform(max))
        result.append(num)
    }
    return result
}
