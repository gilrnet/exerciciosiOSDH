//
//  Aviao.swift
//  Busca
//
//  Created by Gilvã Rocha on 19/09/20.
//  Copyright © 2020 Gilvã Rocha. All rights reserved.
//

import Foundation

class Aviao {
    var modelo: String
    var cidade: String
    
    init(modelo: String, cidade: String){
        self.modelo = modelo
        self.cidade = cidade
    }
}

extension Aviao: FormatadoProtocolo {
    func getFormatadoUsuario() -> String {
        return "Modelo: \(modelo) Cidade: \(cidade)"
    }
}
