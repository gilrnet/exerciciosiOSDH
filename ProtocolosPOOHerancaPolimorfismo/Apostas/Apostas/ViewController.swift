//
//  ViewController.swift
//  Apostas
//
//  Created by Gilvã Rocha on 19/09/20.
//  Copyright © 2020 Gilvã Rocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let apostadores = Apostadores()
    let casaaposta = CasadeAposta()
    let kronika = KronikaTV()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        apostadores.notificar()
        casaaposta.notificar()
        kronika.notificar()
    }
}

