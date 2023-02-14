//
//  AboutViewController.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 04/02/20.
//  Copyright © 2020 Inara Takashi. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var aboutContent: UILabel!
    @IBOutlet weak var aboutLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.image.tintColor = UIColor(named: "ToolKitBackOpposite")
        self.aboutLabel.text  = NSLocalizedString("Sobre o aplicativo", comment: "")
        self.aboutContent.text = NSLocalizedString("Esta versão do “toolkit” foi baseado nas cartas produzidas pelo designer UX, Marcelo Sales, com intuito de simplificar a compreensão das diretrizes WCAG (Web Content Accessibility Guidelines) e de torna-las acessíveis através desta plataforma digital. Utilize-a como fonte de pesquisa, consulta rápida, ferramenta para facilitação, disseminação de conhecimento e onde mais achar que o mesmo seja útil. A WCAG são diretrizes que fundamentam as recomendações básicas para a construção de conteúdos digitais de forma acessível a todos. Todo conteúdo adaptado neste material foi criado originalmente pelo W3C.", comment: "")
        
       
    }

}
