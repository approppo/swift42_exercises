import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var instructionsTextView: UITextView!

    @IBAction func send(_ sender: Any) {
        instructionsTextView.text = "Thanks for clicking the 'Send' button! This information is very important for us. Stay tuned for more news."
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        instructionsTextView.text = ""
    }
}
