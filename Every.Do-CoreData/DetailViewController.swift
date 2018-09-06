//
//  DetailViewController.swift
//  Every.Do-CoreData
//
//  Created by Kit Clark-O'Neil on 2018-09-05.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {


    @IBOutlet weak var TitleLabel: UITextField!
    @IBOutlet weak var PriorityLabel: UITextField!
    @IBOutlet weak var DetailLabel: UITextView!
    


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let detailLabel = DetailLabel {
                detailLabel.text = detail.todoDescription ?? "Add Description"
            }
            if let titleLabel = TitleLabel {
                titleLabel.text = detail.title ?? "Add Title"
            }
            if let priorityLabel = PriorityLabel {
                let
                priorityLabelText = "Priority - \(detail.priorityNumber)"
                priorityLabel.text = priorityLabelText
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: ToDo? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

