import UIKit

public class Vendedor {
    var nome: String
    var idade: Int
    var cpf: String
    private var saldoEmConta: Double
    
    init(nome: String, idade: Int, cpf: String, saldoEmConta: Double) {
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldoEmConta = saldoEmConta
    }
    
    func getSaldo () -> Double {
        return self.saldoEmConta
    }
    
    func setSaldo (saldo: Double) {
        self.saldoEmConta = saldo
    }    
    
    func vender(quantidadeDePecas: Int, tipoDePeca: String) -> Int {
        let terno: Int = 400
        let vestido: Int = 900
        let bone: Int = 50
        let totalVenda: Int
        
        if tipoDePeca == "terno" {
            if quantidadeDePecas >= 3 {
                totalVenda = (terno - 50) * quantidadeDePecas
                atualizarSaldo(venda: totalVenda)
                return totalVenda
            } else {
                totalVenda = terno * quantidadeDePecas
                atualizarSaldo(venda: totalVenda)
                return totalVenda
            }
        } else if tipoDePeca == "vestido" {
            if quantidadeDePecas >= 5 {
                print("O cliente ganhou um véu de noiva no valor de R$ 250.")
                totalVenda = vestido * quantidadeDePecas
                atualizarSaldo(venda: totalVenda)
                return totalVenda
            } else {
                totalVenda = vestido * quantidadeDePecas
                atualizarSaldo(venda: totalVenda)
                return totalVenda
            }
        } else if tipoDePeca == "boné" {
            if quantidadeDePecas == 2 {
                print("O cliente ganhou \(floor(Float(quantidadeDePecas) / 2)) boné(s) de brinde.")
                totalVenda = bone * (quantidadeDePecas)
                atualizarSaldo(venda: totalVenda)
                return totalVenda 
            }
            else if quantidadeDePecas > 2 {
                print("O cliente ganhou \(floor(Float(quantidadeDePecas) / 3)) boné(s) de brinde.")
                totalVenda = bone * (quantidadeDePecas - Int(floor(Float(quantidadeDePecas) / 3)))
                atualizarSaldo(venda: totalVenda)
                return totalVenda 
            }
            totalVenda = bone * quantidadeDePecas
            atualizarSaldo(venda: totalVenda)
            return totalVenda
            } else {
                print("Não temos o item - \(tipoDePeca) - que você deseja comprar.")
                return 0
            }  
    }
    
    private func atualizarSaldo(venda: Int){
        let saldoAtual = getSaldo()
        let novoSaldo = saldoAtual + Double(venda)
        setSaldo(saldo: novoSaldo)
    }
}

var vendasJoao = Vendedor(nome: "João", idade: 38, cpf: "906098686096", saldoEmConta: 0)
print("Saldo do vendedor \(vendasJoao.nome) : R$ \(vendasJoao.getSaldo())")
let totalDaVenda = vendasJoao.vender(quantidadeDePecas: 3, tipoDePeca: "boné")
print("O vendedor \(vendasJoao.nome) efetuou uma venda de: \(totalDaVenda)")
print("Saldo do vendedor \(vendasJoao.nome) : R$ \(vendasJoao.getSaldo())")