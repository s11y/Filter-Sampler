//
//  ViewController.swift
//  Filter-Sampler
//
//  Created by ShinokiRyosei on 2016/08/23.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    @IBOutlet var imageView: UIImageView!
    
    var originalImage: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didSelectPickerBtn() {
        let imagePicker: UIImagePickerController = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        self.presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let image: UIImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            self.originalImage = image
        }
        imageView.image = originalImage
        picker.dismissViewControllerAnimated(true, completion: nil)
    }
}

