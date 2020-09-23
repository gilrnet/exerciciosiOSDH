//
//  ViewController.swift
//  Calculadora
//
//  Created by Gilvã Rocha on 19/09/20.
//  Copyright © 2020 Gilvã Rocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var calculadora = Calculadora()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(calculadora.somar(n1: 2, n2: 2))
        print(calculadora.somar(n1: 1, n2: nil))
    }


}
