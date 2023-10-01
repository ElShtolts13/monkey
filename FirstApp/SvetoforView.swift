//
//  SvetoforView.swift
//  FirstApp
//
//  Created by User on 30.09.2023.
//

import UIKit
import SnapKit

class SvetoforView: UIView {

    private let sections: [SvetoforSectionView] = [SvetoforSectionView(colorLight: .red),
                                                   SvetoforSectionView(colorLight: .red),
                                                   SvetoforSectionView(colorLight: .red),
                                                   SvetoforSectionView(colorLight: .red),
                                                   SvetoforSectionView(colorLight: .red),
                                                   SvetoforSectionView(colorLight: .red)]
    
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
        if let indexOfFirstSection = sections.firstIndex(where: { $0.isOn() }), indexOfFirstSection < sections.count - 1 {
            sections[indexOfFirstSection].turnOff()
            sections[indexOfFirstSection + 1].turnOn()
        } else {
            sections.forEach({ $0.turnOff() })
            sections.first?.turnOn()
        }
    }
    
    //MARK: - Private
    
    private func configureStackView() {
        addSubview(stackView)
        
        stackView.spacing = 12
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        
        sections.forEach { section in
            stackView.addArrangedSubview(section)
            section.snp.makeConstraints { make in
                make.width.height.equalTo(100)
            }
        }
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()

        }
    }
    private func setStartState() {

        sections.forEach({ $0.turnOff()})
    }
}
