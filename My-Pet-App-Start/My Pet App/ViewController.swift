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
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //if petsData list is nil, return an empty table view cell
        guard let petsData = petsData else { return UITableViewCell() }
        //TODO: Create custom cell
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        // set the title of the section
        return "My Pets"
    }
    
}

