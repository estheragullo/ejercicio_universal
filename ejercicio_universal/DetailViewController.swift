//
//  DetailViewController.swift
//  ejercicio_universal
//
//  Created by Esther Agulló Fidel on 14/11/2020.
//  Copyright © 2020 Esther Agulló Fidel. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var descripcion: UITextView!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var fecha: UILabel!
    

        func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.titulo
            }
            if let imagen = self.imagen {
                imagen.image = UIImage(named : detail.caratula)
            }
            if let descripcion = self.descripcion {
                descripcion.text = detail.descripcion!
            }
            if let fecha = self.fecha {
                     fecha.text = detail.fecha
             }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    var detailItem: Pelicula? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    override func viewWillLayoutSubviews() {
        if view.bounds.size.width >= view.bounds.size.height {
            self.stackView.axis = .horizontal
        }
        else {
            self.stackView.axis = .vertical
        }
    }
}

