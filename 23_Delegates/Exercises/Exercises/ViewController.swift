import UIKit

typealias Country = [String: String]

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

//    let insets = UIEdgeInsets(top: 5.0, left: 5.0, bottom: 5.0, right: 5.0)
//    let countPerRow : CGFloat = 10.0

    let IMAGE_VIEW_TAG = 100
    lazy var continents = [String]()
    lazy var countriesByContinent = [String : [Country]]()

    override func loadView() {
        super.loadView()

        let collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .white
        self.view = collectionView
    }

    override func viewDidLoad() {

        let path = Bundle.main.path(forResource: "Countries", ofType: "plist")!
        let data = NSArray(contentsOfFile: path) as! [Country]
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

        for (continent, items) in countries {
            countriesByContinent[continent] = items.sorted { country1, country2 -> Bool in
                return country1["name"]! < country2["name"]!
            }
        }

        continents = Array(continentNames).sorted()
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return continents.count
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let currentContinent = continents[section]
        let currentCountries = countriesByContinent[currentContinent]!
        return currentCountries.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)

        // tag::viewwithtag[]
        var imageView = cell.viewWithTag(IMAGE_VIEW_TAG) as? UIImageView
        if imageView == nil {
            imageView = UIImageView(frame: cell.bounds)
            imageView?.tag = IMAGE_VIEW_TAG
            cell.addSubview(imageView!)
        }

        let currentCountry = getCountry(for: indexPath)
        imageView?.image = UIImage(named: currentCountry["flag"]!)
        // end::viewwithtag[]

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let currentCountry = getCountry(for: indexPath)
        let alert = UIAlertController(title: "Selected country", message: currentCountry["name"]!, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let padding = insets.left * (countPerRow + 1)
//        let availableWidth = view.frame.width - padding
//        let width = availableWidth / countPerRow
//        return CGSize(width: width, height: width / 4 * 3)
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return insets
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return insets.left
//    }

    private func getCountry(for indexPath: IndexPath) -> Country {
        let currentContinent = continents[indexPath.section]
        let currentCountries = countriesByContinent[currentContinent]!
        let currentCountry = currentCountries[indexPath.row]
        return currentCountry
    }
}
