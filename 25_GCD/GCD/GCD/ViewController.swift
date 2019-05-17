import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!

    // tag::calc[]
    @IBAction func calculate(_ sender: Any) {
        resultLabel.text = "Calculating…"

        let queue = DispatchQueue(label: "training.akosma.queue") // <1>
        queue.async { // <2>
            let result = Date()
            sleep(10)
            DispatchQueue.main.async { [unowned self] in // <3>
                self.resultLabel.text = "Result = \(result)"
            }
        }
    }
    // end::calc[]

    
    // tag::calc_global[]
    @IBAction func calculateGlobalQueue(_ sender: Any) {
        resultLabel.text = "Calculating…"
        
        // Global concurrent system background queue
        DispatchQueue.global().async {
            let result = Date()
            sleep(10)
            DispatchQueue.main.async { [unowned self] in
                self.resultLabel.text = "Result = \(result)"
            }
        }
    }
    // end::calc_global[]
}
