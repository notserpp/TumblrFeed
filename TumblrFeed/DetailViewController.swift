//
//  DetailViewController.swift
//  TumblrFeed
//
//  Created by user143252 on 8/9/18.
//  Copyright © 2018 notserpp. All rights reserved.
//

import UIKit
import AlamofireImage


var refreshControl: UIRefreshControl!

class DetailViewController: UIViewController {
    
    var posts: [String: Any]?
    
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let photos = posts!["photos"] as? [[String: Any]] {
            let photo = photos[0]
            let originalSize = photo["original_size"] as! [String: Any]
            let urlString = originalSize["url"] as! String
            let url = URL(string: urlString)
            photoImageView.af_setImage(withURL: url!)
        }

        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
