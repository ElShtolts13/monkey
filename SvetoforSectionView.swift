//
//  SvetoforSectionView.swift
//  FirstApp
//
//  Created by User on 30.09.2023.
//

import UIKit

class SvetoforSectionView: UIView {
    
    //Момент создания из сториборда объекта
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = frame.size.width / 2
       layer.borderWidth = 2
       layer.borderColor = UIColor.black.cgColor
       backgroundColor = .clear
    }
}
