//
//  AddActivityDelegate.swift
//  ixBasic
//
//  Created by Miki von Ketelhodt on 2017/06/07.
//  Copyright © 2017 RBG Applications. All rights reserved.
//

import Foundation

protocol AddActivityDelegate {
    func didSaveActivity(activity: Activity)
    func willSaveActivity()
    func didCancel()
}
