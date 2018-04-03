//
//  Article.swift
//  Fanshu
//
//  Created by Tao Xue on 27/03/2018.
//  Copyright © 2018 ThoughtWorks. All rights reserved.
//

import Foundation

struct Article {
    var title: String?
    var content: String?
    init(title: String, content: String) {
        self.title = title
        self.content = content
    }
}
