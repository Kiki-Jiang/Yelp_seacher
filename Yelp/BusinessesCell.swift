//
//  BusinessCell.swift
//  Yelp
//
//  Created by 蒋逍琦 on 2/20/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessesCell: UITableViewCell {
    @IBOutlet weak var thumbView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var reviewCountLabel: UILabel!
    @IBOutlet weak var ratingView: UIImageView!
    @IBOutlet weak var distanceView: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    var business: Business! {
        didSet {
            thumbView.setImageWith(business.imageURL!)
            nameLabel.text =  business.name
            reviewCountLabel.text = "\(business.reviewCount)"
            ratingView.setImageWith(business.ratingImageURL!)
            distanceView.text = business.distance
            addressLabel.text = business.address
            categoryLabel.text = business.categories
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        thumbView.layer.cornerRadius = 3
        thumbView.clipsToBounds = true
        
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
