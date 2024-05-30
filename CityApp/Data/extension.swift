//
//  extension.swift
//  CityApp
//
//  Created by 심소영 on 5/29/24.
//

import UIKit

extension UILabel {
    
    func setNameLabel(){
        self.font = .boldSystemFont(ofSize: 18)
        self.textColor = .white
        self.textAlignment = .left
        self.numberOfLines = 1
        self.backgroundColor = .clear
    }
    
    func setSubLabel(){
        self.font = .systemFont(ofSize: 12, weight: .medium)
        self.textColor = .white
        self.textAlignment = .left
        self.numberOfLines = 1
        self.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        self.clipsToBounds = true
        self.layer.cornerRadius = 30
        self.layer.maskedCorners = CACornerMask(arrayLiteral: .layerMaxXMaxYCorner)
    }
}
