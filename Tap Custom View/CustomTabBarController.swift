//
//  CustomTabBarController.swift
//  Tap Custom View
//
//  Created by Ovais Panjwani on 2/1/19.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    let footer = CustomView.nibInstance()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if !self.footer.isDescendant(of: self.view) {
            self.view.superview!.addSubview(self.footer)
            self.footer.translatesAutoresizingMaskIntoConstraints = false
            self.footer.frame.size.width = self.view.frame.width
            self.footer.leadingAnchor.constraint(equalTo: self.footer.superview!.leadingAnchor, constant: 0)
            NSLayoutConstraint.activate([self.footer.leadingAnchor.constraint(equalTo: self.footer.superview!.leadingAnchor, constant: 0), self.footer.trailingAnchor.constraint(equalTo: self.footer.superview!.trailingAnchor, constant: 0)])
            NSLayoutConstraint.activate([self.footer.bottomAnchor.constraint(equalTo: self.tabBar.topAnchor, constant: 0)])
        }
    }


}

