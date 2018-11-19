//
//  ViewController.swift
//  QuickActions
//
//  Created by Felipe on 11/13/18.
//  Copyright © 2018 Felipe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerPreviewingDelegate {
    @IBOutlet weak var imageView: UIImageView!
    
    public var shortcutType: String?;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if traitCollection.forceTouchCapability == UIForceTouchCapability.available {
            registerForPreviewing(with: self, sourceView: view)
        }
    }

    // Peek
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
        let peekVC = storyboard?.instantiateViewController(withIdentifier: "Details")
        show(peekVC!, sender: nil)
    }
    
    // Pop
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        let convertedLocation = view.convert(location, to: imageView)
        
        if imageView.bounds.contains(convertedLocation) {
            let popVC = storyboard?.instantiateViewController(withIdentifier: "Preview")
            //Set your height
            popVC?.preferredContentSize = CGSize(width: 0.0, height: 500)
            previewingContext.sourceRect = imageView.frame
            
            return popVC!
        }else{
            return nil
        }
    }
}

