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
        
        firsSectionView.turnOff()
        secondSectionView.turnOff()
        thirdSectionView.turnOff()
        
        firsSectionView.colorLight = .red
        secondSectionView.colorLight = .yellow
        thirdSectionView.colorLight = .green
    }
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
