//
//  ViewController.swift
//  Closure_Crash
//
//  Created by vinoth kumar on 19/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let demo = Demo()
        demo.increment(3)
    }

    
    class Demo {
        var value = 0
        lazy var increment:(Int) -> Void = {  by in
            self.value += by
            print(self.value)
        }
    }

  

}

