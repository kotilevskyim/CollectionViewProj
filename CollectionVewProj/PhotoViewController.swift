//
//  PhotoViewController.swift
//  CollectionVewProj
//
//  Created by Maksym on 13.01.2021.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var image: UIImage?
        = nil
    
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.image = image
        
    }
    
    @IBAction func shareButtonTapped(_ sender: Any) {
            let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Succes!!!")
            }
            
        }
            self.present(shareController, animated: true, completion: nil)
        
    }
    
    
    
}
