//
//  ViewController.swift
//  CoreDataApp5
//
//  Created by Eugene on 11.01.2022.
//

import UIKit

class ViewController: UIViewController {

    lazy var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    let carNameArray = ["Lamborgini","Ferrari","Mersedes","Nissan","BMW",]
    
    @IBOutlet weak var markLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var lastTimeStartedLabel: UILabel!
    @IBOutlet weak var numberofTripsLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createSegmentedControl()
    }
    
    func createSegmentedControl(){
        segmentedControl.removeAllSegments()
        segmentedControl.selectedSegmentTintColor = .green
        var count = 0
        for carName in carNameArray{
            segmentedControl.insertSegment(withTitle: carName, at: count, animated: true)
            
            count += 1
        }
        
    }

    @IBAction func segmentedCntrlPressed(_ sender: Any) {
    }
    
    @IBAction func startEnginePressed(_ sender: Any) {
    }
    
    @IBAction func rateItPressed(_ sender: Any) {
    }
    
}

