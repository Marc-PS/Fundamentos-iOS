//
//  ViewController.swift
//  Fundamentos1
//
//  Created by Marc Perelló Sapiña on 26/11/20.
//

import UIKit

class SplashViewController: UIViewController {
    private let SEGUE_TO_HOME = "SEGUE_FROM_SPLASH_TO_HOME"

    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.startAnimating()
        
        navigateNext()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.isNavigationBarHidden = false
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard segue.identifier == SEGUE_TO_HOME,
//            let destination = segue.destination as? HomeViewController else {
//            return
//        }
//
//    }
    
    private func navigateNext() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) { [weak self] in
//
//            if let segueIdentifier = self?.SEGUE_TO_HOME {
//                self?.performSegue(withIdentifier: segueIdentifier,
//                                   sender: nil)
//            }
//
//
            let storyboardHome = UIStoryboard(name: "Home", bundle: nil)

            if let destination = storyboardHome.instantiateInitialViewController() {
                self?.navigationController?.setViewControllers([destination],
                                                               animated: true)
            }
        }
    }
    

}

