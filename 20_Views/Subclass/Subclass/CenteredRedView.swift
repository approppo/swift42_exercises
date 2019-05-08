import UIKit

//@IBDesignable
class CenteredRedView: UIView {

    private let label = UILabel()

//    @IBInspectable
    var text : String? = "From Code!" {
        didSet {
            label.text = text
        }
    }

    override func layoutSubviews() {
        let size = self.frame.size
        let w = size.width - 20
        let h = size.height - 20
        let rect = CGRect(x: 10,
                          y: 10,
                          width: w,
                          height: h)
        label.frame = rect
        label.backgroundColor = .red
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.text = self.text
        label.textAlignment = .center

        self.addSubview(label)
        self.backgroundColor = .yellow
    }
}
