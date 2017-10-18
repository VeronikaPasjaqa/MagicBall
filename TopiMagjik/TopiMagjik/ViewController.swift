//
//  ViewController.swift
//  TopiMagjik
//
//  Created by ICK Training 5 on 18/10/2017.
//  Copyright © 2017 ICK. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var topi1: UIImageView!
    var fotot = ["topi1","topi2","topi3","topi4","topi5","topifillo"]
    
    var ans = "pergjigjia"
    var audioPlayer:AVAudioPlayer!
    var audioFile = Bundle.main.url(forResource: "pergjigjia", withExtension: "wav")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func playButton(_ sender: Any) {
        var random = fotot[Int(arc4random_uniform(UInt32(fotot.count)))]
        audioPlayer = try!AVAudioPlayer(contentsOf: audioFile!)
        audioPlayer.play()
        topi1.image = UIImage.init(named: random)
    }
}

