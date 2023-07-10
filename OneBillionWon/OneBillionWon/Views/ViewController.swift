//
//  ViewController.swift
//  OneBillionWon
//
//  Created by 이승재 on 2023/07/09.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    enum AnimKind: String {
        case getMoney = "getMoney1"
        case loseMoney = "loseMoney1"
        case nomal = "normal1"
    }
    
    
    @IBOutlet weak var animationView: LottieAnimationView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        playDefaultAnim()
        
        
    }
    
    
    private func playDefaultAnim() {
        
        animationView.animation = .named(AnimKind.nomal.rawValue)
        animationView!.contentMode = .scaleAspectFit
        animationView?.loopMode = .loop
        animationView!.animationSpeed = 1.0
        animationView?.play()
        
    }
    
    private func animationStart() {
        var playType = ""
        
        if playType == "돈벌면" {
            playType = AnimKind.getMoney.rawValue
        } else {
            playType = AnimKind.loseMoney.rawValue
        }
        
        
        animationView.animation = .named(playType)
        animationView!.contentMode = .scaleAspectFit
        animationView?.loopMode = .playOnce
        animationView!.animationSpeed = 1.0
        animationView?.play()
        
        // 이전 애니메이션으로 돌아가기
    }


}

