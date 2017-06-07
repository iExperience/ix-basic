//
//  AddActivityViewController.swift
//  ixBasic
//
//  Created by Miki von Ketelhodt on 2017/06/07.
//  Copyright © 2017 RBG Applications. All rights reserved.
//

import UIKit

class AddActivityViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var delegate: AddActivityDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save(_ sender: Any) {
        
        // Validate 
        if (nameTextField.text?.isEmpty)! {
            // Throw an error
            let defaultAction = UIAlertAction(title: "Close", style: .default, handler: nil)
            
            let alertController = UIAlertController(title: "Error", message: "Please enter some text", preferredStyle: .alert)
            
            //now we are adding the default action to our alertcontroller
            alertController.addAction(defaultAction)
            
            //and finally presenting our alert using this method
            self.present(alertController, animated: true, completion: nil)
        } else {
            
            // Save activity to a database or server...
            // Still to come!
            
            delegate?.willSaveActivity()
            
            let newActivity = Activity(name: nameTextField.text, description: descriptionTextView.text)
            
            //activityTableViewController?.activityWasSaved(activity: newActivity!)
            
            delegate?.didSaveActivity(activity: newActivity!)
            
            self.dismiss(animated: true, completion: nil)
        }
    }

    @IBAction func cancel(_ sender: Any) {
        delegate?.didCancel()
        self.dismiss(animated: true, completion: nil)
    }

}
