//
//  OverlayViewController.swift
//  arApp
//
//  Created by José-María Súnico on 20160710.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import UIKit

class OverlayViewController: UIViewController {
	@IBOutlet weak var arLabel: UILabel!
	@IBAction func arButtonUp(sender: AnyObject) {
		self.arLabel.text = "UP"
	}
	@IBAction func arButtonDown(sender: AnyObject) {
		self.arLabel.text = "DOWN"
	}

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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
