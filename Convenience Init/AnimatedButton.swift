//
//  AnimatedButton.swift
//  Convenience Init
//
//  Created by Gregorius Albert on 24/12/22.
//

import UIKit

class AnimatedButton: UIButton, Click {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBlue
        setTitleColor(.white, for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override open var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                UIView.animate(withDuration: 0.1, delay: 0) {
                    self.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
                    self.alpha = 0.5
                }
            } else {
                UIView.animate(withDuration: 0.1, delay: 0) {
                    self.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    self.alpha = 1.0
                }
            }
        }
    }
}
