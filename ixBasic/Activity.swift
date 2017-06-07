//
//  Activity.swift
//  ixBasic
//
//  Created by Miki von Ketelhodt on 2017/06/07.
//  Copyright © 2017 RBG Applications. All rights reserved.
//

import Foundation

class Activity {
    
    var name: String?
    var description: String?
    
    init?(name: String?, description: String?) {
        self.name = name
        self.description = description
    }
    
}
