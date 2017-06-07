//
//  ActivityDetailViewController.swift
//  ixBasic
//
//  Created by Miki von Ketelhodt on 2017/06/07.
//  Copyright © 2017 RBG Applications. All rights reserved.
//

import UIKit

class ActivityDetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var activity: Activity?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameLabel.text = activity?.name
        descriptionLabel.text = activity?.description
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
