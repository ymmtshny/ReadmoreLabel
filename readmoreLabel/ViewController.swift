    //
//  ViewController.swift
//  readmoreLabel
//
//  Created by Shinya Yamamoto on 2016/10/26.
//  Copyright © 2016年 Shinya Yamamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ReadmoreLabelDelegate {

    
    @IBOutlet weak var label: ReadmoreLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let text = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
        
        self.label.text = text
        
        
        label.numberOfLines = 6
        label.collapsed = true
        label.delegate = self
    
    }
    

    func didExpandLabel(_ label: ReadmoreLabel) {
        label.numberOfLines = 0
        
        UIView.animate(withDuration: 0.5, animations: {
            label.sizeToFit()
        })   
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

