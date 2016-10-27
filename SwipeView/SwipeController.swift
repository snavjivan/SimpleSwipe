//
//  SwipeController.swift
//  SwipeView
//
//  Created by Sarthak Navjivan on 10/26/16.
//  Copyright © 2016 Sarthak Navjivan. All rights reserved.
//

import UIKit

class SwipeController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //add the first swipe subview
        let swipeA = SwipeViewA(nibName: "SwipeViewA", bundle: nil)
        
        self.addChildViewController(swipeA)
        self.scrollView.addSubview(swipeA.view)
        swipeA.didMove(toParentViewController: self)
        
        //add the second swipe subview
        let swipeB = SwipeViewB(nibName: "SwipeViewB", bundle:nil)
        
        var frame1 = swipeB.view.frame
        frame1.origin.x = self.view.frame.size.width
        swipeB.view.frame = frame1
        
        self.addChildViewController(swipeB)
        self.scrollView.addSubview(swipeB.view)
        swipeB.didMove(toParentViewController: self)
        
        //add the third swipe subview
        let swipeC = SwipeViewC(nibName: "SwipeViewC", bundle:nil)
        
        var frame2 = swipeC.view.frame
        frame2.origin.x = self.view.frame.size.width * 2
        swipeC.view.frame = frame2
        
        self.addChildViewController(swipeC)
        self.scrollView.addSubview(swipeC.view)
        swipeC.didMove(toParentViewController: self)
        
        //set size of scrollView
        self.scrollView.contentSize = CGSize(width: self.view.frame.size.width * 3, height: self.view.frame.size.height);
        
        //scrollView properties
        scrollView.canCancelContentTouches = true
        scrollView.delaysContentTouches = false
        scrollView.isPagingEnabled = true
        scrollView.bounces = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
