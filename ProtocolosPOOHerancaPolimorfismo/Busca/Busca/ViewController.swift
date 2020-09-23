//
//  ViewController.swift
//  Busca
//
//  Created by Gilvã Rocha on 19/09/20.
//  Copyright © 2020 Gilvã Rocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var labelLista: UILabel!
    
    var arrayLista = [FormatadoProtocolo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        
        arrayLista.append(Aviao(modelo: "Boing", cidade: "São Paulo"))
        arrayLista.append(PessoaFisica(nome: "Bob Marley", cpf: "00000001111111"))
        arrayLista.append(PessoaJuridica(nome: "Empresa A", cnpj: "1111100000000"))
        arrayLista.append(Cachorro(nome: "Caramelo", raca: "Shitzu"))
        arrayLista.append(Caneta(marca: "Bic"))
        arrayLista.append(Caneta(marca: "Compasso"))
    }
    
    private func filtrar(textoPesquisa: String) {
        var arrayFiltrado = [FormatadoProtocolo]()
            for item in arrayLista {
                if item.getFormatadoUsuario().lowercased().contains(textoPesquisa.lowercased()) {
                    arrayFiltrado.append(item)
                    print(item.getFormatadoUsuario())
            }
        }
        var output = ""
        for item in arrayFiltrado {
            output = "\(output) \n \(item.getFormatadoUsuario())"
        }
        labelLista.text = output
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let texto = searchBar.text {
            filtrar(textoPesquisa: texto)
        }
    }
}
