//
//  GameViewController.swift
//  stattracker
//
//  Created by Ron Belmarch on 10/8/14.
//  Copyright (c) 2014 Belmerica. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var gameView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func onBackButton(sender: AnyObject) {
        self.navigationController.popToRootViewControllerAnimated(true)
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func onTap(sender: AnyObject) {
        
        UIView.animateWithDuration(1, delay: 0, options: nil, animations: { () -> Void in
            
            self.gameView.frame.origin.y += 62
            
            }, {(finished: Bool) -> Void in
                
        })
        
    }
    

}
