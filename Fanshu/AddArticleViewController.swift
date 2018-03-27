//
//  AddArticleViewController.swift
//  Fanshu
//
//  Created by Tao Xue on 26/03/2018.
//  Copyright © 2018 ThoughtWorks. All rights reserved.
//

import Foundation
import UIKit

class AddArticleViewController: UIViewController {

    @IBOutlet weak var publishBtn: UIBarButtonItem!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextView: UITextView!


    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.brown
    }


    @IBAction func publish(_ sender: Any) {
        ArticleViewModel.articleData.append(Article(title: titleTextField.text!, content: contentTextView.text))
        let alert = UIAlertController(title: "恭喜", message: "添加文章成功！！", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            self.navigationController?.popViewController(animated: true)
        }))

        self.present(alert, animated: false)
    }

}
