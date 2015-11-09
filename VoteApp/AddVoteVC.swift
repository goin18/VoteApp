//
//  AddVoteVC.swift
//  VoteApp
//
//  Created by Marko Budal on 07/11/15.
//  Copyright © 2015 Marko Budal. All rights reserved.
//

import UIKit
import Parse

class AddVoteVC: UIViewController {

    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerATF: UITextField!
    @IBOutlet weak var answerBTF: UITextField!
    @IBOutlet weak var answerCTF: UITextField!
    @IBOutlet weak var answerDTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func removeKeyButtonPress(sender: UIButton) {
        print("Resign first responder")
        answerATF.resignFirstResponder()
        answerBTF.resignFirstResponder()
        answerCTF.resignFirstResponder()
        answerDTF.resignFirstResponder()
    }
    
    @IBAction func saveVoteButtonPress(sender: AnyObject) {
        
        let vote = PFObject(className: "Vote")
        vote[voteQuestion] = questionTextField.text!
        
        vote[voteAnswerA] = answerATF.text!
        vote[voteAnswerB] = answerBTF.text!
        vote[voteAnswerC] = answerCTF.text!
        vote[voteAnswerD] = answerDTF.text!
        
        vote[voteNumber] = 0
        vote[voteNumberA] = 0
        vote[voteNumberB] = 0
        vote[voteNumberC] = 0
        vote[voteNumberD] = 0
        
        vote[voteDete] = NSDate()
        
        vote.saveInBackgroundWithBlock { (succeeded, error) -> Void in
            if let err = error {
                print("Error: \(err.description)")
            } else {
                if succeeded {
                    print("Save success")
                    self.dismissViewControllerAnimated(true, completion: nil)
                } else {
                    print("Save problem")
                    self.dismissViewControllerAnimated(true, completion: nil)
                }
            }
        }
        
    }
    
    @IBAction func cancelButtonPress(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}