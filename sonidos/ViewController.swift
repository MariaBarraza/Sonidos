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
    //signo de interrogación para decir que no se esta seguro del tipo
    var player : AVAudioPlayer?
    var playerMusicaFondo : AVAudioPlayer?
    
    var reproduccion = false

    
    @IBAction func doTapReproducir(_ sender: Any) {
        
        
        if reproduccion {
            let pathMusicaFondo = Bundle.main.path(forResource: "pistola_bang.mp3", ofType: nil)
            let urlMusicaFondo = URL(fileURLWithPath: pathMusicaFondo!)
            do {
                player = try AVAudioPlayer(contentsOf: urlMusicaFondo)
                //playerMusicaFondo?.play()
            }catch {
                
            }
        }else {
            reproduccion = true
        }
        
        if player != nil {
            player?.play()
            
        }
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //bundle es una clase qu representa el empaquetado de la aplicación, nil porque no se ocupa saber el tipo de dato que es
        let path = Bundle.main.path(forResource: "Jumping-sound-effect.mp3", ofType: nil)
        let url = URL(fileURLWithPath: path!)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            //playerMusicaFondo?.play()
        }catch {
            
        }
       
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

