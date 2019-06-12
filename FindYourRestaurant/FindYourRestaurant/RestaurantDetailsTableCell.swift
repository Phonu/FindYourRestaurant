//
//  RestaurantDetailsTableCell.swift
//  FindYourRestaurant
//
//  Created by Kunal Poddar on 30/05/19.
//  Copyright © 2019 Kunal Poddar. All rights reserved.
//

import UIKit

class RestaurantDetailsTableCell: UITableViewCell {

    @IBOutlet weak var restaurantImage: UIImageView!
    @IBOutlet weak var restaurantName: UILabel!
    @IBOutlet weak var restaurantAddress: UILabel!
    @IBOutlet weak var restaurantLocation: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func pinLocationRestaurant(_ sender: Any) {
    }
}
