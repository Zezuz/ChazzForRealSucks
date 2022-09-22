//
//  ViewController.swift
//  ChazzForRealSucks
//
//  Created by Michael Zanaty on 8/29/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func areyouReadyclick(_ sender: UIButton) {
        let firstVC = self.storyboard?.instantiateViewController(withIdentifier: "FirstControllerVC") as! FirstController
                self.navigationController?.pushViewController(firstVC, animated: true)
    }
    
    @IBAction func noImTiredclick(_ sender: Any) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondControllerVC") as! SecondController
                self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
    //hide Topbar
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}

