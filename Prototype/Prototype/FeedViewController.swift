//
//  FeedViewController.swift
//  Prototype
//
//  Created by Shibili Areekara on 27/03/22.
//

import UIKit

struct FeedImageViewModel {
    let date: String
    let location: String
    let temp: Double
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
        let date = model.date.getMonthAndDay()
        self.monthLabel.text = date.month
        self.dayLabel.text = date.day
        self.locationLabel.text = model.location
        self.tempLabel.text = String(Int(model.temp)) + "°"
        self.feedImageView.image = UIImage(named: model.imageName)
    }
}

private extension String {
    func getMonthAndDay() -> (month: String, day: String) {
        let date = getDate(from: self)
        let dateF1 = DateFormatter()
        dateF1.dateFormat = "MMM"
        let month = dateF1.string(from: date!)
        let dateF2 = DateFormatter()
        dateF2.dateFormat = "d"
        let day = dateF2.string(from: date!)
        
        return (month, day)
    }
    
    private func getDate(from string: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        return dateFormatter.date(from: string)
    }
    
}
