import PlaygroundSupport
import UIKit

class Controller : UIViewController {
    // tag::create[]
    override func viewDidLoad() {
        super.viewDidLoad()

        let recognizer = UIPanGestureRecognizer(target: self,
                                                action: #selector(pan))
        view.backgroundColor = .white
        view.addGestureRecognizer(recognizer)
    }
    // end::create[]

    // tag::consume[]
    @objc func pan(sender: UIPanGestureRecognizer) {
        let location = sender.location(in: view)
        let square = makeSquare()
        square.center = location

        switch sender.state {
        case .began:
            square.backgroundColor = .black

        case .changed:
            square.backgroundColor = .green

        case .ended:
            square.backgroundColor = .red

        default:
            break
        }
        view.addSubview(square)

    }

    func makeSquare() -> UIView {
        let rect = CGRect(x: 0, y: 0,
                          width: 10, height: 10)
        let square = UIView(frame: rect)
        return square
    }
    // end::consume[]
}

let controller = Controller()

PlaygroundPage.current.liveView = controller
PlaygroundPage.current.needsIndefiniteExecution = true
