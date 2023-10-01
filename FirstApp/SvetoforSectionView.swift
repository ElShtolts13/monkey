//
//  SvetoforSectionView.swift
//  FirstApp
//
//  Created by User on 30.09.2023.
//

import UIKit
enum Colors {
    case red
    case orange
    case green
    
    func color() ->UIColor {
        switch self {
        case .red:
            return UIColor.red
        case .orange:
            return UIColor.orange
        case .green:
            return UIColor.green
        }
    }
}

class SvetoforSectionView: UIView {
    
    private var colorLight: Colors?
    init(colorLight: Colors) {
        super.init(frame: .zero)
        self.colorLight = colorLight
        
        setUpView()
       

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    //Момент создания из сториборда объекта
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setUpView()
    }
    
    // MARK: - Private
    
    private func setUpView() {
        layer.cornerRadius = frame.size.width / 2
        layer.borderWidth = 2
        layer.borderColor = UIColor.black.cgColor
        backgroundColor = .clear
    }
    // MARK: - Public
    
    
    /// Здесь назначается цвет секции, при создании вью сториборд
    func setColorLight(_ colorLight: Colors) {
        self.colorLight = colorLight
    }
    
    //Включение
    func turnOn() {
        backgroundColor = colorLight?.color()
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
