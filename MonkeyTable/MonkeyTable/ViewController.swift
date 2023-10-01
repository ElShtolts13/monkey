//
//  ViewController.swift
//  MonkeyTable
//
//  Created by User on 01.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let scrollView = UIScrollView()
    
    private let counOfCells = 20
    private let heightCell = 44
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        confugureScrollView()
        configureCells()
        
        
    }
// MARK: - Private
    
    private func confugureScrollView() {
        scrollView.backgroundColor = .red
        scrollView.frame = self.view.frame
        scrollView.contentSize = CGSize(width: self.view.frame.width, height: CGFloat(counOfCells * heightCell + 80))
        view.addSubview(scrollView)
    }
    
    private func configureCells() {
        for index in 0...counOfCells {
            let cellView = CellView(frame: CGRect(x: 0, y: heightCell * index, width: Int(scrollView.frame.size.width), height: heightCell))
            cellView.setText(String(index))
            
            scrollView.addSubview(cellView)
        }
    }

}

