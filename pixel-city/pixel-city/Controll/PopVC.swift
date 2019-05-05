//
//  PopVC.swift
//  pixel-city
//
//  Created by Molnár Csaba on 2019. 05. 05..
//  Copyright © 2019. Molnár Csaba. All rights reserved.
//

import UIKit
import Alamofire

class PopVC: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var popImageView: UIImageView!
    @IBOutlet weak var imageTitle: UILabel!
    
    @IBOutlet weak var imageDescLbl: UILabel!
    var passedImage: UIImage!
    var passedID = String()
    
    func initData(forImage image: UIImage, forImageID id: String){
        self.passedImage = image
        self.passedID = id
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        addDoubleTap()
        setupView()
    }
    
    func addDoubleTap(){
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped(){
        dismiss(animated: true, completion: nil)
    }
    
    func setupView(){
        Alamofire.request(flickrDescURL(forApikey: FLICKR_APIKEY, withImageID: passedID)).responseJSON { (response) in
            if response.result.error == nil {
                
                print(response)
                guard let json = response.result.value as? Dictionary<String, AnyObject> else {return}
                let photoDescFull = json["photo"] as! Dictionary<String, AnyObject>
                let photoTitle = photoDescFull["title"] as! Dictionary<String, AnyObject>
                let photoDesc = photoDescFull["description"] as! Dictionary<String, AnyObject>

                
                self.imageTitle.text = "\(photoTitle["_content"]!)"
                self.imageDescLbl.text = "\(photoDesc["_content"]!)"

            }
            else {
                debugPrint(response.result.error as? Any)
            }
        }
    }
    

}
