import UIKit

extension ListViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        
        let item = items[indexPath.row]
        items.selectedItem = item

        performSegue(withIdentifier: "displayItem", sender: self)
    }
}
