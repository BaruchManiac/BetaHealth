//
//  Gender.swift
//  BetaHealth
//
//  Created by Baruch on 21/03/25.
//
import Foundation

enum Gender: String, CaseIterable, Identifiable {
    case male = "Masculino"
    case female = "Feminino"
    
    var id: String {
        self.rawValue
    }
}

