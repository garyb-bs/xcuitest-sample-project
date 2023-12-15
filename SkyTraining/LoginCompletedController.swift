//
//  TextEditor.swift
//  Sample iOS
//
//  Created by Lalit on 24/01/18.
//  Copyright © 2018 BrowserStack. All rights reserved.
//

import UIKit

class LoginCompletedController: UIViewController, UITextFieldDelegate {
    
    var username: String = ""
    var password: String = ""
    
    @IBOutlet weak var LoginLabel: UILabel!
    @IBOutlet weak var LoginImage: UIImageView!
    @IBOutlet weak var GoBackButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let view = UIView()
//        view.backgroundColor = .white
        
        let ahahImage = UIImage(named: "AhAhAh.png")
        let welcomeImage = UIImage(named: "WelcomeJP.png")
        
//        let myImageView:UIImageView = UIImageView()
//        myImageView.contentMode = UIView.ContentMode.scaleAspectFit
//        myImageView.frame.size.width = 300
//        myImageView.frame.size.height = 500
//        myImageView.center = self.view.center
        
        if (username == "correct" && password == "please") {
            LoginImage.image = welcomeImage
            LoginLabel.text! = "You have logged in successfully"
        }
        else {
            LoginImage.image = ahahImage
            LoginLabel.text! = "You have entered incorrect credentials"
        }
//        view.addSubview(myImageView)
        
//        self.view = view
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil);
    }
    
}
