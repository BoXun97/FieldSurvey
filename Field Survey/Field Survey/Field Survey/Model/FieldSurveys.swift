//
//  FieldSurveys.swift
//  Field Survey
//
//  Created by Boao Huang on 5/2/19.
//  Copyright © 2019 Boao Huang. All rights reserved.
//

import Foundation

enum Classification: String, Codable {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
}

struct FieldSurvey: Codable {
    var classification: Classification
    var title: String
    var description: String
    var date: Date
}

struct FieldSurveys: Codable{
    var status: String
    var observations: [FieldSurvey]
}
