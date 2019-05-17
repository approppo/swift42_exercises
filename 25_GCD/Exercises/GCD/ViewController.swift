import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    // tag::slow[]
    @IBAction func calculate(_ sender: Any) {
        resultLabel.text = "Calculating…"
        
        let queue = DispatchQueue(label: "training.akosma.queue")
        queue.async { [unowned self] in
            var result = 0
            let time = self.benchmark {
                result = self.euclid1(a: 1071876, b: 4658974779879876)
            }
            
            DispatchQueue.main.async { [unowned self] in
                self.resultLabel.text = "Result = \(result)"
                self.timeLabel.text = "Done in \(time) seconds"
            }
        }
    }
    // end::slow[]

    func euclid1(a: Int, b: Int) -> Int {
        var resultA = a
        var resultB = b
        if(resultA == 0) {
            return resultB
        }
        else {
            while resultB != 0 {
                if(resultA > resultB) {
                    resultA = resultA - resultB
                }
                else {
                    resultB = resultB - resultA
                }
            }
        }
        return resultA
    }
    
    // Adapted from
    // https://stackoverflow.com/a/25022722/133764
    func benchmark(operation: ()->()) -> Double {
        let startTime = CFAbsoluteTimeGetCurrent()
        operation()
        let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
        return Double(timeElapsed)
    }
}
