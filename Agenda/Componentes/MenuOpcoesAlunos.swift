//
//  MenuOpcoesAlunos.swift
//  Agenda
//
//  Created by Jaqueline Bittencourt Santos on 23/03/21.
//  Copyright © 2021 Alura. All rights reserved.
//

    import UIKit
    enum MenuActionSheetAluno {
        case sms
        case ligacao
        case waze
        case mapa
        case abrirPaginaWeb
    }

    class MenuOpcoesAlunos: NSObject {
        
        func configuraMenuDeOpcoesDoAluno(completion:@escaping(_ opcao:MenuActionSheetAluno) -> Void) -> UIAlertController {
            let menu = UIAlertController(title: "Atencao", message: "escolha uma das opcoes abaixo", preferredStyle: .actionSheet)
            let sms = UIAlertAction(title: "enviar SMS", style: .default) { (acao) in
                completion(.sms)
            }
            menu.addAction(sms)
            
            let ligacao = UIAlertAction(title: "ligar", style: .default) { (acao) in
                completion(.ligacao)
            }
            menu.addAction(ligacao)
            
            let waze = UIAlertAction(title: "Waze", style: .default) { (opcao) in completion (.waze)
                
            }
            menu.addAction(waze)
            
            let mapa = UIAlertAction(title: "localizar no mapa", style: .default) {(acao) in completion (.mapa)
                
            }
            menu.addAction(mapa)
            
            let abrirPaginaWeb = UIAlertAction(title: "Abrir Página", style: .default) {(acao) in
                completion(.abrirPaginaWeb)
            }
            menu.addAction(abrirPaginaWeb)
            
            let cancelar = UIAlertAction(title: "cancelar", style: .cancel, handler: nil)
            menu.addAction(cancelar)
            
            return menu
        }

    }
