//
//  MessageEntity.swift
//  ViperExample
//
//  Created by Marcelo Aguilar Bravo on 12/04/23.
//

import Foundation

public struct MessageEntity {
    let message: String
    
    init(message: String) {
        self.message = " Hola como estas: \(message)"
    }
}
