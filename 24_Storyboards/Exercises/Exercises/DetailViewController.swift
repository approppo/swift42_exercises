import UIKit

class DetailViewController: UIViewController {
    
    var item : ToDoItem? = DataSource.sharedInstance.selectedItem

    @IBOutlet weak var doneSwitch: UISwitch!
    @IBOutlet weak var titleLabel: UITextField!

    @IBAction func doneNotDone(_ sender: Any) {
        if let selectedItem = item {
            selectedItem.done = !selectedItem.done
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let selectedItem = item {
            title = selectedItem.title
            titleLabel.text = selectedItem.title
            doneSwitch.isOn = selectedItem.done
        }
        else {
            // This should never happen… but one never knows.
            let alert = UIAlertController(title: "Error",
                                          message: "No item was selected!",
                                          preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let selectedItem = item {
            selectedItem.title = titleLabel.text!
        }
    }
}
