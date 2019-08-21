//
//  ViewController.swift
//  sonidos
//
//  Created by Alumno on 21/08/19.
//  Copyright © 2019 Fer. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBAction func doTapReproducir(_ sender: Any) {
        if player != nil {
            player?.play()
        }
    }
    //signo de interrogación para decir que no se esta seguro del tipo
    var player : AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //bundle es una clase qu representa el empaquetado de la aplicación, nil porque no se ocupa saber el tipo de dato que es
        let path = Bundle.main.path(forResource: "Jumping-sound-effect.mp3", ofType: nil)
        let url = URL(fileURLWithPath: path!)
        
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
        }catch {
            
        }
       
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

