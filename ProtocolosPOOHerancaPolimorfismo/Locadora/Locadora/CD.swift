//
//  CD.swift
//  Locadora
//
//  Created by Gilvã Rocha on 19/09/20.
//  Copyright © 2020 Gilvã Rocha. All rights reserved.
//

import Foundation

class CD: Locadora {
    var cantor: String
    
    init(nome: String, codigo: String, cantor: String) {
        self.cantor = cantor
        super.init(nome: nome, codigo: codigo)
    }
    override func locacao() {
        print("Deve ser devolvido o CD em 3 dias")
    }
}
