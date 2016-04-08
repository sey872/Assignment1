//
//  ViewController.swift
//  Assignment1
//
//  Created by Scott Edward Young on 5/04/2016.
//  Copyright © 2016 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		
		
        let test : GameModel
		var myimages : [UIImage]
		 print("before")
		myimages =
			[UIImage(named: "Images/baldhill.png")!,
			UIImage(named: "Images/cathedral.png")!,
			UIImage(named: "Images/lake.png")!
		]
		
        test = GameModel(numTiles: 10, images: myimages);
        print("running")
        // Do any additional setup after loading the view, typically from a nib.
		
		var counter : Int
		counter = 0
		for y in 60.stride(to:400, by:100)
		{
			for x in 20.stride(to:280, by:100)
			{
				print("x: \(x)")
				print("y: \(y)")
				counter += 1
				
				let imageName = "Images/question.png"
				let image = UIImage(named: imageName)
				let imageView = UIImageView(image: image!)
				imageView.tag = counter
				imageView.frame = CGRect(x: CGFloat(x), y: CGFloat(y), width: CGFloat(80), height: CGFloat(80))
				view.addSubview(imageView)
				/*
				let DynamicView=UIView(frame: CGRectMake(CGFloat(x), CGFloat(y), CGFloat(80), CGFloat(80)))
				if(y%80 == 0)
				{
					DynamicView.backgroundColor=UIColor.redColor()
				}
				else
				{
					DynamicView.backgroundColor=UIColor.greenColor()
				}
				DynamicView.layer.borderWidth=1
				self.view.addSubview(DynamicView)*/
			}
		}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

