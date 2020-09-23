//
//  Calculadora.swift
//  Calculadora
//
//  Created by Gilvã Rocha on 19/09/20.
//  Copyright © 2020 Gilvã Rocha. All rights reserved.
//

import Foundation

class Calculadora {
    private var valorTotal: Double = 0
    
    func somar(n1: Double, n2: Double?) -> Double {
        if let number = n2 {
            valorTotal = valorTotal + n1 + number
            return valorTotal
        } else {
            valorTotal = valorTotal + n1
            return valorTotal
        }
    }
    
    func subtrair(n1: Double, n2: Double?) -> Double {
        if let number = n2 {
            valorTotal = valorTotal + n1 - number
            return valorTotal
        } else {
            valorTotal = valorTotal - n1
            return valorTotal
        }
    }
    
    func dividir(n1: Double, n2: Double?) -> Double {
        if let number = n2 {
            valorTotal = valorTotal + n1 / number
            return valorTotal
        } else {
            valorTotal = valorTotal / n1
            return valorTotal
        }
    }
    
    func multiplicar(n1: Double, n2: Double?) -> Double {
        if let number = n2 {
            valorTotal = valorTotal + n1 * number
            return valorTotal
        } else {
            valorTotal = valorTotal * n1
            return valorTotal
        }
    }
}
