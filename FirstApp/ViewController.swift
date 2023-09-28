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
    
    // code var
    //var greenView = UIView(frame: CGRect(x: 100, y: 300, width: 300, height: 200))
    
    
    
    
    
    //MARK: - Системные функции
    //Экран БЫЛ загружен
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        createGreenView()
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
    //@IBAction func buttonAction(_ sender: UIButton) {
    //   let c = summary(a: 2, b: 2)
    //    print(c)
    //}
    
    func summary(a: Int, b: Int) -> Int {
        return a + b
    }
    func createGreenView () {
        var greenView = UIView(frame: CGRect(x: 100, y: 300, width: 300, height: 200))
        greenView.backgroundColor = .green
        view.addSubview(greenView)
    }
    
    
    
}



