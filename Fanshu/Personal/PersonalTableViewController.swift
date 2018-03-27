//
//  PersonalViewController.swift
//  Fanshu
//
//  Created by Tao Xue on 26/03/2018.
//  Copyright © 2018 ThoughtWorks. All rights reserved.
//

import Foundation
import UIKit

class PersonalTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad();
    }

    override func viewWillAppear(_ animated: Bool) {
        let arr = ArticleViewModel.articleData;
        print(arr)
        self.tableView.reloadData()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArticleViewModel.articleData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        cell.textLabel?.text = ArticleViewModel.articleData[indexPath.row].title

        return cell
    }

}

