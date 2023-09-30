//
//  ViewController.swift
//  FirstApp
//
//  Created by User on 28.09.2023.
//

import UIKit
import SnapKit

class SvetoforController: UIViewController {

    @IBOutlet weak var firsSectionView: SvetoforSectionView!
    @IBOutlet weak var secondSectionView: SvetoforSectionView!
    @IBOutlet weak var thirdSectionView: SvetoforSectionView!

    
    
    @IBOutlet weak var turnButton: UIButton!
    
    //MARK: - Системные функции
    //Экран БЫЛ загружен
    override func viewDidLoad() {
        super.viewDidLoad()


    }
        //MARK: - Пользовательские функции
        
//        func setUpView(view: UIView) {
//            view.layer.cornerRadius = redViewHeightConstraint.constant / 2
//            view.layer.borderWidth = 2
//            view.layer.borderColor = UIColor.black.cgColor
//            view.backgroundColor = .clear
//        }
        
        //MARK: - Actions
        
        
        @IBAction func turnButtonAction(_ sender: Any) {
            if firsSectionView.backgroundColor == .clear && secondSectionView.backgroundColor == .clear
                && thirdSectionView.backgroundColor == .clear {
                firsSectionView.backgroundColor = .red
            } else if firsSectionView.backgroundColor == .red {
                firsSectionView.backgroundColor = .clear
                secondSectionView.backgroundColor = .yellow
            } else if secondSectionView.backgroundColor == .yellow {
                secondSectionView.backgroundColor = .clear
                thirdSectionView.backgroundColor = .green
            } else if thirdSectionView.backgroundColor == .green {
                thirdSectionView.backgroundColor = .clear
                
            }
        }
        
        
}
