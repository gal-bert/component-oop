//
//  Click.swift
//  Convenience Init
//
//  Created by Gregorius Albert on 24/12/22.
//

import Foundation

protocol Click {
    func click()
}

extension Click where Self: AnimatedButton {
    
    func click() {
        print("Clicked")
    }
    
    func unclick() {
        print("Unclicked")
    }
}
