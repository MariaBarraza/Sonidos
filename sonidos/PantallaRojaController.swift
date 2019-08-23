//
//  PantallaRojaController.swift
//  sonidos
//
//  Created by Alumno on 23/08/19.
//  Copyright © 2019 Fer. All rights reserved.
//

import Foundation
import UIKit

class PantallaRojaController : UIViewController{
    
    @IBAction func doTapRegresar(_ sender: Any) {
        //pregunta si quieres animacion y si ejecuta alguna funcion al regresar, se le dice que no con el nulo (nil)
        self.dismiss(animated: true, completion: nil)
    }
}
