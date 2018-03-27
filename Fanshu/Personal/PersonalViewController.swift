//
//  PersonalViewController.swift
//  Fanshu
//
//  Created by Tao Xue on 26/03/2018.
//  Copyright © 2018 ThoughtWorks. All rights reserved.
//

import Foundation
import UIKit

class PersonalViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad();
        self.view.backgroundColor = UIColor.green
    }

    override func viewWillAppear(_ animated: Bool) {
        let arr = ArticleViewModel.articleData;
        print(arr)
    }

}

