//
//  RestaurantsListController.swift
//  FindYourRestaurant
//
//  Created by Kunal Poddar on 30/05/19.
//  Copyright © 2019 Kunal Poddar. All rights reserved.
//

import UIKit

class RestaurantsListController: UIViewController {

    @IBOutlet weak var restaurantListTableView: UITableView!
    
    var segments = ["VEG", "NON VEG"]
    
    var vegRestaurantName = [ "Crown", "Adda"]
    var vegRestaurantAddress = ["Kiit Square", "Shree Vihar"]
    
    var nonVegRestaurantName = ["99North", "Aangan Horizon"]
    var nonVegRestaurantAddress = ["Infocity", "Patia"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restaurantListTableView.delegate = self
        restaurantListTableView.dataSource = self

    }
}


extension RestaurantsListController:UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.segments.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return vegRestaurantName.count
        }
        else{
            return nonVegRestaurantName.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell:RestaurantDetailsTableCell = (restaurantListTableView.dequeueReusableCell(withIdentifier: "restaurantList") as? RestaurantDetailsTableCell)!
        if indexPath.section == 0 {
            cell.restaurantName.text = vegRestaurantName[indexPath.row]
            cell.restaurantAddress.text = vegRestaurantAddress[indexPath.row]

        }else if indexPath.section == 1{
            cell.restaurantName.text = nonVegRestaurantName[indexPath.row]
            cell.restaurantAddress.text = nonVegRestaurantAddress[indexPath.row]

        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return segments[section]
    }
    
    
}
