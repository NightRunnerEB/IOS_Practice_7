//
//  News.swift
//  Aliases
//
//  Created by Евгений Бухарев on 15.12.2023.
//

import Foundation

// MARK: - Welcome
struct Welcome: Decodable {
    let news: [News]
}

// MARK: - News
struct News: Codable {
    let newsID, storyID, score: Int
    let img: Img
    let sourceName: String?
    let sourceLink: String
    let sourceIcon: String
    let date, title, announce, sectionName: String
    let timeOfReading: String
    let genreID, clusterCount: Int
    let isRead: Bool
    let objectStat: [ObjectStat]
    let isHotNews: Bool
    let newsType: Int
    let hidden: Bool

    enum CodingKeys: String, CodingKey {
        case newsID = "newsId"
        case storyID = "storyId"
        case score, img, sourceName, sourceLink, sourceIcon, date, title, announce, sectionName, timeOfReading
        case genreID = "genreId"
        case clusterCount, isRead, objectStat, isHotNews, newsType, hidden
    }
}

// MARK: - Img
struct Img: Codable {
    let isRemote: Bool
    let width, height, brightness: Int
    let url: String
}

// MARK: - ObjectStat
struct ObjectStat: Codable {
    let typeID, count: Int
    let name: String

    enum CodingKeys: String, CodingKey {
        case typeID = "typeId"
        case count, name
    }
}
