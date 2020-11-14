//
//  Pelicula.swift
//  ejercicio_universal
//
//  Created by Esther Agulló Fidel on 14/11/2020.
//  Copyright © 2020 Esther Agulló Fidel. All rights reserved.
//

import UIKit

class Pelicula {
    var titulo : String
    var caratula : String
    var fecha : String
    var descripcion : String?

    init(titulo: String, caratula: String, fecha: String, descripcion: String?) {
        self.titulo = titulo
        self.fecha = fecha
        self.caratula = caratula
        self.descripcion = descripcion
    }
}
