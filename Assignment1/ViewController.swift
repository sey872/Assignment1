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
        debugPrint("test");
        debugPrint(test);
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

