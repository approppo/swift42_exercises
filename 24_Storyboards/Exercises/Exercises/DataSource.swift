import Foundation

class DataSource {
    static let sharedInstance = DataSource()
    
    var items = [ToDoItem]()
    var selectedItem : ToDoItem? = nil

    var count : Int {
        return items.count
    }

    subscript(index: Int) -> ToDoItem {
        get {
            return items[index]
        }
        set(newValue) {
            items[index] = newValue
        }
    }
    
    init() {
        for index in 1...100 {
            let item = ToDoItem()
            item.title = "Item \(index)"
            item.done = false
            items.append(item)
        }
    }
    
}
