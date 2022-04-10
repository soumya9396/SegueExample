//
//  ViewController.swift
//  SegueExample
//
//  Created by Soumitra Bera on 10/04/22.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    @IBAction func moveToSecondVC(_ sender: UIButton) {
        performSegue(withIdentifier: "moveToSecond", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToSecond"{
            if let destination = segue.destination as? SecondViewController {
                destination.dataSent = "Data sent from First view controller"
            }
        }
    }
    
}

