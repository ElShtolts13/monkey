//
//  ViewController.swift
//  FirstApp
//
//  Created by User on 28.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // Storyboard var
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var turnButton: UIButton!
    
    //MARK: - Системные функции
    //Экран БЫЛ загружен
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redView.layer.cornerRadius = 100
        redView.layer.borderWidth = 2
        redView.layer.borderColor = UIColor.black.cgColor
        
        yellowView.layer.cornerRadius = 100
        yellowView.layer.borderWidth = 2
        yellowView.layer.borderColor = UIColor.black.cgColor
        
        greenView.layer.cornerRadius = 100
        greenView.layer.borderWidth = 2
        greenView.layer.borderColor = UIColor.black.cgColor
        
        redView.backgroundColor = .clear
        yellowView.backgroundColor = .clear
        greenView.backgroundColor = .clear
        
    }
    //Экран БУДЕТ показан
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    // Экран БЫЛ показан
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
    }
    // Экран БУДЕТ скрыт
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    //Экран БЫЛ скрыт
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
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
        
        //MARK: - Пользовательские функции
        
        
        
    }
    
    
    
}
