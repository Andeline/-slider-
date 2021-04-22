//
//  ViewController.swift
//  與UFO最好的距離
//
//  Created by 蔡佳穎 on 2021/4/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var alien: UIImageView!
    @IBOutlet weak var astronaut: UIImageView!
    @IBOutlet weak var satellite: UIImageView!
    @IBOutlet var earth: UIView!
    @IBOutlet weak var asteroid: UIImageView!
    @IBOutlet weak var asteroid2: UIImageView!
    @IBOutlet weak var asteroid3: UIImageView!
    @IBOutlet weak var yellowAsteroid: UIImageView!
    @IBOutlet weak var purpleAsteroid: UIImageView!
    @IBOutlet weak var threeAsteroids: UIImageView!
    func satelliteLocation(degrees: CGFloat) {
        satellite.transform = CGAffineTransform.identity.rotated(by: CGFloat.pi / 180 * degrees).translatedBy(x: 0, y: -90)
    }
    
    func asteroidLocation(degree: CGFloat) {
        asteroid.transform = CGAffineTransform.identity.rotated(by: CGFloat.pi / 180 * degree).translatedBy(x: 0, y: -400)
    }
    
    func asteroid2Location(degree: CGFloat) {
        asteroid2.transform = CGAffineTransform.identity.rotated(by: CGFloat.pi / 180 * degree).translatedBy(x: 0, y: -399.5)
    }
    func asteroid3Location(degree: CGFloat) {
        asteroid3.transform = CGAffineTransform.identity.rotated(by: CGFloat.pi / 180 * degree).translatedBy(x: 0, y: -396)
    }
    func yelloAsteroidLocation(degree: CGFloat) {
        yellowAsteroid.transform = CGAffineTransform.identity.rotated(by: CGFloat.pi / 180 * degree)
    }
    func purpleAsteroidLocation(degree: CGFloat) {
        purpleAsteroid.transform = CGAffineTransform.identity.rotated(by: CGFloat.pi / 180 * degree)
    }
    func threeAsteroidsLocation(degree: CGFloat) {
        threeAsteroids.transform = CGAffineTransform.identity.rotated(by: CGFloat.pi / 180 * degree)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "宇宙.jpeg")!)
        alien.frame = CGRect(x: 40, y: 130, width: 5, height: 5)
        astronaut.frame = CGRect(x: 448, y: 140, width: 70, height: 70)
        earth.frame = CGRect(x: 378, y: 137, width: 140, height: 140)
        satellite.frame = CGRect(x: 433, y: 192, width: 20, height: 20)
        asteroid.frame = CGRect(x: -80, y: 350, width: 20, height: 20)
        asteroid2.frame = CGRect(x: -83, y: 348, width: 14, height: 14)
        asteroid3.frame = CGRect(x: -72, y: 344, width: 12, height: 12)
        yellowAsteroid.frame = CGRect(x: 180, y: 130, width: 36, height: 36)
        purpleAsteroid.frame = CGRect(x: 170, y: 127, width: 12, height: 12)
        threeAsteroids.frame = CGRect(x: 215, y: 110, width: 28, height: 28)
        
        //隕石初始畫面角度
        satelliteLocation(degrees: 0)
        asteroidLocation(degree: 0)
        asteroid2Location(degree: 0)
        asteroid3Location(degree: 0)
        yelloAsteroidLocation(degree: 0)
        purpleAsteroidLocation(degree: 0)
        threeAsteroidsLocation(degree: 0)

    }

    @IBAction func moveSlider(_ sender: UISlider) {
        
        let alienSpeed = Int(sender.value * 10.0)
        let astronautSpeed = Int(sender.value * 4.5)
        let size = Int(sender.value * 5.5)
        
        //x軸改變
        alien.frame.origin = CGPoint(x: 40+3*alienSpeed, y: 130)
        astronaut.frame.origin = CGPoint(x: 448+4*astronautSpeed, y: 140)
        
        //大小改變
        alien.frame.size = CGSize(width: 5+2*size, height: 5+2*size)
        astronaut.frame.size = CGSize(width: 70+5*size, height: 70+5*size)
               
        //衛星繞圓＆隕石
        satelliteLocation(degrees: CGFloat(sender.value*42))
        asteroidLocation(degree: CGFloat(sender.value*8.3))
        asteroid2Location(degree: CGFloat(sender.value*7.9))
        asteroid3Location(degree: CGFloat(sender.value*7.86))
        yelloAsteroidLocation(degree: CGFloat(sender.value*37))
        purpleAsteroidLocation(degree: CGFloat(sender.value*40))
        threeAsteroidsLocation(degree: CGFloat(sender.value*40))
        
    }
}


