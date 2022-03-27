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
                month: "Mar",
                day: "27",
                location: "Perinthalmanna, KL",
                temp: "25°",
                imageName: "image-1"
            ),
            FeedImageViewModel(
                month: "Mar",
                day: "28",
                location: "Kedarkantha, UK",
                temp: "-5°",
                imageName: "image-2"
            ),
            FeedImageViewModel(
                month: "Mar",
                day: "29",
                location: "Kochi, KL",
                temp: "28°",
                imageName: "image-3"
            ),
            FeedImageViewModel(
                month: "Mar",
                day: "30",
                location: "New Delhi, DL",
                temp: "9°",
                imageName: "image-4"
            ),
            FeedImageViewModel(
                month: "Mar",
                day: "31",
                location: "New Delhi, DL",
                temp: "9°",
                imageName: "image-5"
            ),
            FeedImageViewModel(
                month: "Apr",
                day: "1",
                location: "New Delhi, DL",
                temp: "8°",
                imageName: "image-6"
            ),
            FeedImageViewModel(
                month: "Apr",
                day: "2",
                location: "Kedarkantha, UK",
                temp: "-4°",
                imageName: "image-7"
            ),
            FeedImageViewModel(
                month: "Apr",
                day: "3",
                location: "Kedarkantha, UK",
                temp: "-7°",
                imageName: "image-8"
            ),
            FeedImageViewModel(
                month: "Apr",
                day: "4",
                location: "Kedarkantha, UK",
                temp: "-1°",
                imageName: "image-9"
            ),
        ]
    }
}
