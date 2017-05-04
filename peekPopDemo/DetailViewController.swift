//
//  DetailViewController.swift
//  peekPopDemo
//
//  Created by MAC238 on 5/4/17.
//  Copyright © 2017 tatvasoft. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var titleLbl: UILabel!
    var photo : Photo = Photo()
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: photo.imageName)
        titleLbl.text = photo.caption
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var previewActionItems : [UIPreviewActionItem] {
        
        let likeAction = UIPreviewAction(title: "Like", style: .default) { (action, viewController) -> Void in
            print("You liked the photo")
        }
        
        let deleteAction = UIPreviewAction(title: "Delete", style: .destructive) { (action, viewController) -> Void in
            print("You deleted the photo")
        }
        
        return [likeAction, deleteAction]
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
