import UIKit

//Define a Class Funcionario - Pai

class Funcionario {
    var nome: String
    var salario: Double
    var cpf: String

    init(nome: String, salario: Double, cpf: String) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    
    //Bonus Anual para o funcionario
    //Dividir o salário pelo número de meses no ano e multiplicar pelo período trabalhado

    func bonusAnual() -> Double {
        return (salario / 12) * 12
    }
}

//Define a Class Programador - Herda de Funcionario

class Programador : Funcionario {
    var plataformaTrabalho: String

    init(nome: String, salario: Double, cpf: String, plataformaTrabalho: String) {

        self.plataformaTrabalho = plataformaTrabalho
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    //Bonus Anual do Programador de 20%

    override func bonusAnual() -> Double {
        let bonusProgramador = super.bonusAnual()
        return bonusProgramador * 0.2
    }
}

//Define a Class Designer - Herda de Funcionario

class Designer : Funcionario {
    var ferramentaPreferida: String

    init(nome: String, salario: Double, cpf: String, ferramentaPreferida: String) {

        self.ferramentaPreferida = ferramentaPreferida
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    //Bonus Anual do Designer de 15%
    
    override func bonusAnual() -> Double {
        let bonusDesigner = super.bonusAnual()
        return bonusDesigner * 0.15
    }
}

var programador = Programador(nome:"Michel", salario: 1000, cpf: "8182884478-12", plataformaTrabalho: "iOS")
print("Nome do funcionário: \(programador.nome)")
print("Salário do funcionário: \(programador.salario)")
print("CPF do funcionário: \(programador.cpf)")
print("Plataforma preferida  do funcionário: \(programador.plataformaTrabalho)")
let bonusProgramador = programador.bonusAnual()
print("Bonus anual do funcionário: \(programador.bonusAnual())")

print("\n#############################################################\n")

var designer = Designer (nome:"Igor", salario: 1000, cpf: "0182884568-85", ferramentaPreferida: "Gimp")
print("Nome do funcionário: \(designer.nome)")
print("Salário do funcionário: \(designer.salario)")
print("CPF do funcionário: \(designer.cpf)")
print("Plataforma preferida  do funcionário: \(designer.ferramentaPreferida)")
let bonusDesigner = designer.bonusAnual()
print("Bonus anual do funcionário: \(designer.bonusAnual())")