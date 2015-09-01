//
//  ViewController.swift
//  Children
//
//  Created by Matthew Yohe on 8/31/15.
//  Copyright © 2015 WillowTree. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var vc = MyVC()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64((2 * NSEC_PER_SEC))), dispatch_get_main_queue()) {
                self.doMagic()
            }
    }
    
    func doMagic() {
        
        vc.view.backgroundColor = UIColor.redColor()
        vc.view.frame = CGRectMake(0, 0, 300, 300)
        
        print("calling addChild")
        self.addChildViewController(vc)
        print("calling addSubview")
        self.view.addSubview(vc.view)
        print("calling didMove")
        vc.didMoveToParentViewController(self)
    }

}

class MyVC: UIViewController {
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func willMoveToParentViewController(parent: UIViewController?) {
        super.willMoveToParentViewController(parent)
        print("willMoveToParent")
    }
    
    override func didMoveToParentViewController(parent: UIViewController?) {
        super.didMoveToParentViewController(parent) // Commenting this doesn't seem to call didMove twice...
        print("didMoveToParent: \(parent)")
    }
}

