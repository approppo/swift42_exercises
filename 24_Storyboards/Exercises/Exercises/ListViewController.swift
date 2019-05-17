import UIKit

class ListViewController: UIViewController {
    
    var items = DataSource.sharedInstance

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "Cell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
}
