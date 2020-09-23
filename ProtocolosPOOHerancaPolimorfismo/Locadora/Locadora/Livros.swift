//
//  Livros.swift
//  Locadora
//
//  Created by Gilvã Rocha on 19/09/20.
//  Copyright © 2020 Gilvã Rocha. All rights reserved.
//

import Foundation

class Livros: Locadora {
    var qtdDePaginas: Int
    
    init(nome: String, codigo: String, qtdDePaginas: Int) {
        self.qtdDePaginas = qtdDePaginas
        super.init(nome: nome, codigo: codigo)
    }
    override func locacao() {
        print("Deve ser devolvido o livro em 15 dias")
    }
}
