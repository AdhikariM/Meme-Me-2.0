//
//  MemeDetailViewController.swift
//  MemeMe 2.0


import Foundation
import UIKit


class MemeDetailViewController: UIViewController {
    
    @IBOutlet weak var memedImage: UIImageView!
    
    var meme: MemeMe!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Check if the meme object is not nil before accessing its properties
        if let memeImage = meme?.memeImage {
            self.memedImage.image = memeImage
        }
        
        // title for the navigation bar
        self.title = "Meme Detail"
        self.tabBarController?.tabBar.isHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Hide the tab bar when leaving the detail view
        self.tabBarController?.tabBar.isHidden = true
    }
}
