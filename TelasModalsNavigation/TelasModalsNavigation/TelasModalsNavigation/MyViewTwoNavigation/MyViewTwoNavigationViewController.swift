//
//  MyViewTwoNavigationViewController.swift
//  TelasModalsNavigation
//
//  Created by Gilvã Rocha on 24/09/20.
//

import UIKit

class MyViewTwoNavigationViewController: UIViewController {

    @IBAction func actionDownMyViewTwoNavigation(_ sender: Any) {
        //if let viewControllerOneMain = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? ViewController {
            
            //Fecha a tela Navigation
            navigationController?.popViewController(animated: true)
        //}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "My View Two Navigation"
        // Do any additional setup after loading the view.
    }

}
