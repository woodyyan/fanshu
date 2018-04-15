//
//  SecondViewController.swift
//  Fanshu
//
//  Created by Songbai Yan on 16/03/2018.
//  Copyright © 2018 ThoughtWorks. All rights reserved.
//

import UIKit

class DiscoveryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let recomendViewController = self.storyboard?.instantiateViewController(withIdentifier: "recommend")
        let issuesViewController = self.storyboard?.instantiateViewController(withIdentifier: "issues")
        let specialViewController = self.storyboard?.instantiateViewController(withIdentifier: "special")
        
        self.view.addSubview((recomendViewController?.view)!)
        self.view.addSubview((issuesViewController?.view)!)
        self.view.addSubview((specialViewController?.view)!)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

