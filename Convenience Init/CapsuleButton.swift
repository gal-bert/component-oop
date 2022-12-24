//
//  CapsuleButton.swift
//  Convenience Init
//
//  Created by Gregorius Albert on 24/12/22.
//

import UIKit

class CapsuleButton: AnimatedButton {
    
    var tempTitle: String = "Button"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        setTitle(tempTitle, for: .normal)
        clipsToBounds = true
        layer.cornerCurve = .continuous
        configuration?.cornerStyle = .capsule
    }
    
    convenience init(title: String, backgroundColor: UIColor) {
        self.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
        tempTitle = (titleLabel?.text)!
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let height = bounds.height
        layer.cornerRadius = height/2
    }
    
    override open var isHighlighted: Bool {
        didSet {
            
            if isHighlighted {
                setTitle("Clicked", for: .normal)
                click()
            } else {
                setTitle(tempTitle, for: .normal)
                unclick()
            }
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

