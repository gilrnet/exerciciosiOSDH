//
//  NavigationViewController.swift
//  Exercise3
//
//  Created by Gilvã Rocha on 03/10/20.
//

import UIKit

class NavigationViewController: UIViewController {

    @IBOutlet weak var imageNavigation: UIImageView!
    
    private var car: Car!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageNavigation.image = UIImage(named: car.nameImage)
    }
    
    func setCar(car: Car) {
        self.car = car
    }
}
