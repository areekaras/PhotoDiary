//
//  FeedImageCell.swift
//  Prototype
//
//  Created by Shibili Areekara on 27/03/22.
//

import UIKit

class FeedImageCell: UITableViewCell {
    @IBOutlet private(set) var monthLabel: UILabel!
    @IBOutlet private(set) var dayLabel: UILabel!
    @IBOutlet private(set) var locationLabel: UILabel!
    @IBOutlet private(set) var tempLabel: UILabel!
    @IBOutlet private(set) var feedImageView: UIImageView!
    
    @IBOutlet private(set) var dateBGView: UIView!
    @IBOutlet private(set) var locationTempBGView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        dateBGView.setDiagonalBackground()
        locationTempBGView.setHorizontalBackground()
    }
}


private extension UIView {

    func setDiagonalBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        let black = UIColor.black
        gradientLayer.colors = [
            black.cgColor,
            UIColor.clear.cgColor
        ]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.5)
        gradientLayer.locations = [0.0, 1.0]
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func setHorizontalBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        let black = UIColor.black
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            black.cgColor
        ]
        gradientLayer.startPoint = CGPoint(x: 0.2, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.2, y: 1.0)
        gradientLayer.locations = [0.0, 1.0]
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
}


