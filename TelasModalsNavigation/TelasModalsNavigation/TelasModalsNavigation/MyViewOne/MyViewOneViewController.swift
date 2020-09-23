//
//  MyViewOneViewController.swift
//  TelasModalsNavigation
//
//  Created by Gilvã Rocha on 22/09/20.
//

import UIKit

class MyViewOneViewController: UIViewController {

    @IBAction func actionOpenModal(_ sender: Any) {
        if let viewControllerOneModal = UIStoryboard(name: "MyViewOneModal", bundle: nil).instantiateInitialViewController() as? MyViewOneModalViewController {
            
            //Abre a tela Modal
            present(viewControllerOneModal, animated: true, completion: nil)
        }
    }
    
    @IBAction func actionOpenNavigation(_ sender: Any) {
        if let viewControllerOneNavigation = UIStoryboard(name: "MyViewOneNavigation", bundle: nil).instantiateInitialViewController() as? MyViewOneNavigationViewController {
            
            //Abre a tela Navigation
            navigationController?.pushViewController(viewControllerOneNavigation, animated: true)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "My View One"
        // Do any additional setup after loading the view.
    }
    

}
