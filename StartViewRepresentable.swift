//
//  StartViewRepresentable.swift
//  MentoriaiOS
//
//  Created by Kleiton Silva Matos on 18/07/24.
//

import SwiftUI

struct StartViewRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = UINavigationController

    func makeUIViewController(context: Context) -> UINavigationController {
        let navigationController = UINavigationController()
        let coordinator = AppCoordinator(rootViewController: navigationController)
        coordinator.start()
        return navigationController
    }

    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
    }
}
