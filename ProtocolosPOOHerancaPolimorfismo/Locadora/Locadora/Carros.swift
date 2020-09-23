//
//  Carros.swift
//  Locadora
//
//  Created by Gilvã Rocha on 19/09/20.
//  Copyright © 2020 Gilvã Rocha. All rights reserved.
//

import Foundation

class Carros: Locadora {
    var placa: String
    
    init(nome: String, codigo: String, placa: String) {
        self.placa = placa
        super.init(nome: nome, codigo: codigo)
    }
    override func locacao() {
        print("Deve ser devolvido o carro em 7 dias")
    }
}
