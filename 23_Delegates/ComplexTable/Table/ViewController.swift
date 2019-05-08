import UIKit

// tag::typealias[]
typealias Country = [String: String]
// end::typealias[]

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    lazy var continents = [String]()
    lazy var countriesByContinent = [String : [Country]]()

    override func loadView() {
        super.loadView()

        let tableView = UITableView(frame: self.view.bounds,
            style: UITableView.Style.plain)
        tableView.dataSource = self
        tableView.delegate = self
        self.view = tableView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // tag::load[]
        let path = Bundle.main.path(forResource: "Countries", ofType: "plist")!
        let data = NSArray(contentsOfFile: path) as! [Country]
        // end::load[]

        // tag::sections[]
        var continentNames = Set<String>()
        var countries = [String : [Country]]()

        for country in data {
            let currentContinent = country["continent"]!
            continentNames.insert(currentContinent)

            if countries[currentContinent] == nil {
                countries[currentContinent] = [Country]()
            }
            countries[currentContinent]!.append(country)
        }
        // end::sections[]

        // tag::sort[]
        for (continent, items) in countries {
            countriesByContinent[continent] = items.sorted { country1, country2 -> Bool in
                return country1["name"]! < country2["name"]!
            }
        }

        continents = Array(continentNames).sorted()
        // end::sort[]
    }

    // tag::numsections[]
    func numberOfSections(in tableView: UITableView) -> Int {
        return continents.count
    }
    // end::numsections[]

    // tag::headers[]
    func tableView(_ tableView: UITableView,
        titleForHeaderInSection section: Int) -> String? {
        return continents[section]
    }
    // end::headers[]

    // tag::index[]
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return continents.map { continent in
            // only display the first character in the right-hand side index
            let index = continent.startIndex
            return String(continent[index])
        }
    }
    // end::index[]

    // tag::countriescount[]
    func tableView(_ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {

        let currentContinent = continents[section]
        let currentCountries = countriesByContinent[currentContinent]!
        return currentCountries.count
    }
    // end::countriescount[]

    // tag::cell[]
    func tableView(_ tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
        }

        let currentCountry = country(for: indexPath)
        cell?.textLabel?.text = currentCountry["name"]
        cell?.detailTextLabel?.text = currentCountry["continent"]
        cell?.imageView?.image = UIImage(named: currentCountry["flag"]!)
        return cell!
    }
    // end::cell[]

    // tag::select[]
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let currentCountry = country(for: indexPath)
        let alert = UIAlertController(title: "Selected country",
            message: currentCountry["name"]!,
            preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    // end::select[]

    private func country(for indexPath: IndexPath) -> Country {
        let currentContinent = continents[indexPath.section]
        let currentCountries = countriesByContinent[currentContinent]!
        let currentCountry = currentCountries[indexPath.row]
        return currentCountry
    }
}
