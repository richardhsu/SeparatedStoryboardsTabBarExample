//
//  SecondTabViewController.swift
//  SeparatedStoryboardsTabBarExample
//
//  Created by Richard Hsu on 5/10/15.
//  Copyright (c) 2015 Richard Hsu. All rights reserved.
//

import UIKit

class SecondTabViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Instantiate the separate storyboard for Second section and load it
        var storyboard = UIStoryboard(name: "Second", bundle: nil)
        var controller = storyboard.instantiateInitialViewController() as UIViewController
        addChildViewController(controller)
        view.addSubview(controller.view)
        controller.didMoveToParentViewController(self)
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