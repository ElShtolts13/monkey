//
//  SvetoforView.swift
//  FirstApp
//
//  Created by User on 30.09.2023.
//

import UIKit
import SnapKit

class SvetoforView: UIView {
    
    var firsSectionView = SvetoforSectionView(colorLight: .red)
    var secondSectionView = SvetoforSectionView(colorLight: .yellow)
    var thirdSectionView = SvetoforSectionView(colorLight: .green)
    
    let stackView = UIStackView(frame: .zero)
    
    init() {
        super.init(frame: .zero)
        
        configureStackView()
        setStartState()
    
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: - Public
    func switchMode () {
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
    
    //MARK: - Private
    
    private func configureStackView() {
        addSubview(stackView)
        
        stackView.spacing = 12
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        
        stackView.addArrangedSubview(firsSectionView)
        stackView.addArrangedSubview(secondSectionView)
        stackView.addArrangedSubview(thirdSectionView)
        
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
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
    private func setStartState() {
        firsSectionView.turnOff()
        secondSectionView.turnOff()
        thirdSectionView.turnOff()
    }
}
