//
//  CellView.swift
//  MonkeyTable
//
//  Created by User on 01.10.2023.
//

import UIKit
class CellView: UIView {
    
    private let separatorView = UIView()
    private let label = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .blue
        configurelabel()
        configureSeparatorView()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setText(_ text:String) {
        label.text = text
        
    }
    // MARK: - Private
    
    private func configureSeparatorView() {
        separatorView.backgroundColor = .white
        separatorView.frame = CGRect(x: 0, y: frame.size.height - 1, width: frame.size.width, height: 1)
        self.addSubview(separatorView)
    }
    private func configurelabel(){
        label.frame = self.bounds
        label.textColor = .white
        label.textAlignment = .center
        self.addSubview(label)
    }
}
