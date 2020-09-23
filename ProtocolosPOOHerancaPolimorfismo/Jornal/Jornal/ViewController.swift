//
//  ViewController.swift
//  Jornal
//
//  Created by Gilvã Rocha on 22/09/20.
//

import UIKit

class ViewController: UIViewController {

    let pessoafisica = PessoaFisica(nome: "Lara Rocha", RG: "23451233-098", endereco: "Rua A")
    let pessoajuridica = PessoaJuridica(nomeComercial: "DG Imports", CNPJ: "0936350001-34", numeroFuncionarios: 50)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pessoafisica.exibirMensagem()
        pessoajuridica.exibirMensagem()
    }
}
