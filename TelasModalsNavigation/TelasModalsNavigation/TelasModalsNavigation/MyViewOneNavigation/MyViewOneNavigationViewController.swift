//
//  MyViewOneNavigationViewController.swift
//  TelasModalsNavigation
//
//  Created by Gilvã Rocha on 22/09/20.
//

import UIKit

class MyViewOneNavigationViewController: UIViewController {

    @IBAction func actionDownMyViewOneNavigation(_ sender: Any) {
        //if let viewControllerOneMain = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? ViewController {
            
            //Fecha a tela Navigation
            navigationController?.popViewController(animated: true)
        //}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "My View One Navigation"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
