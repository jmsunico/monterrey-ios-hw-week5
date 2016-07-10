//
//  ViewController.swift
//  arApp
//
//  Created by José-María Súnico on 20160710.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
	
	let arOverlay = OverlayViewController(nibName: "OverlayViewController", bundle: nil)

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func viewDidAppear(animated: Bool) {
		super.viewDidAppear(animated)
		let imagePicker = UIImagePickerController()
		if (UIImagePickerController.isSourceTypeAvailable(.Camera)){
			imagePicker.delegate = self
			imagePicker.sourceType = UIImagePickerControllerSourceType.Camera
			imagePicker.showsCameraControls = false
			imagePicker.cameraOverlayView = arOverlay.view
			self.presentViewController(imagePicker, animated: true, completion: nil)
		}
		
	}
		
		
		
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

