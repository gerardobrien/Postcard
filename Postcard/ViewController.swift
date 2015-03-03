//
//  ViewController.swift
//  Postcard
//
//  Created by Gerard O'Brien on 2/03/2015.
//  Copyright (c) 2015 GERARDOBRIEN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //declare what each thing is called in the view
    
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var MessageLabel: UILabel!
    @IBOutlet weak var EnterNameTextField: UITextField!
    @IBOutlet weak var EnterMessageTextField: UITextField!
    @IBOutlet weak var MailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // code what happens when i push the button
    
    // 1. we want the hiddel label th show up
    // 2. we want populate the hidden label with the information the from the EnterMessageBox
    // 3. We want the text in red so we can easily see it
    // 4. once we press the button we want the text that was in the message box to dissapear so we get write something different if we like
    // 5. once we have pressed the button we want the keyboard to dissapear
    // 6. once we click the button we want the text to say mail sent to confirm something has happened to the user
    
    
    //challenge tasks
    
    // 7. unhilde namelabel
    // 8. put text from name box in namelabel
    // 9. make text blue
    // 10. clear name box
   
    // first we add the button
    @IBAction func SendMessageButton(sender: UIButton) {
        
        // 1.
        MessageLabel.hidden = false
        
        // 2.
        MessageLabel.text = EnterMessageTextField.text
        
        // 3.
        MessageLabel.textColor = UIColor.redColor()
        
        // 4.
        EnterMessageTextField.text = ""
        
        // 5.
        EnterMessageTextField.resignFirstResponder()
        
        // 6.
        MailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        // 7.
        NameLabel.hidden = false
        
        // 8.
        NameLabel.text = EnterNameTextField.text
        
        //9 .
        NameLabel.textColor = UIColor.blueColor()
        
        //10.
        
        EnterNameTextField.text = ""
        
        
        
        
    }
    
    // another button that simply clears the name and message boxes
    @IBAction func ClearFieldsButton(sender: UIButton) {
        
        EnterNameTextField.text = ""
        EnterMessageTextField.text = ""
    }
    @IBAction func ClearLabels(sender: UIButton) {
        
        NameLabel.text = ""
        MessageLabel.text = ""
    }
    
}

