//
//  ViewController.swift
//  Test
//
//  Created by Danyl Timofeyev on 12.09.2022.
//

import Combine
import UIKit

class ViewController: UIViewController {

    var bag = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
     
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
                
        vc.publisher(for: \.bar).sink(receiveCompletion: { result in
            switch result {
            case .finished:
                break
            case .failure:
                break
            }
        }, receiveValue: { value in
            print("new value: \(value.description)")
        }).store(in: &bag)
        
        present(vc, animated: true, completion: nil)
    }


}

class ViewController2: UIViewController {

    @objc dynamic var bar: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        bar = false
    }


}
