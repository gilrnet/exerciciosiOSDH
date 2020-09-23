//
//  ViewController.swift
//  Locadora
//
//  Created by Gilvã Rocha on 19/09/20.
//  Copyright © 2020 Gilvã Rocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    let dvd = DVD(nome: "Star Wars", codigo: "12", formatoDeVideo: "MP4")
        print("Nome do DVD: \(dvd.nome) \nCódigo do DVD: \(dvd.codigo) \nFormato de Vídeo do DVD: \(dvd.formatoDeVideo)")
        dvd.locacao()
    }


}

