import UIKit

// tag::view1[]
class CenteredRedView: UIView {

    private let label = UILabel()
    // end::view1[]

    // tag::prop[]
    var text : String? = "From Code!" {
        didSet {
            label.text = text
        }
    }
    // end::prop[]

    // tag::view2[]
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
// end::view2[]

