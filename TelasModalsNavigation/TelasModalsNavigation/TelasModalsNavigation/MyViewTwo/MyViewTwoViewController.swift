//
//  MyViewTwoViewController.swift
//  TelasModalsNavigation
//
//  Created by Gilvã Rocha on 24/09/20.
//

import UIKit

class MyViewTwoViewController: UIViewController {

    @IBAction func actionOpenModal(_ sender: Any) {
        if let viewControllerTwoModal = UIStoryboard(name: "MyViewTwoModal", bundle: nil).instantiateInitialViewController() as? MyViewTwoModalViewController {
            
            //Abre a tela Modal
            present(viewControllerTwoModal, animated: true, completion: nil)
        }
    }
    
    @IBAction func actionOpenNavigation(_ sender: Any) {
        if let viewControllerTwoNavigation = UIStoryboard(name: "MyViewTwoNavigation", bundle: nil).instantiateInitialViewController() as? MyViewTwoNavigationViewController {
            
            //Abre a tela Navigation
            navigationController?.pushViewController(viewControllerTwoNavigation, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "My View Two"
        // Do any additional setup after loading the view.
    }

}
