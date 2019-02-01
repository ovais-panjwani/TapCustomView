//
//  CustomView.swift
//  Tap Custom View
//
//  Created by Ovais Panjwani on 2/1/19.
//

import UIKit

class CustomView: UIView {
    
    @IBOutlet var footer: UIView!
    @IBOutlet var actionButton: UIButton!
    
    var rootViewController: CustomTabBarController!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    static func nibInstance() -> CustomView {
        let nibView = Bundle.main.loadNibNamed(String(describing:(self)), owner: nil, options: nil)?.first as! CustomView
        return nibView
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        actionButton.addTarget(self, action: #selector(customViewTapped), for: .touchUpInside)
    }
    
    @objc func customViewTapped() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "CustomViewTappedVC")
        rootViewController.navigationController?.pushViewController(viewController, animated: true)
    }
    
}
