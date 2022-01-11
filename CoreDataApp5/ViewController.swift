//
//  ViewController.swift
//  CoreDataApp5
//
//  Created by Eugene on 11.01.2022.
//

import UIKit
import CoreData

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
    
    func getDataFromFile(){
        //можно использовать метод дла получения определенный в классе
        //let fetchRequest: NSFetchRequest<Car> = Car.fetchRequest()
        //либо так
        let fetchRequest = NSFetchRequest<Car>(entityName: "Car")
        fetchRequest.predicate = NSPredicate(format: "mark != nil")
        
        var records = 0
        
        do {
            let count = try context.count(for: fetchRequest)
            records = count
            print("Data is there already")
        } catch  {
            print(error.localizedDescription)
        }
        
        //проверяем, были ли в БД уже какие-то объекты, если были то не загружаем данные
        guard records == 0 else {
            return
        }
        
        //определим файл с которого будем считывать данные. Bundle - это наш проект/расположение
        let pathToFile = Bundle.main.path(forResource: "data", ofType: "plist")
        //получаем содержимое этого вайла как массив
        let dataArray = NSArray(contentsOfFile: pathToFile!)
        
    }

    @IBAction func segmentedCntrlPressed(_ sender: Any) {
    }
    
    @IBAction func startEnginePressed(_ sender: Any) {
    }
    
    @IBAction func rateItPressed(_ sender: Any) {
    }
    
}

