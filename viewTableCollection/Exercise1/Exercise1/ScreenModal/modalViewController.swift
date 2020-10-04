//
//  modalViewController.swift
//  Exercise1
//
//  Created by Gilvã Rocha on 03/10/20.
//

import UIKit

class modalViewController: UIViewController {

    
    @IBOutlet weak var labelNameModal: UILabel!
    
    @IBAction func actionClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func setLabelName(person: Person) {
            labelNameModal.text = person.name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
