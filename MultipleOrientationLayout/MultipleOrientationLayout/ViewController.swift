//
//  ViewController.swift
//  MultipleOrientationLayout
//
//  Created by Felipe on 11/13/18.
//  Copyright © 2018 Felipe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if UIDevice.current.orientation.isLandscape {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "LandscapeView") as! LandscapeViewController
            self.present(vc, animated: false, completion: nil)
        } else {
            dismiss(animated: true, completion: nil)
        }
    }


    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.current.orientation.isLandscape {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "LandscapeView") as! LandscapeViewController
            self.present(vc, animated: false, completion: nil)
        } else {
            dismiss(animated: true, completion: nil)
        }
    }
}

