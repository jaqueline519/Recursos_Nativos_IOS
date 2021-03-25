//
//  Pino.swift
//  Agenda
//
//  Created by Jaqueline Bittencourt Santos on 24/03/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit
import MapKit

class Pino: NSObject, MKAnnotation {
        var title: String?
        var icon: UIImage?
    var color: UIColor?
    var coordinate: CLLocationCoordinate2D
    
    init(coordenada: CLLocationCoordinate2D){
        self.coordinate = coordenada
    }
}
