import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var petsData: [PetModel]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set tableview properties
        tableView.dataSource = self
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        
        //create list of pets and associated data
        self.petsData = getPetsData();
    }
    
    private func getPetsData() -> [PetModel] {
        var petList = [PetModel]()
        
        let petDog = PetModel(name: "Dog", imageName: "dog")
        petList.append(petDog)
        
        let petCat = PetModel(name: "cat", imageName: "cat")
        petList.append(petCat)
        
        let petFish = PetModel(name: "Fish", imageName: "fish")
        petList.append(petFish)
        
        let petPig = PetModel(name: "Pig", imageName: "pig")
        petList.append(petPig)
        
        let petGuineaPig = PetModel(name: "Guinea Pig", imageName: "guinea-pig")
        petList.append(petGuineaPig)
        
        return petList;
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //if pet list is nil, return 0 rows
        guard let petList = petsData else { return 0 }
        //else return the number of pets in petList
        return petList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //if petsData list is nil, return an empty table view cell
        guard let petList = petsData else { return UITableViewCell() }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PetDetailsCell", for: indexPath) as! PetDetailsCell
        
        //get pet details at the associated row
        let petDetails = petList[indexPath.row]
        cell.petName.text = petDetails.name
        cell.imageView?.image = petDetails.image
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        // set the title of the section
        return "My Pets"
    }
    
}

