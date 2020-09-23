//
//  Cachorro.swift
//  Busca
//
//  Created by Gilvã Rocha on 19/09/20.
//  Copyright © 2020 Gilvã Rocha. All rights reserved.
//

import Foundation

class Cachorro {
    var nome: String
    var raca: String
    
    init(nome: String, raca: String){
        self.nome = nome
        self.raca = raca
    }
}

extension Cachorro: FormatadoProtocolo {
    func getFormatadoUsuario() -> String {
        return "Nome: \(nome) Raca: \(raca)"
    }
}
