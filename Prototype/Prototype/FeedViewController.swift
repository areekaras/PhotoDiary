//
//  FeedViewController.swift
//  Prototype
//
//  Created by Shibili Areekara on 27/03/22.
//

import UIKit

struct FeedImageViewModel {
    let month: String
    let day: String
    let location: String
    let temp: String
    let imageName: String
}

class FeedViewController: UITableViewController {

    private let feed = FeedImageViewModel.prototypeFeed
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feed.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "FeedImageCell", for: indexPath) as! FeedImageCell
        let model = feed[indexPath.row]
        cell.configure(with: model)
        return cell
    }
    
}


extension FeedImageCell {
    func configure(with model: FeedImageViewModel) {
        self.monthLabel.text = model.month
        self.dayLabel.text = model.day
        self.locationLabel.text = model.location
        self.tempLabel.text = model.temp
        self.feedImageView.image = UIImage(named: model.imageName)
    }
}
