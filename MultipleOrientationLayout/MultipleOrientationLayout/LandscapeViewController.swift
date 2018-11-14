//
//  LandscapeViewController.swift
//  BCard
//
//  Created by Felipe on 11/14/18.
//  Copyright © 2018 Felipe. All rights reserved.
//

import UIKit

class LandscapeViewController: UIViewController {
    @IBOutlet weak var movieInfo: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        movieInfo.setContentOffset(.zero, animated: false)
    }
}
