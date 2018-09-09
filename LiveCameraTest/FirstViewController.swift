//
//  FirstViewController.swift
//  LiveCameraTest
//
//  Created by Noemi Madrid on 9/8/18.
//  Copyright © 2018 Noemi Madrid. All rights reserved.
//

import UIKit




class FirstViewController: UIViewController{
    
    @IBOutlet weak var myImageView: UIImageView!

   
    
    @IBOutlet weak var imageView: UIImageView!
    
    let pickerController = UIImagePickerController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 
    
    
    
}
extension FirstViewController : UIImagePickerControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]){
        
        picker.dismiss(animated: true, completion: nil)
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        
       
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
         print("The Camera Has Been Closed")
    }
    
}

extension FirstViewController : UINavigationControllerDelegate{
    

    
}


