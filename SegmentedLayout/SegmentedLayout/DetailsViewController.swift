//
//  DetailsViewController.swift
//  QuickActions
//
//  Created by Felipe on 11/19/18.
//  Copyright © 2018 Felipe. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidAppear(_ animated: Bool) {
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(200)) {
            self.textView.scrollRangeToVisible(NSRange(location: 0, length: 0))
        }
    }
}
