//
//  RpassViewModel.swift
//  BetaHealth
//
//  Created by Baruch on 19/03/25.
//
import SwiftUI

class RpassViewModel : ObservableObject {
    
    var nick: String = ""
    var email: String = ""
    
    func rpass() {
           print("nick : \(nick), email: \(email)")
       }
}
