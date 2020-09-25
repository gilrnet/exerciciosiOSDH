//
//  MyViewTwoModalViewController.swift
//  TelasModalsNavigation
//
//  Created by Gilvã Rocha on 24/09/20.
//

import UIKit

class MyViewTwoModalViewController: UIViewController {

    @IBAction func actionDownMyViewTwoModal(_ sender: Any) {
        //if let viewControllerTwoMain = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? ViewController {
            
            //Fecha a tela Navigation
            dismiss(animated: true, completion: nil)
        //}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
