//
//  AddPetViewController.swift
//  MyPet
//
//  Created by Milab on 08/07/17.
//  Copyright © 2017 Enrique. All rights reserved.
//

import UIKit

class AddPetViewController: UIViewController {
    
    var petsController:PetTableViewController?

    @IBOutlet weak var petName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  
    }
    


    @IBAction func addPet(_ sender: Any) {
        let name = self.petName.text
        
        petsController?.pets.append(name!)
        petsController?.petTableView.reloadData()
        self.navigationController?.popViewController(animated: true)
        
    }
}
