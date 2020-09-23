//
//  Caneta.swift
//  Busca
//
//  Created by Gilvã Rocha on 19/09/20.
//  Copyright © 2020 Gilvã Rocha. All rights reserved.
//

import Foundation

class Caneta {
    var marca: String
    
    init(marca: String){
        self.marca = marca
    }
}

extension Caneta: FormatadoProtocolo {
    func getFormatadoUsuario() -> String {
        return "Marca: \(marca)"
    }
}
