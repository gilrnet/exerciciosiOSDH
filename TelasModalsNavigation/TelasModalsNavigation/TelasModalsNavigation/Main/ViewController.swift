//
//  ViewController.swift
//  TelasModalsNavigation
//
//  Created by Gilvã Rocha on 22/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func actionOpenViewOne(_ sender: Any) {
        if let viewControllerView = UIStoryboard(name: "MyViewOne", bundle: nil).instantiateInitialViewController() as? MyViewOneViewController {
            
            //Abre a tela Navigation
            navigationController?.pushViewController(viewControllerView, animated: true)
        }
    }
    
    @IBAction func actionOpenViewOneModal(_ sender: Any) {
        if let viewControllerOneModal = UIStoryboard(name: "MyViewOneModal", bundle: nil).instantiateInitialViewController() as? MyViewOneModalViewController {
            
            //Abre a tela Modal
            present(viewControllerOneModal, animated: true, completion: nil)
        }
    }
    
    @IBAction func actionOpenViewOnePushed(_ sender: Any) {
        if let viewControllerOneNavigation = UIStoryboard(name: "MyViewOneNavigation", bundle: nil).instantiateInitialViewController() as? MyViewOneNavigationViewController {
            
            //Abre a tela Navigation
            navigationController?.pushViewController(viewControllerOneNavigation, animated: true)
        }
    }
    
    @IBAction func actionOpenViewTwo(_ sender: Any) {
        if let viewControllerView = UIStoryboard(name: "MyViewTwo", bundle: nil).instantiateInitialViewController() as? MyViewTwoViewController {
            
            //Abre a tela Navigation
            navigationController?.pushViewController(viewControllerView, animated: true)
        }
    }
    
    @IBAction func actionOpenViewTwoModal(_ sender: Any) {
        if let viewControllerTwoModal = UIStoryboard(name: "MyViewTwoModal", bundle: nil).instantiateInitialViewController() as? MyViewTwoModalViewController {
            
            //Abre a tela Modal
            present(viewControllerTwoModal, animated: true, completion: nil)
        }
    }
    
    @IBAction func actionOpenViewTwoPushed(_ sender: Any) {
        if let viewControllerTwoNavigation = UIStoryboard(name: "MyViewTwoNavigation", bundle: nil).instantiateInitialViewController() as? MyViewTwoNavigationViewController {
            
            //Abre a tela Navigation
            navigationController?.pushViewController(viewControllerTwoNavigation, animated: true)
        }
    }
    
    @IBAction func actionOpenViewThree(_ sender: Any) {
    }
    
    @IBAction func actionOpenViewThreeModal(_ sender: Any) {
    }
    
    @IBAction func actionOpenViewThreePushed(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

