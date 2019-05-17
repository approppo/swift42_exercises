import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var instructionsTextView: UITextView!
    
    var button: UIButton!

    @IBAction func send(_ sender: Any) {
        instructionsTextView.text = NSLocalizedString("GREETING_TEXT_VIEW", comment: "Instructions shown when clicking on the 'send' button")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        instructionsTextView.text = ""

        // tag::formatting[]
        var person = PersonNameComponents()
        person.namePrefix = "Dr."
        person.givenName = "John"
        person.nickname = "Lightning"
        person.familyName = "Smith"
        person.nameSuffix = "Jr."

        let personFormatter = PersonNameComponentsFormatter()
        personFormatter.style = .long
        nameLabel.text = personFormatter.string(from: person)
        // end::formatting[]

        // tag::dates[]
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        dateLabel.text = dateFormatter.string(from: date)
        // end::dates[]

        // tag::measures[]
        let distance : Double = 50400.20
        let distanceMeasure = Measurement(value: distance, unit: UnitLength.meters)
        let measureFormatter = MeasurementFormatter()
        measureFormatter.unitStyle = .long
        distanceLabel.text = measureFormatter.string(from: distanceMeasure)

        let temp : Double = 25
        let tempMeasure = Measurement(value: temp, unit: UnitTemperature.celsius)
        temperatureLabel.text = measureFormatter.string(from: tempMeasure)
        // end::measures[]

        // tag::numbers[]
        let price : Double = 150
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        priceLabel.text = numberFormatter.string(for: price)
        // end::numbers[]
    }
}
