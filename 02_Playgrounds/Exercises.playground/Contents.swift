import UIKit
import PlaygroundSupport

let label = UILabel()
label.frame = CGRect(x: 50, y: 100, width: 250, height: 100)
label.text = "This is a label!"
label.textColor = .white
label.backgroundColor = .blue
label.font = UIFont.boldSystemFont(ofSize: 30)

let controller = UIViewController()
controller.view.backgroundColor = .lightGray
controller.view.addSubview(label)

PlaygroundPage.current.liveView = controller
