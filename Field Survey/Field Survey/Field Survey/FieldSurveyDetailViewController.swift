//
//  FieldSurveyDetailViewController.swift
//  Field Survey
//
//  Created by Boao Huang on 5/2/19.
//  Copyright © 2019 Boao Huang. All rights reserved.
//

import UIKit

class FieldSurveyDetailViewController: UIViewController {

    let dateFormatter = DateFormatter()
    
    var fieldSurvey: FieldSurvey?
    
    @IBOutlet weak var classificationImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Observation"
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        if let fieldSurvey = fieldSurvey {
            titleLabel.text = fieldSurvey.title
            dateLabel.text = dateFormatter.string(from: fieldSurvey.date)
            classificationImageView.image = UIImage(named: fieldSurvey.classification.rawValue)
            descriptionTextView.text = fieldSurvey.description
        }
        // Do any additional setup after loading the view.
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
