//
//  ViewController.swift
//  stattracker
//
//  Created by Ron Belmarch on 10/7/14.
//  Copyright (c) 2014 Belmerica. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var scoresView: UIView!
   
    @IBOutlet weak var updateView: UIView!
    
    
    @IBOutlet weak var scoreboardView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.updateView.alpha = 0
        self.scoreboardView.alpha = 1
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSingleTap(sender: AnyObject) {
        
        
        
        UIView.animateWithDuration(0.5, delay: 0, options: nil, animations: { () -> Void in
            self.updateView.alpha = 1
            self.scoreboardView.alpha = 0
            
            }, {(finished: Bool) -> Void in
                
        UIView.animateWithDuration(0.5, delay: 1.5, options: nil, animations: { () -> Void in
                
            self.updateView.alpha = 0
            self.scoreboardView.alpha = 1
            
            }, {(finished: Bool) -> Void in
                
                })
            
        })
        
    }
    
    
    @IBAction func onScoresButton(sender: AnyObject) {
        if scoresView.frame.origin.y > 350 {

            UIView.animateWithDuration(0.4, delay: 0, options: nil, animations: { () -> Void in
                self.scoresView.frame.origin.y = 20
                
            }, completion: nil)
        }
        
        
            
        else {
              UIView.animateWithDuration(0.4, delay: 0, options: nil, animations: { () -> Void in
           
                self.scoresView.frame.origin.y = 524
                        }, completion: nil)
            }
            
        }

}

