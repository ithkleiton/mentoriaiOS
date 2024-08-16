//
//  ViewController.swift
//  MentoriaiOS
//
//  Created by Kleiton Silva Matos on 18/07/24.
//

import UIKit

final class ViewController: UIViewController {
    
    var customView: CustomView!
    
    override func loadView() {
        customView = CustomView()
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.actionButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    @objc func buttonPressed() {
        print("O botão foi apertado")
        showFireworks(at: customView.actionButton.center)
    }
    
    func showFireworks(at position: CGPoint) {
        let emitterLayer = CAEmitterLayer()
        emitterLayer.emitterPosition = position
        emitterLayer.emitterShape = .point
        emitterLayer.emitterSize = CGSize(width: 50, height: 50)
        
        let emitterCell = CAEmitterCell()
        emitterCell.birthRate = 1000
        emitterCell.lifetime = 1.0
        emitterCell.velocity = 100
        emitterCell.velocityRange = 50
        emitterCell.emissionRange = .pi * 2
        emitterCell.scale = 0.05
        emitterCell.scaleRange = 0.02
        emitterCell.color = UIColor.red.cgColor
        emitterCell.contents = UIImage(named: "spark")?.cgImage
        
        emitterLayer.emitterCells = [emitterCell]
        
        view.layer.addSublayer(emitterLayer)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            emitterLayer.birthRate = 0
            emitterLayer.removeFromSuperlayer()
        }
    }
}
