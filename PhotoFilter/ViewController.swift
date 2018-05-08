//
//  ViewController.swift
//  PhotoFilter
//
//  Created by Sierra on 5/8/18.
//  Copyright © 2018 Nagiz. All rights reserved.
// ATTENTION : "this works only on Swift 3"

import UIKit
import Sharaku

class ViewController: UIViewController , SHViewControllerDelegate {

    
    @IBOutlet weak var photoview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

   
    @IBAction func openFilter(_ sender: Any) {
        let imageToBeFiltered = UIImage(named: "natural.jpg")
        let vc = SHViewController(image: imageToBeFiltered)
        vc.delegate = self
        self.present(vc, animated:true, completion: nil)
    }
    
    func shViewControllerImageDidFilter(image: UIImage) {
        // Filtered image will be returned here.
        
        photoview.image = image
    }
    
    func shViewControllerDidCancel() {
        // This will be called when you cancel filtering the image.
        photoview.image = UIImage(named: "natural.jpg")
    }
    

}

