import Foundation
import UIKit

class PetModel {

    let name: String
    let image: UIImage?

    init(name: String, imageName: String){
        
        self.name = name
        self.image = UIImage(named: imageName)
    }
}
