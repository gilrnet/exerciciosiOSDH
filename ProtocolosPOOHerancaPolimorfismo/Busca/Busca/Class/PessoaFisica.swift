//
//  PessoaFisica.swift
//  Busca
//
//  Created by Gilvã Rocha on 19/09/20.
//  Copyright © 2020 Gilvã Rocha. All rights reserved.
//

import Foundation

class PessoaFisica {
    var nome: String
    var cpf: String
    
    init(nome: String, cpf: String){
        self.nome = nome
        self.cpf = cpf
    }
}

extension PessoaFisica: FormatadoProtocolo {
    func getFormatadoUsuario() -> String {
        return "Nome: \(nome) CPF: \(cpf)"
    }
}
