//
//  CityTableViewCell.swift
//  CityApp
//
//  Created by 심소영 on 5/29/24.
//

import UIKit

class CityTableViewCell: UITableViewCell {

    @IBOutlet var cityImage: UIImageView!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var subLabel: UILabel!
    
    static let identifier = "CityTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureLabel()
    }
    
    func configureLabel(){
        cityLabel.setNameLabel()
        subLabel.setSubLabel()
    }

    func setData(data: City){
        let url = URL(string: data.city_image)
        cityImage.kf.setImage(with: url)
        cityImage.contentMode = .scaleToFill
        cityImage.clipsToBounds = true
        cityImage.layer.cornerRadius = 30
        cityImage.layer.maskedCorners = CACornerMask(arrayLiteral: .layerMinXMinYCorner, .layerMaxXMaxYCorner)
        cityLabel.text = data.cityName
        subLabel.text = data.city_explain
    }
}
