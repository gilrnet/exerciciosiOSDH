//
//  DVD.swift
//  Locadora
//
//  Created by Gilvã Rocha on 19/09/20.
//  Copyright © 2020 Gilvã Rocha. All rights reserved.
//

import Foundation

class DVD: Locadora {
    var formatoDeVideo: String
    
    init(nome: String, codigo: String, formatoDeVideo: String) {
        self.formatoDeVideo = formatoDeVideo
        super.init(nome: nome, codigo: codigo)
    }
    override func locacao() {
        print("Deve ser devolvido o DVD em 5 dias")
    }
}
