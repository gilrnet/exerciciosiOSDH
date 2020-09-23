//
//  PessoaJuridica.swift
//  Jornal
//
//  Created by Gilvã Rocha on 22/09/20.
//

import Foundation

class PessoaJuridica {
    var nomeComercial: String
    var CNPJ: String
    var numeroFuncionarios: Int
    
    init(nomeComercial: String, CNPJ: String, numeroFuncionarios: Int) {
        self.nomeComercial = nomeComercial
        self.CNPJ = CNPJ
        self.numeroFuncionarios = numeroFuncionarios
    }
}

extension PessoaJuridica:Assinaturas {
    func exibirMensagem() {
        print("Agradecemos cordialmente o MonroeStreetJournal pela excelência dos serviços prestados.")
    }
}
