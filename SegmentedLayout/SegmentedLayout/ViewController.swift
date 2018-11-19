//
//  ViewController.swift
//  QuickActions
//
//  Created by Felipe on 11/13/18.
//  Copyright © 2018 Felipe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var container: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        segmentedControl.layer.cornerRadius = 4.0
        segmentedControl.clipsToBounds = true
        segmentedControl.layer.borderWidth = 0.2
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let view = self.storyboard?.instantiateViewController(withIdentifier: "Cover").view
        
        replaceContainer(view: view!)
    }
    
    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        var viewIdentifier: String;
        
        if !container.subviews.isEmpty {
            container.subviews.first?.removeFromSuperview()
        }
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            viewIdentifier = "Cover";
            break
        case 1:
            viewIdentifier = "Text";
            break
        case 2:
            viewIdentifier = "Details";
            break
        default:
            viewIdentifier = "";
        }
        
        let view = self.storyboard?.instantiateViewController(withIdentifier: viewIdentifier).view
        
        replaceContainer(view: view!)
    }
    
    private func replaceContainer(view: UIView) {
        view.frame = CGRect(x: 0, y: 0, width: self.container.frame.size.width, height: self.container.frame.size.height)
        
        container.addSubview(view)
    }
}

