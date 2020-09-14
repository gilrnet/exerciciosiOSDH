import UIKit

public class Vendedor {
    var nome: String
    var idade: Int
    private var cpf: String
    private var saldoEmConta: Double
    
    init(nome: String, idade: Int, cpf: String, saldoEmConta: Double){
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
        let totalVenda: Int
        
        if tipoDePeca == "terno" {
            totalVenda = venderTerno(qtdPecas: quantidadeDePecas)
            atualizarSaldo(venda: totalVenda)
            return totalVenda
        } else if tipoDePeca == "vestido" {
            totalVenda = venderVestido(qtdPecas: quantidadeDePecas)
            atualizarSaldo(venda: totalVenda)
            return totalVenda
        } else if tipoDePeca == "boné" {
            totalVenda = venderBone(qtdPecas: quantidadeDePecas)
            atualizarSaldo(venda: totalVenda)
            return totalVenda
       } else {
            print("Não temos o item - \(tipoDePeca) - que você deseja comprar.")
            return 0
        }

    }
    
    private func venderTerno(qtdPecas: Int) -> Int{
        //valor unitário do terno
        let terno: Int = 400
        
        let totalVenda: Int
        
        print("O vendedor \(self.nome) vendeu \(qtdPecas) terno(s).")

        if qtdPecas >= 3 {
            totalVenda = (terno - 50) * qtdPecas
            return totalVenda
        } else {
            totalVenda = terno * qtdPecas
            return totalVenda
            
        }
    }
    
    private func venderVestido(qtdPecas: Int) -> Int {
        //valor unitário do vestido
        let vestido: Int = 900
        //valor unitario véu de noiva
        let veuNoiva: Int = 250
        
        let totalVenda: Int
        
        print("O vendedor \(self.nome) vendeu \(qtdPecas) vestido(s).")
        
        if qtdPecas >= 5 {
            print("O cliente ganhou um véu de noiva no valor de R$ 250.")
            totalVenda = vestido * qtdPecas - veuNoiva
            return totalVenda
        } else {
            totalVenda = vestido * qtdPecas
            return totalVenda
        }
    }
    
    private func venderBone(qtdPecas: Int) -> Int {
        //valor unitário do boné
        let bone: Int = 50
        //valor total da venda realizada, com os respectivos descontos
        let totalVenda: Int
        //quantidade de bonés que o cliente recebeu grátis
        let boneGratuidades: Int
        
        print("O vendedor \(self.nome) vendeu \(qtdPecas) boné(s).")
        
        if qtdPecas >= 2{
            boneGratuidades = Int(floor(Float(qtdPecas) / 2))
            print("O cliente ganhou \(boneGratuidades) boné(s) de brinde.")
            totalVenda = bone * (qtdPecas - boneGratuidades)
            return totalVenda
           
        }
        totalVenda = bone * (qtdPecas)
        return totalVenda
 
    }
    
    private func atualizarSaldo(venda: Int){
        let saldoAtual = getSaldo()
        let novoSaldo = saldoAtual + Double(venda)
        setSaldo(saldo: novoSaldo)
    }
}

var vendasJoao = Vendedor(nome: "João", idade: 38, cpf: "906098686096", saldoEmConta: 0)
print("Saldo do vendedor \(vendasJoao.nome) : R$ \(vendasJoao.getSaldo())")
var totalDaVenda = vendasJoao.vender(quantidadeDePecas: 3, tipoDePeca: "terno")
print("Saldo do vendedor \(vendasJoao.nome) : R$ \(vendasJoao.getSaldo())")
print("---------------")
totalDaVenda = vendasJoao.vender(quantidadeDePecas: 1, tipoDePeca: "terno")
print("Saldo do vendedor \(vendasJoao.nome) : R$ \(vendasJoao.getSaldo())")
print("\n\n")

var vendasMarcelo = Vendedor(nome: "Marcelo", idade: 21, cpf: "112233445566", saldoEmConta: 0)
print("Saldo do vendedor \(vendasMarcelo.nome) : R$ \(vendasMarcelo.getSaldo())")
totalDaVenda = vendasMarcelo.vender(quantidadeDePecas: 5, tipoDePeca: "vestido")
print("Saldo do vendedor \(vendasMarcelo.nome) : R$ \(vendasMarcelo.getSaldo())")
print("---------------")
totalDaVenda = vendasMarcelo.vender(quantidadeDePecas: 1, tipoDePeca: "vestido")
print("Saldo do vendedor \(vendasMarcelo.nome) : R$ \(vendasMarcelo.getSaldo())")
print("\n\n")

var vendasMarcos = Vendedor(nome: "Marcos", idade: 40, cpf: "445566994412", saldoEmConta: 0)
print("Saldo do vendedor \(vendasMarcos.nome) : R$ \(vendasMarcos.getSaldo())")
totalDaVenda = vendasMarcos.vender(quantidadeDePecas: 3, tipoDePeca: "boné")
print("Saldo do vendedor \(vendasMarcos.nome) : R$ \(vendasMarcos.getSaldo())")
print("\n\n")

var vendasJorge = Vendedor(nome: "Jorge", idade: 26, cpf: "441234567890", saldoEmConta: 0)
print("Saldo do vendedor \(vendasJorge.nome) : R$ \(vendasJorge.getSaldo())")
totalDaVenda = vendasJorge.vender(quantidadeDePecas: 2, tipoDePeca: "boné")
print("Saldo do vendedor \(vendasJorge.nome) : R$ \(vendasJorge.getSaldo())")
print("\n\n")

var vendasUlisses = Vendedor(nome: "Ulisses", idade: 30, cpf: "001022447890", saldoEmConta: 0)
print("Saldo do vendedor \(vendasUlisses.nome) : R$ \(vendasUlisses.getSaldo())")
totalDaVenda = vendasUlisses.vender(quantidadeDePecas: 6, tipoDePeca: "boné")
print("Saldo do vendedor \(vendasUlisses.nome) : R$ \(vendasUlisses.getSaldo())")
print("\n\n")
