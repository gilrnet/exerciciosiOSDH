//
//  main.swift
//  VendaCerta
//
//  Created by Gilvã Rocha on 13/09/20.
//  Copyright © 2020 Gilvã Rocha. All rights reserved.
//

import Foundation

/// Classe para controlar o estoque e venda de automóveis.
///
/// ```
/// let lojaCerta = Loja(estoqueInicial: 50)
/// ```
/// # Example #
/// ```
/// let lojaCerta = Loja(estoqueInicial: 50)
/// ```
class Loja {
    private var estoque: Int
    private var bonificacaoPorVenda = 1
    private var quantidadeMinimaParaBonificacao = 5
    private var bonificacaoPorEstoqueZerado = 2
    
    convenience init() {
        self.init(estoqueInicial: 50)
    }
    
    init(estoqueInicial: Int) {
        self.estoque = estoqueInicial
    }
    
    /// Venda de automóveis para a instância `loja`.
    ///
    ///
    /// - Warning: Não é possível venda negativa ou maior do que o estoque.
    /// - Parameter quantidadeDeVeiculos: A quantidade de veículos a serem vendidos.
    /// - Returns: Retorno vazio.
    /// # Example #
    /// ```
    /// venderAutomovel(quantidadeDeVeiculos: 3)
    /// ```
    func venderAutomovel(quantidadeDeVeiculos: Int) {
        if self.isVendaQuantidadeVeiculosValida(quantidadeDeVeiculos: quantidadeDeVeiculos) && self.isEstoqueFinalValido(quantidadeDeVeiculos: quantidadeDeVeiculos) {
            self.darBaixaEmEstoque(quantidadeDeVeiculos: quantidadeDeVeiculos)
            
            // Verificam se o estoque se esgotou com a venda
            self.verificarBonificacaoDeEstoqueZerado()
            
            // Verifica a bonificação de automóvel se a venda for maior ou igual a 5 (cinco) veículos
            self.verificarBonificacaoVeiculos(quantidadeDeVeiculos: quantidadeDeVeiculos)
        } else {
            print("Venda inválida! Não é possível vender \(quantidadeDeVeiculos) porque temos apenas \(self.estoque) em estoque.")
        }
    }
    
    // Verifica se a quantidade de veiculos a serem vendidos é válida.
    private func isVendaQuantidadeVeiculosValida(quantidadeDeVeiculos: Int) -> Bool {
        if quantidadeDeVeiculos > 0 {
            return true
        } else {
            return false
        }
    }
    
    // Bonificação, ou seja, regra de venda 5 veículos ou mais
    private func verificarBonificacaoVeiculos(quantidadeDeVeiculos: Int) {
        if quantidadeDeVeiculos >= self.quantidadeMinimaParaBonificacao {
            self.reporEstoque(quantidadeDeVeiculos: self.bonificacaoPorVenda)
            print("(Bonificação) Você vendeu \(quantidadeDeVeiculos) e ganhou \(self.bonificacaoPorVenda).")
        }
    }
    
    // Dá baixa em estoque
    private func darBaixaEmEstoque(quantidadeDeVeiculos: Int) {
        if self.isEstoqueFinalValido(quantidadeDeVeiculos: quantidadeDeVeiculos) {
            self.estoque -= quantidadeDeVeiculos
        } else {
            print("Baixa de inválida! Não é possível vender \(quantidadeDeVeiculos) porque temos apenas \(self.estoque) em estoque.")
        }
    }
    
    // Verificar se estoque pode ficar negativo
    private func isEstoqueFinalValido(quantidadeDeVeiculos: Int) -> Bool {
        let estoqueFinal = self.estoque - quantidadeDeVeiculos
        
        if estoqueFinal >= 0 {
            return true
        } else {
            return false
        }
    }
    
    /// Repor estoque de automóveis para a instância `loja`.
    ///
    ///
    /// - Warning: Precisa da venda do carro para movimentar o estoque, e nunca pode ficar negativo.
    /// - Parameter quantidadeDeVeiculos: A quantidade de veículos a serem repostos.
    /// - Returns: Retorno maior 0.
    /// # Example #
    /// ```
    /// reporEstoque(quantidadeDeVeiculos: Int)
    /// ```
    func reporEstoque(quantidadeDeVeiculos: Int) {
        if self.isReposicaoDeEstoqueValida(quantidadeDeVeiculos: quantidadeDeVeiculos) {
            self.estoque += quantidadeDeVeiculos
        }
    }
    
    private func isReposicaoDeEstoqueValida(quantidadeDeVeiculos: Int) -> Bool {
        if quantidadeDeVeiculos > 0 {
            return true
        } else {
            return false
        }
    }
    
    // Verifica bonificação de veículo por estoque zerado
    private func verificarBonificacaoDeEstoqueZerado() {
        if self.estoque == 0 {
            self.reporEstoque(quantidadeDeVeiculos: self.bonificacaoPorEstoqueZerado)
            print("(Bonificação) Você zerou o estoque e recebeu \(self.bonificacaoPorEstoqueZerado).")
        }
    }
    
    func mostrarEstoque() {
        print("Veículos em estoque: \(self.estoque)")
    }
    
}

let lojaCerta = Loja()
lojaCerta.mostrarEstoque()

lojaCerta.venderAutomovel(quantidadeDeVeiculos: 1)
lojaCerta.mostrarEstoque()

lojaCerta.venderAutomovel(quantidadeDeVeiculos: 5)
lojaCerta.mostrarEstoque()

lojaCerta.venderAutomovel(quantidadeDeVeiculos: 44)
lojaCerta.mostrarEstoque()

lojaCerta.venderAutomovel(quantidadeDeVeiculos: 2)
lojaCerta.mostrarEstoque()

lojaCerta.venderAutomovel(quantidadeDeVeiculos: 10)
lojaCerta.mostrarEstoque()