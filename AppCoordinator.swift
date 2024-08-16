//
//  AppCoordinator.swift
//  MentoriaiOS
//
//  Created by Kleiton Silva Matos on 18/07/24.
//

import UIKit

final class AppCoordinator {
    private let rootViewController: UINavigationController
    
    init(rootViewController: UINavigationController) {
        self.rootViewController = rootViewController
    }
    
    func start() {
        let controller = ViewController()
        rootViewController.pushViewController(controller, animated: false)
    }
}
