//
//  PessoaJuridica.swift
//  Busca
//
//  Created by Gilvã Rocha on 19/09/20.
//  Copyright © 2020 Gilvã Rocha. All rights reserved.
//

import Foundation

class PessoaJuridica {
    var nome: String
    var cnpj: String
    
    init(nome: String, cnpj: String){
        self.nome = nome
        self.cnpj = cnpj
    }
}

extension PessoaJuridica: FormatadoProtocolo {
    func getFormatadoUsuario() -> String {
        return "Nome: \(nome) CNPJ: \(cnpj)"
    }
}
