import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!

    // tag::slow[]
    @IBAction func calculate(_ sender: Any) {
        resultLabel.text = "Calculating…"
        
        var result = 0
        for i in 0...300000000 {
            result += i
        }
        
//        let result = Date()
//        sleep(10)
        resultLabel.text = "Result = \(result)"
    }
    // end::slow[]
}

