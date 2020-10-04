//
//  AnimalsViewController.swift
//  Exercise2
//
//  Created by Gilvã Rocha on 04/10/20.
//

import UIKit

class AnimalsViewController: UIViewController {

    @IBOutlet weak var labelAnimals: UILabel!
    
    
    @IBAction func actionClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func setup(animals: Animals) {
        labelAnimals.text = animals.name
    }

}
