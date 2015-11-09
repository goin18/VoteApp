//
//  AdminVoteDisplayVC.swift
//  VoteApp
//
//  Created by Marko Budal on 08/11/15.
//  Copyright © 2015 Marko Budal. All rights reserved.
//

import UIKit
import Parse

class AdminVoteDisplayVC: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerALabel: UILabel!
    @IBOutlet weak var answerBLabel: UILabel!
    @IBOutlet weak var answerCLabel: UILabel!
    @IBOutlet weak var answerDLabel: UILabel!
    
    var vote:PFObject!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displaAnswers()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displaAnswers() {
        questionLabel.text = "\(vote[voteQuestion]) \nAnswers: \(vote[voteNumber]))"

        let numA = vote[voteNumberA] as! Int
        let numB = vote[voteNumberB] as! Int
        let numC = vote[voteNumberC] as! Int
        let numD = vote[voteNumberD] as! Int
        
        if numA > 0 {
            let resA =  numA * 100 / (vote[voteNumber] as! Int)
            answerALabel.text = "\(vote[voteAnswerA]) - \(resA)%"
        } else {
            answerALabel.text = "\(vote[voteAnswerA]) - 0%"
        }
        
        if numB > 0 {
            let resB = numB * 100 / (vote[voteNumber] as! Int)
            answerBLabel.text = "\(vote[voteAnswerB]) - \(resB)%"
        } else {
            answerBLabel.text = "\(vote[voteAnswerB]) - 0%"
        }
        
        if numC > 0 {
            let resC =  numC * 100 / (vote[voteNumber] as! Int)
            answerCLabel.text = "\(vote[voteAnswerC]) - \(resC)%"
        } else {
            answerCLabel.text = "\(vote[voteAnswerC]) - 0%"
        }
        
        if numD > 0 {
            let resD =  numD * 100 / (vote[voteNumber] as! Int)
            answerDLabel.text = "\(vote[voteAnswerD]) - \(resD)%"
        } else {
            answerDLabel.text = "\(vote[voteAnswerD]) - 0%"
        }
        
       
//
//        let resB = Int(vote[voteNumber]! as! NSNumber) / Int(vote[voteNumberB]! as! NSNumber)
//        answerALabel.text = "\(vote[voteAnswerB]) - \(resB)"
//        
//        let resC = Int(vote[voteNumber]! as! NSNumber) / Int(vote[voteNumberC]! as! NSNumber)
//        answerALabel.text = "\(vote[voteAnswerB]) - \(resC)"
//        
//        let resD = Int(vote[voteNumber]! as! NSNumber) / Int(vote[voteNumberD]! as! NSNumber)
//        answerALabel.text = "\(vote[voteAnswerB]) - \(resD)"
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
