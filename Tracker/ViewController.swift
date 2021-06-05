//
//  ViewController.swift
//  Tracker
//
//  Created by Le Tong Minh Hieu on 6/6/21.
//

import UIKit
import AppTrackingTransparency

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.setTitle("Get permission", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc func didTapButton() {
        ATTrackingManager.requestTrackingAuthorization { (status) in
            switch status {
            case .notDetermined:
                break
            case .restricted:
                break
            case .denied:
                break
            case .authorized:
                print("Allowed")
                break
            @unknown default:
                break
            }
        }
    }


}

