//
//  ViewController.swift
//  firebaseAnalytics
//
//  Created by Venugopal Devarala on 21/05/17.
//  Copyright © 2017 Jeff.Inc. All rights reserved.
//

import UIKit
import FirebasePerformance

class ViewController: UIViewController {
    
    @IBOutlet var imageView : UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let trace = Performance.startTrace(name: "trace")
        
        do {
            
            if let url = URL(string: "http://graywolfseo.com/wp-content/uploads/choosing-urls.jpg"){
                let image = try Data(contentsOf: url)
                self.imageView.image = UIImage(data: image)
            }
            
            
        } catch  {
            print( "\n\n\n Error ::: ",   error.localizedDescription)
            trace?.incrementCounter(named: "Error")
        }
        
        trace?.stop()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

