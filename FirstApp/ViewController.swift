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

    @IBOutlet weak var turnButton: UIButton!
    
    //MARK: - Системные функции
    //Экран БЫЛ загружен
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

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
        //if redView.isHidden == true{
        //  redView.isHidden = false
        //} else {
        //    redView.isHidden = true
        // }
        redView.isHidden = !redView.isHidden
        redView.backgroundColor = .green
    }
    
    //MARK: - Пользовательские функции
 


}



