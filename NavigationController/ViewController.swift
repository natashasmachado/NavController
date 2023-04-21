//
//  ViewController.swift
//  NavigationController
//
//  Created by Natasha Machado on 2023-04-20.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let barBtn = UIBarButtonItem(systemItem: .done)
    navigationItem.rightBarButtonItem = barBtn
    barBtn.target = self
    barBtn.action = #selector(rightBarButtonTapped(_:))
  }
  
  @objc func rightBarButtonTapped(_ sender: UIBarButtonItem) {
    if let pageOne = navigationController?.viewControllers.first {
      navigationController?.popToViewController(pageOne, animated: true)
    }
  }
  
}

