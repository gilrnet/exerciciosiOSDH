//
//  PessoaFisica.swift
//  Jornal
//
//  Created by Gilvã Rocha on 22/09/20.
//

import Foundation

class PessoaFisica {
    var nome: String
    var RG: String
    var endereco: String
    
    init(nome: String, RG: String, endereco: String) {
        self.nome = nome
        self.RG = RG
        self.endereco = endereco
    }
}

extension PessoaFisica:Assinaturas {
    func exibirMensagem() {
        print("Muito obrigado, MonroeStreetJournal. Vocês são demais!")
    }
}
