//
//  ViewController.swift
//  FirstApp
//
//  Created by User on 28.09.2023.
//

import UIKit
import SnapKit

class SvetoforController: UIViewController {
    
    var firsSectionView = SvetoforSectionView(colorLight: .red)
    var secondSectionView = SvetoforSectionView(colorLight: .yellow)
    var thirdSectionView = SvetoforSectionView(colorLight: .green)
    
    let stackView = UIStackView(frame: .zero)
    
    @IBOutlet weak var turnButton: UIButton!
    
    //MARK: - Системные функции
    //Экран БЫЛ загружен
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(stackView)
        
        stackView.spacing = 12
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        
        stackView.addArrangedSubview(firsSectionView)
        stackView.addArrangedSubview(secondSectionView)
        stackView.addArrangedSubview(thirdSectionView)
        
        stackView.snp.makeConstraints { make in
            make.width.equalTo(300)
            make.height.greaterThanOrEqualTo(300)
            make.top.equalTo(64)
            make.centerX.equalToSuperview()
            
        }
        firsSectionView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            
        }
        secondSectionView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            
        }
        thirdSectionView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            
        }
        
    }
    
//    firsSectionView.turnOff()
//    secondSectionView.turnOff()
//    thirdSectionView.turnOff()
    
    
    //MARK: - Пользовательские функции
    
    
    //MARK: - Actions
    
    
    @IBAction func turnButtonAction(_ sender: Any) {
        if firsSectionView.isOff() && secondSectionView.isOff() && thirdSectionView.isOff() {
            firsSectionView.turnOn()
        } else if firsSectionView.isOn() {
            firsSectionView.turnOff()
            secondSectionView.turnOn()
        } else if secondSectionView.isOn() {
            secondSectionView.turnOff()
            thirdSectionView.turnOn()
        } else if thirdSectionView.isOn() {
            thirdSectionView.turnOff()
            firsSectionView.turnOn()
        }
    }
}
        

