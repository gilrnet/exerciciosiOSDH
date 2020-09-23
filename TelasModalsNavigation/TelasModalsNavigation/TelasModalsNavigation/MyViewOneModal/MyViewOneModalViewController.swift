//
//  MyViewOneModalViewController.swift
//  TelasModalsNavigation
//
//  Created by Gilvã Rocha on 22/09/20.
//

import UIKit

class MyViewOneModalViewController: UIViewController {

    @IBAction func actionDownMyViewOneModal(_ sender: Any) {
        //if let viewControllerOneMain = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? ViewController {
            
            //Fecha a tela Navigation
            dismiss(animated: true, completion: nil)
        //}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Teste"
        // Do any additional setup after loading the view.
    }
    


}
