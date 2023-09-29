//
//  ViewController.swift
//  FirstApp
//
//  Created by User on 28.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    
    @IBOutlet weak var turnButton: UIButton!
    
    //MARK: - Системные функции
    //Экран БЫЛ загружен
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpView(view: redView)
        setUpView(view: yellowView)
        setUpView(view: greenView)

    }
        //MARK: - Пользовательские функции
        
        func setUpView(view: UIView) {
            view.layer.cornerRadius = 100
            view.layer.borderWidth = 2
            view.layer.borderColor = UIColor.black.cgColor
            view.backgroundColor = .clear
        }
        
        //MARK: - Actions
        
        
        @IBAction func turnButtonAction(_ sender: Any) {
            if redView.backgroundColor == .clear && yellowView.backgroundColor == .clear
                && greenView.backgroundColor == .clear {
                redView.backgroundColor = .red
            } else if redView.backgroundColor == .red {
                redView.backgroundColor = .clear
                yellowView.backgroundColor = .yellow
            } else if yellowView.backgroundColor == .yellow {
                yellowView.backgroundColor = .clear
                greenView.backgroundColor = .green
            } else if greenView.backgroundColor == .green {
                greenView.backgroundColor = .clear
                
            }
        }
        
        
}
