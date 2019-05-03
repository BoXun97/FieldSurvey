//
//  FieldSurveyLoader.swift
//  Field Survey
//
//  Created by Boao Huang on 5/2/19.
//  Copyright © 2019 Boao Huang. All rights reserved.
//

import Foundation

class FieldSurveyLoader {
    
    class func load(jsonFileName: String) -> FieldSurveys? {
        var fieldSurveys: FieldSurveys?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            fieldSurveys = try? jsonDecoder.decode(FieldSurveys.self, from: jsonData)
        }
        
        return fieldSurveys
    }
}
