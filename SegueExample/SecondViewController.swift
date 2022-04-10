//
//  SecondViewController.swift
//  SegueExample
//
//  Created by Soumitra Bera on 10/04/22.
//

import UIKit

class SecondViewController: UIViewController {
    var dataSent: String = "Not set"
    override func viewDidLoad() {
        super.viewDidLoad()
        debugPrint(dataSent)
    }
    @IBAction func moveToThridVC(_ sender: UIButton) {
        performSegue(withIdentifier: "moveToThird", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToThird" {
            if let destination = segue.destination as? ThirdViewController {
                destination.dataSent = "Welcome to Third Viewcontroller"
            }
        }
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
