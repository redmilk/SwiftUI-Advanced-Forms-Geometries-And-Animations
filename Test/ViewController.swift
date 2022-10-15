//
//  ViewController.swift
//  Test
//
//  Created by Danyl Timofeyev on 12.09.2022.
//

import UIKit

extension UIView {
    func sonyaSonya() {
        
    }
}


class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label.font = UIFont(name: "sdfsdf", size: 12)
        
        label.backgroundColor = UIColor.blue
        
        label.layer.borderWidth = 1.0
        
        label.layer.borderColor = UIColor.red.cgColor
        
        label.shadowColor = UIColor.red
        
        label.layer.shadowOpacity = 1.0
        
        label.layer.shadowOffset = CGSize(width: 10, height: 30)
        
    }


}

