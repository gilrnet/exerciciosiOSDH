//
//  CasadeAposta.swift
//  Apostas
//
//  Created by Gilvã Rocha on 19/09/20.
//  Copyright © 2020 Gilvã Rocha. All rights reserved.
//

import Foundation

class CasadeAposta {
    var patrimonio: Int = 0
}

extension CasadeAposta: Notificacao {
    func notificar () {
        self.patrimonio += 1000
        print(self.patrimonio)
        print("A casa de apostas comemora: Ganhando grana.")
    }
}
