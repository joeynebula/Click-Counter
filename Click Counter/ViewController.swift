//
//  ViewController.swift
//  Click Counter
//
//  Created by Joey  Baker on 5/7/18.
//  Copyright © 2018 Waterfield. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Label init
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        //button init
        
        let button = UIButton()
        button.frame = CGRect(x: 150, y:250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: .touchUpOutside)
    }
    
    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

