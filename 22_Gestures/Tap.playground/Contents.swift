import PlaygroundSupport
import UIKit

class Controller : UIViewController {
    // tag::create[]
    override func viewDidLoad() {
        super.viewDidLoad()

        let recognizer = UITapGestureRecognizer(target: self,
                                                 action: #selector(tap))
        
        view.backgroundColor = .white
        view.addGestureRecognizer(recognizer)
    }
    // end::create[]

    // tag::consume[]
    @objc func tap(sender: UITapGestureRecognizer) {
        if sender.state == .recognized {
            let location = sender.location(in: view)

            let rect = CGRect(x: 0, y: 0,
                              width: 10, height: 10)
            let square = UIView(frame: rect)
            square.backgroundColor = .black
            square.center = location
            view.addSubview(square)
        }
    }
    // end::consume[]
}

let controller = Controller()

PlaygroundPage.current.liveView = controller
PlaygroundPage.current.needsIndefiniteExecution = true

