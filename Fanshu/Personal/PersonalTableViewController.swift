//
//  PersonalViewController.swift
//  Fanshu
//
//  Created by Tao Xue on 26/03/2018.
//  Copyright © 2018 ThoughtWorks. All rights reserved.
//

import Foundation
import UIKit

struct PersonalData {
    var icon: String
    var title: String
    var number: Int?
    var nightMode: Bool = false

    init(icon: String, title: String, number: Int?) {
        self.icon = icon
        self.title = title
        self.number = number
    }

    init(icon: String, title: String, number: Int?, nightMode: Bool) {
        self.icon = icon
        self.title = title
        self.number = number
        self.nightMode = nightMode
    }
}

class PersonalViewModel {
    static var personalDatas:[[PersonalData]] = [[]]
}

class PersonalTableViewController: UITableViewController {
    @IBOutlet weak var integralButton: UIButton!

    @IBOutlet weak var integralStoreButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad();
        setupUI(button: integralButton)
        setupUI(button: integralStoreButton)
        setupUIData()
    }

    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return PersonalViewModel.personalDatas.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PersonalViewModel.personalDatas[section].count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:PersonalTableviewCell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath) as! PersonalTableviewCell

        cell.initCell(personalData: PersonalViewModel.personalDatas[indexPath.section][indexPath.row])
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }

    func setupUI(button: UIButton) {
        button.layer.cornerRadius = 3.0
        button.layer.masksToBounds = true
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor.init(red: 1.0, green: 0.478, blue: 0.435, alpha: 1.0).cgColor
    }

    func setupUIData()  {
        var section1:[PersonalData] = []
        section1.append(PersonalData(icon: "", title: "私密文章", number: 1))
        section1.append(PersonalData(icon: "", title: "收藏的文章", number: 3))
        section1.append(PersonalData(icon: "", title: "喜欢的文章", number: 10))
        section1.append(PersonalData(icon: "", title: "已购内容", number: nil))

        var section2:[PersonalData] = []
        section2.append(PersonalData(icon: "", title: "我的专题", number: 11))
        section2.append(PersonalData(icon: "", title: "我的文集", number: 0))
        section2.append(PersonalData(icon: "", title: "关注的专题", number: 100))
        section2.append(PersonalData(icon: "", title: "我的钱包", number: nil))

        var section3:[PersonalData] = []
        section3.append(PersonalData(icon: "", title: "夜间模式", number: nil, nightMode: true))
        section3.append(PersonalData(icon: "", title: "浏览记录", number: nil))

        var section4:[PersonalData] = []
        section4.append(PersonalData(icon: "", title: "分享繁书", number: nil))
        section4.append(PersonalData(icon: "", title: "帮助与反馈", number: nil))
        section4.append(PersonalData(icon: "", title: "给繁书好评", number: nil))

        PersonalViewModel.personalDatas.append(section1)
        PersonalViewModel.personalDatas.append(section2)
        PersonalViewModel.personalDatas.append(section3)
        PersonalViewModel.personalDatas.append(section4)
    }

}

