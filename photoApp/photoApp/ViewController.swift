//
//  ViewController.swift
//  photoApp
//
//  Created by José-María Súnico on 20160710.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

	let imagePicker = UIImagePickerController()
	
	@IBOutlet weak var photoView: UIImageView!
	
	@IBOutlet weak var cameraButtonVisibility: UIButton!

	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		if !UIImagePickerController.isSourceTypeAvailable(.Camera){
			cameraButtonVisibility.hidden = true
		}
		imagePicker.delegate = self
		
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	@IBAction func cameraButton(sender: AnyObject) {
		imagePicker.sourceType = UIImagePickerControllerSourceType.Camera
		presentViewController(imagePicker, animated: true, completion: nil)
	}
	
	@IBAction func albumButton(sender: AnyObject) {
		imagePicker.sourceType = UIImagePickerControllerSourceType.SavedPhotosAlbum
		presentViewController(imagePicker, animated: true, completion: nil)
	}
	
	@IBAction func saveButton(sender: AnyObject) {
		UIImageWriteToSavedPhotosAlbum(photoView.image!, nil, nil, nil)
		let alert = UIAlertController(title: "Ready!", message: "Photo saved into album.", preferredStyle: .Alert)
		let okAction = UIAlertAction(title: "OK", style: .Default, handler: {action in // anything, if needed
		})
		alert.addAction(okAction)
		self.presentViewController(alert, animated: true, completion: nil)
	}
	
	func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
			photoView.image = image
			imagePicker.dismissViewControllerAnimated(true, completion: nil)
	}
		
	func imagePickerControllerDidCancel(picker: UIImagePickerController) {
		imagePicker.dismissViewControllerAnimated(true, completion: nil)
	}
	
	

}

