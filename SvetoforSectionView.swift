//
//  SvetoforSectionView.swift
//  FirstApp
//
//  Created by User on 30.09.2023.
//

import UIKit

class SvetoforSectionView: UIView {
    
    var colorLight: UIColor?
    
    //Момент создания из сториборда объекта
    override func awakeFromNib() {
        super.awakeFromNib()
        
       layer.cornerRadius = frame.size.width / 2
       layer.borderWidth = 2
       layer.borderColor = UIColor.black.cgColor
       backgroundColor = .clear
    }
    
    //Включение
    func turnOn() {
        backgroundColor = colorLight
    }
    
    //Выключение
    
    func turnOff() {
        backgroundColor = .clear
    }
    
    func isOn() -> Bool {
        if backgroundColor == .clear {
            return false
        } else {
            return true
        }
    }
    
    func isOff() -> Bool {
        if backgroundColor == .clear {
            return true
        } else {
            return false
        }
    }
}
