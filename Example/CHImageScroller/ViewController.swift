//
//  ViewController.swift
//  CHImageScroller
//
//  Created by Connor Hailey on 08/15/2015.
//  Copyright (c) 2015 Connor Hailey. All rights reserved.
//

import UIKit
import CHImageScroller

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.setupImageView()
    }
    
    func setupImageView(){
        let imageView = UIImageView(frame: CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height))
        imageView.userInteractionEnabled = true
        imageView.contentMode = UIViewContentMode.ScaleAspectFit
        imageView.image = UIImage(named: "barca")
        self.view.addSubview(imageView)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: "showCHImageScroller")
        tapGesture.numberOfTapsRequired = 1
        imageView.addGestureRecognizer(tapGesture)
    }
    
    func showCHImageScroller(){
        let images = NSArray(objects: UIImage(named: "barca")!, UIImage(named: "bayern")!, UIImage(named: "united")!)

        let imageScroller = CHImageScroller(images: images, startingIndex: 0, frame: CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height))
        
        self.view.addSubview(imageScroller)
        imageScroller.presentImagePreview()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

