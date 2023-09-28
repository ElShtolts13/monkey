//
//  ViewController.swift
//  FirstApp
//
//  Created by User on 28.09.2023.
//

import UIKit

class ViewController: UIViewController {
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
    //MARK: - Пользовательские функции
    @IBAction func buttonAction(_ sender: UIButton) {
        summary(a: 2, b: 2)
    }
    
    func summary(a: Int, b: Int) -> Int {
        let c = a + b
        print("Summary", c)
        return c
    }
}


