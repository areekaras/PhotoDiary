//
//  FeedImageViewModel+PrototypData.swift
//  Prototype
//
//  Created by Shibili Areekara on 27/03/22.
//

import Foundation

extension FeedImageViewModel {
    static var prototypeFeed: [FeedImageViewModel] {
        return [
            FeedImageViewModel(
                date: "27-03-2022",
                location: "Perinthalmanna, KL",
                temp: 25,
                imageName: "image-1"
            ),
            FeedImageViewModel(
                date: "28-03-2022",
                location: "Kedarkantha, UK",
                temp: -5,
                imageName: "image-2"
            ),
            FeedImageViewModel(
                date: "29-03-2022",
                location: "Kochi, KL",
                temp: 28,
                imageName: "image-3"
            ),
            FeedImageViewModel(
                date: "30-03-2022",
                location: "New Delhi, DL",
                temp: 9,
                imageName: "image-4"
            ),
            FeedImageViewModel(
                date: "31-03-2022",
                location: "New Delhi, DL",
                temp: 9,
                imageName: "image-5"
            ),
            FeedImageViewModel(
                date: "01-04-2022",
                location: "New Delhi, DL",
                temp: 8,
                imageName: "image-6"
            ),
            FeedImageViewModel(
                date: "02-04-2022",
                location: "Kedarkantha, UK",
                temp: -4,
                imageName: "image-7"
            ),
            FeedImageViewModel(
                date: "03-04-2022",
                location: "Kedarkantha, UK",
                temp: -7,
                imageName: "image-8"
            ),
            FeedImageViewModel(
                date: "04-04-2022",
                location: "Kedarkantha, UK",
                temp: -1,
                imageName: "image-9"
            ),
        ]
    }
}
