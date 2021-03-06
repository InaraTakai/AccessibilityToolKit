//
//  Cards.swift
//  AccessibilityToolKit
//
//  Created by Inara Takashi on 04/02/20.
//  Copyright © 2020 Inara Takashi. All rights reserved.
//

import Foundation
import UIKit

let card1 = Card(title: .Noticeable, level: .A, code: "1.1.1", guideline: NSLocalizedString("Alternativas em texto", comment: "Diretriz"), criterion: NSLocalizedString("Conteúdo não textual", comment: "Critério de Sucesso"), description: NSLocalizedString("Todo conteúdo “não textual” deve trazer uma alternativa em texto para identificar o conteúdo. Nota: a não ser que o conteúdo seja apenas decorativo ou represente uma das exceções descritas no critério completo (captcha e imagens de teste, inclusive).", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#text-equiv", comment: ""), image: "ex-111")

let card2 = Card(title: .Noticeable, level: .A, code: "1.2.1", guideline: NSLocalizedString("Multimídia baseada em tempo", comment: "Diretriz"), criterion: NSLocalizedString("Apenas áudio ou apenas vídeo (pré-gravado)", comment: "Critério de Sucesso"), description: NSLocalizedString("Deve ser fornecida uma alternativa para o conteúdo apresentado: Apenas áudio: fornecer transcrição descritiva em texto; Apenas vídeo: fornecer áudio alternativo e/ou transcrição descritiva em texto;", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#media-equiv", comment: ""), image: "ex-121")

let card3 = Card(title: .Noticeable, level: .A, code: "1.2.2", guideline: NSLocalizedString("Multimídia baseada em tempo", comment: "Diretriz"), criterion: NSLocalizedString("Legendas (pré-gravado)", comment: "Critério de Sucesso"), description: NSLocalizedString("Devem ser fornecidas legendas para todo conteúdo que contenha áudio pré-gravado (apenas áudio ou vídeo com áudio).", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#media-equiv", comment: ""), image: "ex-122")

let card4 = Card(title: .Noticeable, level: .A, code: "1.2.3", guideline: NSLocalizedString("Multimídia baseada em tempo", comment: "Diretriz"), criterion: NSLocalizedString("Audiodescrição ou mídia alternativa (pré-gravado)", comment: "Critério de Sucesso"), description: NSLocalizedString("Deve ser fornecida audiodescrição ou uma transcrição descritiva em texto para todo conteúdo em vídeo pré-gravado. Nota: se for fornecida audiodescrição, o critério 1.2.5 (AA) estará atendido. Se for fornecida uma mídia alternativa, o critério 1.2.8 (AAA) estará atendido.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#media-equiv", comment: ""), image: "ex-123")

let card5 = Card(title: .Noticeable, level: .AA, code: "1.2.4", guideline: NSLocalizedString("Multimídia baseada em tempo", comment: "Diretriz"), criterion: NSLocalizedString("Legendas (ao vivo)", comment: "Critério de Sucesso"), description: NSLocalizedString("Devem ser fornecidas legendas para todo conteúdo que contenha áudio ao vivo (apenas áudio ou vídeo com áudio).", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#media-equiv", comment: ""), image: "ex-124")

let card6 = Card(title: .Noticeable, level: .AA, code: "1.2.5", guideline: NSLocalizedString("Multimídia baseada em tempo", comment: "Diretriz"), criterion: NSLocalizedString("Audiodescrição (pré-gravado)", comment: "Critério de Sucesso"), description: NSLocalizedString("Deve ser fornecida audiodescrição para todo conteúdo em vídeo pré-gravado. Nota: ver em conjunto com critério 1.2.7. Nota 2: ao atender este critério, o critério 1.2.3 (A) também estará atendido.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#media-equiv", comment: ""), image: nil)

let card7 = Card(title: .Noticeable, level: .AAA, code: "1.2.6", guideline: NSLocalizedString("Multimídia baseada em tempo", comment: "Diretriz"), criterion: NSLocalizedString("Língua de sinais", comment: "Critério de Sucesso"), description: NSLocalizedString("Deve ser fornecida interpretação em língua de sinais (exemplo: Libras) para todo conteúdo que contenha áudio pré-gravado.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#media-equiv", comment: ""), image: "ex-126")

let card8 = Card(title: .Noticeable, level: .AAA, code: "1.2.7", guideline: NSLocalizedString("Multimídia baseada em tempo", comment: "Diretriz"), criterion: NSLocalizedString("Audiodescrição estendida (pré-gravado)", comment: "Critério de Sucesso"), description: NSLocalizedString("Se não for possível manter uma faixa de audiodescrição em conjunto com o áudio original do vídeo (exemplo: sobreposição das falas), deve-se fornecer uma alternativa que permita pausar o vídeo, reproduzir a audiodescrição e, em seguida, retomar o vídeo.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#media-equiv", comment: ""), image: nil)

let card9 = Card(title: .Noticeable, level: .AAA, code: "1.2.8", guideline: NSLocalizedString("Multimídia baseada em tempo", comment: "Diretriz"), criterion: NSLocalizedString("Mídia alternativa (pré-gravado)", comment: "Critério de Sucesso"), description: NSLocalizedString("Deve ser fornecida uma transcrição descritiva do conteúdo em texto para todo conteúdo em vídeo pré-gravado. Nota: ao atender este critério, o critério 1.2.3 (A) também estará atendido.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#media-equiv", comment: ""), image: nil)

let card10 = Card(title: .Noticeable, level: .AAA, code: "1.2.9", guideline: NSLocalizedString("Multimídia baseada em tempo", comment: "Diretriz"), criterion: NSLocalizedString("Apenas áudio (ao vivo)", comment: "Critério de Sucesso"), description: NSLocalizedString("Deve ser fornecida uma transcrição descritiva em texto para todo conteúdo apresentado ao vivo.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#media-equiv", comment: ""), image: nil)

let card11 = Card(title: .Noticeable, level: .A, code: "1.3.1", guideline: NSLocalizedString("Adaptável", comment: "Diretriz"), criterion: NSLocalizedString("Informações e Relações", comment: "Critério de Sucesso"), description: NSLocalizedString("A estrutura e as relações entre os componentes da tela devem fazer sentido tanto para a visão quanto para a audição. Nota para DEV: código semanticamente correto atende completamente este critério.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#content-structure-separation", comment: ""), image: nil)

let card12 = Card(title: .Noticeable, level: .A, code: "1.3.2", guideline: NSLocalizedString("Adaptável", comment: "Diretriz"), criterion: NSLocalizedString("Sequência com significado", comment: "Critério de Sucesso"), description: NSLocalizedString("A ordem de leitura e a navegação pelos componentes em tela deve fazer sentido para o usuário. Nota: a ordem estrutural dos componentes visíveis em tela deve ser a mesma ao se reproduzir o conteúdo através de um leitor de telas. Nota 2: utilizar em conjunto com critério 2.4.3.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#content-structure-separation", comment: ""), image: nil)

let card13 = Card(title: .Noticeable, level: .A, code: "1.3.3", guideline: NSLocalizedString("Adaptável", comment: "Diretriz"), criterion: NSLocalizedString("Características sensoriais", comment: "Critério de Sucesso"), description: NSLocalizedString("Qualquer tipo de instrução não deve depender apenas de forma, tamanho, localização visual ou som. Exemplos: evitar 'clique no botão verde', 'clique no botao abaixo' ou 'ao ouvir o bip, selecione uma opção'.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#content-structure-separation", comment: ""), image: nil)

let card14 = Card(title: .Noticeable, level: .AA, code: "1.3.4", guideline: NSLocalizedString("Adaptável", comment: "Diretriz"), criterion: NSLocalizedString("Orientação", comment: "Critério de Sucesso"), description: NSLocalizedString("Funcionalidades não devem depender de uma determinada orientação de tela (exemplo: virar o celular na horizontal) a não ser que seja imprescindível para execução da função.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#content-structure-separation", comment: ""), image: nil)

let card15 = Card(title: .Noticeable, level: .AA, code: "1.3.5", guideline: NSLocalizedString("Adaptável", comment: "Diretriz"), criterion: NSLocalizedString("Identificar o objetivo de entrada", comment: "Critério de Sucesso"), description: NSLocalizedString("O objetivo de entrada de um campo deve ser claramente definido (exemplo: para um campo de e-mail, deve-se aplicar corretamente o tipo de entrada de dados e-mail - input type='e-mail') e sempre que possível, deve-se habilitar o atributo de auto-completar.Nota: ver em conjunto com os critérios 2.4.6 e 3.3.2.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#content-structure-separation", comment: ""), image: nil)

let card16 = Card(title: .Noticeable, level: .AAA, code: "1.3.6", guideline: NSLocalizedString("Adaptável", comment: "Diretriz"), criterion: NSLocalizedString("Identificar o objetivo", comment: "Critério de Sucesso"), description: NSLocalizedString("O significado e objetivo de todos os elementos em tela devem ser claramente definidos para que o conteúdo (que será ouvido) seja compreensível o suficiente para que o usuário possa personalizar a leitura da forma como melhor se adequar. Nota para DEV: aplicar corretamente ARIA REGIONS e METADADOS.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#content-structure-separation", comment: ""), image: nil)

let card17 = Card(title: .Noticeable, level: .A, code: "1.4.1", guideline: NSLocalizedString("Discernível", comment: "Diretriz"), criterion: NSLocalizedString("Utilização de cores", comment: "Critério de Sucesso"), description: NSLocalizedString("Cores não devem ser utilizadas como única maneira de transmitir conteúdo ou distinguir elementos visuais. Exemplo: uma mensagem de erro em formulário deve trazer indicações visuais, textos e também mudança de cor do formulário (e não apenas a mudança de cor).", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#visual-audio-contrast", comment: ""), image: nil)

let card18 = Card(title: .Noticeable, level: .A, code: "1.4.2", guideline: NSLocalizedString("Discernível", comment: "Diretriz"), criterion: NSLocalizedString("Controle de áudio", comment: "Critério de Sucesso"), description: NSLocalizedString("Deve ser fornecido um mecanismo para pausar, deixar mudo ou ajustar o volume para qualquer áudio que toque automaticamente por mais de 3 segundos.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#visual-audio-contrast", comment: ""), image: nil)

let card19 = Card(title: .Noticeable, level: .AA, code: "1.4.3", guideline: NSLocalizedString("Discernível", comment: "Diretriz"), criterion: NSLocalizedString("Contraste (mínimo)", comment: "Critério de Sucesso"), description: NSLocalizedString("Textos devem ter uma relação de contraste entre primeiro e segundo plano de ao menos 4.5:1. Nota: textos em tamanhos de fontes maiores (a partir de 18pt ou 14pt bold) podem ter uma relação de contraste de 3:1. Nota 2: ver critério completo para entender relação de contraste.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#visual-audio-contrast", comment: ""), image: nil)

let card20 = Card(title: .Noticeable, level: .AA, code: "1.4.4", guideline: NSLocalizedString("Discernível", comment: "Diretriz"), criterion: NSLocalizedString("Redimensionar texto", comment: "Critério de Sucesso"), description: NSLocalizedString("O conteúdo em texto deve ser legível e funcional mesmo quando a tela for ampliada em até 200% do seu tamanho padrão.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#visual-audio-contrast", comment: ""), image: nil)

let card21 = Card(title: .Noticeable, level: .A, code: "1.4.5", guideline: NSLocalizedString("Discernível", comment: "Diretriz"), criterion: NSLocalizedString("Imagens de texto", comment: "Critério de Sucesso"), description: NSLocalizedString("Evitar o uso de textos em imagens a não ser que sejam essenciais (exemplo: marcas e logos) ou que possam ser personalizadas pelo usuário.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#visual-audio-contrast", comment: ""), image: nil)

let card22 = Card(title: .Noticeable, level: .AAA, code: "1.4.6", guideline: NSLocalizedString("Discernível", comment: "Diretriz"), criterion: NSLocalizedString("Contraste (melhorado)", comment: "Critério de Sucesso"), description: NSLocalizedString("Textos devem ter uma relação de contraste entre primeiro e segundo plano de ao menos 7:1. Nota: textos em tamanhos de fontes maiores (a partir de 18pt ou 14pt bold) podem ter uma relação de contraste de 4.5:1. Nota 2: ver critério completo para entender relação de contraste.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#visual-audio-contrast", comment: ""), image: nil)

let card23 = Card(title: .Noticeable, level: .AAA, code: "1.4.7", guideline: NSLocalizedString("Discernível", comment: "Diretriz"), criterion: NSLocalizedString("Som baixo ou sem som de fundo", comment: "Critério de Sucesso"), description: NSLocalizedString("Qualquer tipo de som que não seja voz em um áudio ou vídeo pré-gravado, deverá ser baixo o suficiente (ou inexistente) para que o usuário não tenha dificuldade de compreensão da voz principal.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#visual-audio-contrast", comment: ""), image: nil)

let card24 = Card(title: .Noticeable, level: .AAA, code: "1.4.8", guideline: NSLocalizedString("Discernível", comment: "Diretriz"), criterion: NSLocalizedString("Apresentação visual", comment: "Critério de Sucesso"), description: NSLocalizedString("Deve ser fornecido um mecanismo que possibilite o usuário controlar a apresentação de blocos de texto. O mecanismo deve possibilitar ao usuário efetuar o ajuste de cores entre primeiro e segundo plano, manter a largura de texto em até 80 caracteres e configurar o espaçamento entre linhas e parágrafos.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#visual-audio-contrast", comment: ""), image: nil)

let card25 = Card(title: .Noticeable, level: .AAA, code: "1.4.9", guideline: NSLocalizedString("Discernível", comment: "Diretriz"), criterion: NSLocalizedString("Imagens de texto (sem exceção)", comment: "Critério de Sucesso"), description: NSLocalizedString("Evitar o uso de textos em imagens a não ser que sejam essenciais (exemplo: marcas e logos). Nota: ao atender este critério, o critério 1.4.5 (AA) também estará atendido.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#visual-audio-contrast", comment: ""), image: nil)

let card26 = Card(title: .Noticeable, level: .AA, code: "1.4.10", guideline: NSLocalizedString("Discernível", comment: "Diretriz"), criterion: NSLocalizedString("Refluxo", comment: "Critério de Sucesso"), description: NSLocalizedString("Ao se aplicar zoom de até 400% na tela, não deverá ocorrer rolagem (scroll) vertical e horizontal ao mesmo tempo.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#visual-audio-contrast", comment: ""), image: nil)

let card27 = Card(title: .Noticeable, level: .AA, code: "1.4.11", guideline: NSLocalizedString("Discernível", comment: "Diretriz"), criterion: NSLocalizedString("Contraste Não-Textual", comment: "Critério de Sucesso"), description: NSLocalizedString("Componentes de interface (exemplo: botões) e imagens essenciais para o entendimento do conteúdo devem ter uma relação de contraste entre primeiro e segundo plano de ao menos 3:1.  Nota: ver critério completo e em conjunto com 1.4.3 e 1.4.6.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#visual-audio-contrast", comment: ""), image: nil)

let card28 = Card(title: .Noticeable, level: .AA, code: "1.4.12", guideline: NSLocalizedString("Discernível", comment: "Diretriz"), criterion: NSLocalizedString("Espaçamento de texto", comment: "Critério de Sucesso"), description: NSLocalizedString("Não deve ocorrer nenhuma perda de conteúdo ou funcionalidade quando o usuário adapta o conteúdo em tela para: Entrelinhas de ao menos 1.5x o tamanho da fonte; Paragráfos de ao menos 2x o tamanho da fonte. Nota: ver critério completo para mais informações.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#visual-audio-contrast", comment: ""), image: nil)

let card29 = Card(title: .Noticeable, level: .AA, code: "1.4.13", guideline: NSLocalizedString("Discernível", comment: "Diretriz"), criterion: NSLocalizedString("Conteúdo em foco por mouse ou teclado", comment: "Critério de Sucesso"), description: NSLocalizedString("Conteúdos adicionais (exemplo: tooltip ou sub-menu) não devem ser acionados apenas com foco por mouse (mouseover) ou teclado. Caso isso ocorra, certas condições devem ser atendidas. Nota: ver critério completo para verificar as condições.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#visual-audio-contrast", comment: ""), image: nil)

let card30 = Card(title: .Operable, level: .A, code: "2.1.1", guideline: NSLocalizedString("Acessível por teclado", comment: "Diretriz"), criterion: NSLocalizedString("Teclado", comment: "Critério de Sucesso"), description: NSLocalizedString("Toda funcionalidade deve estar disponível para utilização com teclado, a menos que a funcionalidade não possibilite o controle apenas por teclado.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#keyboard-operation", comment: ""), image: nil)

let card31 = Card(title: .Operable, level: .A, code: "2.1.2", guideline: NSLocalizedString("Acessível por teclado", comment: "Diretriz"), criterion: NSLocalizedString("Sem bloqueio de teclado", comment: "Critério de Sucesso"), description: NSLocalizedString("Deve ser possível navegar de e para todos os elementos sem qualquer tipo de bloqueio de teclado.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#keyboard-operation", comment: ""), image: nil)

let card32 = Card(title: .Operable, level: .AAA, code: "2.1.3", guideline: NSLocalizedString("Acessível por teclado", comment: "Diretriz"), criterion: NSLocalizedString("Teclado (sem exceção)", comment: "Critério de Sucesso"), description: NSLocalizedString("Toda funcionalidade deve estar disponível para utilização com teclado. Nota: ao atender este critério, o critério 2.1.1 (A) também estará atendido.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#keyboard-operation", comment: ""), image: nil)

let card33 = Card(title: .Operable, level: .AA, code: "2.1.4", guideline: NSLocalizedString("Acessível por teclado", comment: "Diretriz"), criterion: NSLocalizedString("Atalhos de teclado por caractere", comment: "Critério de Sucesso"), description: NSLocalizedString("Deve-se evitar a criação de atalhos de teclado utilizando apenas simples caracteres (letras, números, pontuações, etc). Caso isso ocorra, certas condições devem ser atendidas. Nota: ver critério completo para verificar as condições.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#keyboard-operation", comment: ""), image: nil)

let card34 = Card(title: .Operable, level: .A, code: "2.2.1", guideline: NSLocalizedString("Tempo suficiente", comment: "Diretriz"), criterion: NSLocalizedString("Ajustável por limite de tempo", comment: "Critério de Sucesso"), description: NSLocalizedString("Se uma aplicação possui um limite de tempo, o usuário deve ter opções para desligar ou ajustar o tempo. A não ser que seja uma situação onde o tempo seja essencial. Nota: recomendado utilizar em conjunto com critério 2.2.6.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#time-limits", comment: ""), image: nil)

let card35 = Card(title: .Operable, level: .A, code: "2.2.2", guideline: NSLocalizedString("Tempo suficiente", comment: "Diretriz"), criterion: NSLocalizedString("Colocar em pausa, parar ou ocultar", comment: "Critério de Sucesso"), description: NSLocalizedString("Qualquer componente com movimento automático que dure mais do que 5 segundos e seja apresentado em conjunto com outro conteúdo, pode ser pausado, parado ou ocultado pelo usuário.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#time-limits", comment: ""), image: nil)

let card36 = Card(title: .Operable, level: .AAA, code: "2.2.3", guideline: NSLocalizedString("Tempo suficiente", comment: "Diretriz"), criterion: NSLocalizedString("Sem limite de tempo", comment: "Critério de Sucesso"), description: NSLocalizedString("Nenhuma funcionalidade deve possuir limite de tempo para que uma ação seja executada.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#time-limits", comment: ""), image: nil)

let card37 = Card(title: .Operable, level: .AAA, code: "2.2.4", guideline: NSLocalizedString("Tempo suficiente", comment: "Diretriz"), criterion: NSLocalizedString("Interrupções", comment: "Critério de Sucesso"), description: NSLocalizedString("Qualquer tipo de interrupção no conteúdo que possa confundir o usuário deve possuir um mecanismo que permita o seu desligamento ou adiamento, a não ser que envolva uma emergência que preserve a saúde, segurança ou bens do usuário.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#time-limits", comment: ""), image: nil)

let card38 = Card(title: .Operable, level: .AAA, code: "2.2.5", guideline: NSLocalizedString("Tempo suficiente", comment: "Diretriz"), criterion: NSLocalizedString("Nova autenticação", comment: "Critério de Sucesso"), description: NSLocalizedString("Caso uma sessão autenticada expire, qualquer usuário logado deve ser capaz de continuar sua atividade sem qualquer perda de dados, ao se efetuar uma nova autenticação no ambiente.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#time-limits", comment: ""), image: nil)

let card39 = Card(title: .Operable, level: .AAA, code: "2.2.6", guideline: NSLocalizedString("Tempo suficiente", comment: "Diretriz"), criterion: NSLocalizedString("Limites de tempo", comment: "Critério de Sucesso"), description: NSLocalizedString("Caso a inatividade do usuário resulte em perda de dados preenchidos anteriormente, ele deverá saber qual é o tempo limite (e restante) antes que ocorra a perda automática de dados. A menos que esse limite seja superior a 20 horas. Nota: recomendado utilizar em conjunto com critério 2.2.1.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#time-limits", comment: ""), image: nil)

let card40 = Card(title: .Operable, level: .A, code: "2.3.1", guideline: NSLocalizedString("Ataques epiléticos", comment: "Diretriz"), criterion: NSLocalizedString("Três flashes ou abaixo do limite", comment: "Critério de Sucesso"), description: NSLocalizedString("Nenhum conteúdo da página deve piscar mais do que 3 vezes por segundo, a não ser que os flashes estejam em baixo contraste ou possuam pouco vermelho.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#seizure", comment: ""), image: nil)

let card41 = Card(title: .Operable, level: .AAA, code: "2.3.2", guideline: NSLocalizedString("Ataques epiléticos", comment: "Diretriz"), criterion: NSLocalizedString("Três flashes", comment: "Critério de Sucesso"), description: NSLocalizedString("Nenhum conteúdo da página deve piscar mais do que 3 vezes por segundo.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#seizure", comment: ""), image: nil)

let card42 = Card(title: .Operable, level: .AAA, code: "2.3.3", guideline: NSLocalizedString("Ataques epiléticos", comment: "Diretriz"), criterion: NSLocalizedString("Animações de interações", comment: "Critério de Sucesso"), description: NSLocalizedString("Qualquer tipo de animação de interação não essencial e acionada pelo usuário (exemplo: rolagem com efeito parallax) deve ter um mecanismo para que o usuário desligue a animação. Nota: diferentemente do critério 2.2.2, este refere-se ao acionamento pelo próprio usuário.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#seizure", comment: ""), image: nil)

let card43 = Card(title: .Operable, level: .A, code: "2.4.1", guideline: NSLocalizedString("Navegável", comment: "Diretriz"), criterion: NSLocalizedString("Ignorar blocos", comment: "Critério de Sucesso"), description: NSLocalizedString("Um mecanismo deve ser fornecido para ignorar blocos de conteúdo que são repetidos em diferentes telas e fluxos. Nota: este critério poderá ser considerado atendido nos casos em que houver uma adequada estrutura de cabeçalhos. Ver critérios 2.4.2 e 2.4.10.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#navigation-mechanisms", comment: ""), image: nil)

let card44 = Card(title: .Operable, level: .A, code: "2.4.2", guideline: NSLocalizedString("Navegável", comment: "Diretriz"), criterion: NSLocalizedString("Página com título", comment: "Critério de Sucesso"), description: NSLocalizedString("Páginas ou telas devem possuir um título que descreva claramente a sua finalidade.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#navigation-mechanisms", comment: ""), image: nil)

let card45 = Card(title: .Operable, level: .A, code: "2.4.3", guideline: NSLocalizedString("Navegável", comment: "Diretriz"), criterion: NSLocalizedString("Ordem do foco", comment: "Critério de Sucesso"), description: NSLocalizedString("A navegação (através de um teclado) por elementos focáveis em tela deve ser sequencial e lógica de acordo com o conteúdo apresentado. Nota: utilizar em conjunto com critério 1.3.2.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#navigation-mechanisms", comment: ""), image: nil)

let card46 = Card(title: .Operable, level: .A, code: "2.4.4", guideline: NSLocalizedString("Navegável", comment: "Diretriz"), criterion: NSLocalizedString("Finalidade do link (em contexto)", comment: "Critério de Sucesso"), description: NSLocalizedString("A finalidade de cada link deve ser determinada a partir do texto do próprio link ou a partir do contexto no entorno.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#navigation-mechanisms", comment: ""), image: nil)

let card47 = Card(title: .Operable, level: .AA, code: "2.4.5", guideline: NSLocalizedString("Navegável", comment: "Diretriz"), criterion: NSLocalizedString("Várias formas", comment: "Critério de Sucesso"), description: NSLocalizedString("O usuário sempre deve ter opções e formas diferentes para acessar ou localizar um determinado conteúdo.Exemplo: um mesmo conteúdo pode ser acessado por um menu de navegação e também um campo de busca no site.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#navigation-mechanisms", comment: ""), image: nil)

let card48 = Card(title: .Operable, level: .AA, code: "2.4.6", guideline: NSLocalizedString("Navegável", comment: "Diretriz"), criterion: NSLocalizedString("Cabeçalhos e Rótulos", comment: "Critério de Sucesso"), description: NSLocalizedString("Títulos e sub-títulos de conteúdos e rótulos (labels) de formulários devem descrever claramente a finalidade dos elementos ou agrupamentos sem que haja ambiguidade em seu entendimento. Nota: ver em conjunto com critérios 1.3.5 e 2.4.2.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#navigation-mechanisms", comment: ""), image: nil)

let card49 = Card(title: .Operable, level: .AA, code: "2.4.7", guideline: NSLocalizedString("Navegável", comment: "Diretriz"), criterion: NSLocalizedString("Foco visível", comment: "Critério de Sucesso"), description: NSLocalizedString("Ao se navegar por teclado (ou toque) deve ser possível identificar visualmente e facilmente qual elemento da página ou tela tem o foco no momento.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#navigation-mechanisms", comment: ""), image: nil)

let card50 = Card(title: .Operable, level: .AAA, code: "2.4.8", guideline: NSLocalizedString("Navegável", comment: "Diretriz"), criterion: NSLocalizedString("Localização", comment: "Critério de Sucesso"), description: NSLocalizedString("Deve ser fornecido um meio para o usuário se orientar entre os conteúdos de um mesmo conjunto de páginas ou telas. Exemplo: utilizar um breadcrumb", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#navigation-mechanisms", comment: ""), image: nil)

let card51 = Card(title: .Operable, level: .AAA, code: "2.4.9", guideline: NSLocalizedString("Navegável", comment: "Diretriz"), criterion: NSLocalizedString("Finalidade do link (apenas link)", comment: "Critério de Sucesso"), description: NSLocalizedString("A finalidade de cada link deve ser determinada a partir do texto do próprio link. Nota: ao atender este critério, o critério 2.4.4 (A) também estará atendido.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#navigation-mechanisms", comment: ""), image: nil)

let card52 = Card(title: .Operable, level: .AAA, code: "2.4.10", guideline: NSLocalizedString("Navegável", comment: "Diretriz"), criterion: NSLocalizedString("Cabeçalhos da seção", comment: "Critério de Sucesso"), description: NSLocalizedString("Sempre que possível, deve-se fornecer títulos em diferentes sessões e níveis, permitindo que o usuário identifique facilmente a hierarquia das informações em um determinado conteúdo. Nota: este critério abrange exclusivamente conteúdo textual, não confundir com 4.1.2.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#navigation-mechanisms", comment: ""), image: nil)

let card53 = Card(title: .Operable, level: .A, code: "2.5.1", guideline: NSLocalizedString("Modalidade de Entrada", comment: "Diretriz"), criterion: NSLocalizedString("Gestos de acionamento", comment: "Critério de Sucesso"), description: NSLocalizedString("Nenhuma funcionalidade deve ser baseada em uma movimentação complexa (exemplo: arraste com 3 dedos para direita), a menos que seja uma funcionalidade essencial e não haja outra alternativa.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#operable", comment: ""), image: nil)

let card54 = Card(title: .Operable, level: .A, code: "2.5.2", guideline: NSLocalizedString("Modalidade de Entrada", comment: "Diretriz"), criterion: NSLocalizedString("Cancelamento de acionamento", comment: "Critério de Sucesso"), description: NSLocalizedString("Deve ser possível cancelar ou reverter qualquer ação que envolva clique ou toque simples. Algumas condições precisam ser atendidas. Nota: ver critério completo para verificar as condições.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#operable", comment: ""), image: nil)

let card55 = Card(title: .Operable, level: .A, code: "2.5.3", guideline: NSLocalizedString("Modalidade de Entrada", comment: "Diretriz"), criterion: NSLocalizedString("Rótulo no nome acessível", comment: "Critério de Sucesso"), description: NSLocalizedString("Qualquer rótulo (label) visível deve ser lido exatamente da mesma forma por leitores de tela. Caso haja descrição adicional, o rótulo visível deverá ser o primeiro a ser lido (exemplo: em um botão, cujo rótulo seja 'compre já', a leitura deverá ser semelhante a 'compre já o produto XYZ'). Nota: ver critério completo.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#operable", comment: ""), image: nil)

let card56 = Card(title: .Operable, level: .A, code: "2.5.4", guideline: NSLocalizedString("Modalidade de Entrada", comment: "Diretriz"), criterion: NSLocalizedString("Atuação em movimento", comment: "Critério de Sucesso"), description: NSLocalizedString("Qualquer funcionalidade que exija a movimentação do aparelho (exemplo: “agitar para desfazer”) deve oferecer um mecanismo para ser desativada e caso seja uma função essencial, a interface deve oferecer uma alternativa de acionamento.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#operable", comment: ""), image: nil)

let card57 = Card(title: .Operable, level: .AAA, code: "2.5.5", guideline: NSLocalizedString("Modalidade de Entrada", comment: "Diretriz"), criterion: NSLocalizedString("Tamanho da área clicável", comment: "Critério de Sucesso"), description: NSLocalizedString("O tamanho de áreas clicáveis devem ser de ao menos 44x44 pixels, a não ser que a área clicável esteja em uma frase ou bloco de texto", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#operable", comment: ""), image: nil)

let card58 = Card(title: .Operable, level: .AAA, code: "2.5.6", guideline: NSLocalizedString("Modalidade de Entrada", comment: "Diretriz"), criterion: NSLocalizedString("Mecanismos de entrada simultâneos", comment: "Critério de Sucesso"), description: NSLocalizedString("Não deve-se restringir o uso de dispositivos diferentes para se operar uma plataforma (exemplo: usuários com deficiência motora, podem acoplar um teclado móvel a um celular para operá-lo), a não ser que essa restrição seja essencial ou necessária para se garantir a segurança do conteúdo.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#operable", comment: ""), image: nil)

let card59 = Card(title: .Understandable, level: .A, code: "3.1.1", guideline: NSLocalizedString("Legível", comment: "Diretriz"), criterion: NSLocalizedString("Idioma da página", comment: "Critério de Sucesso"), description: NSLocalizedString("O idioma do conteúdo deve ser definido em cada uma das páginas ou telas da aplicação.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#meaning", comment: ""), image: nil)

let card60 = Card(title: .Understandable, level: .AA, code: "3.1.2", guideline: NSLocalizedString("Legível", comment: "Diretriz"), criterion: NSLocalizedString("Idioma das partes", comment: "Critério de Sucesso"), description: NSLocalizedString("O idioma de um determinado trecho ou frase contendo idioma diferente do original da página ou tela atual, deve ser definido e corretamente identificado. Nota: ver em conjunto com critério 3.1.1.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#meaning", comment: ""), image: nil)

let card61 = Card(title: .Understandable, level: .AAA, code: "3.1.3", guideline: NSLocalizedString("Legível", comment: "Diretriz"), criterion: NSLocalizedString("Palavras incomuns", comment: "Critério de Sucesso"), description: NSLocalizedString("Caso use palavras técnicas ou jargões, forneça um glossário ou explicações que informem ao usuário seu significado.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#meaning", comment: ""), image: nil)

let card62 = Card(title: .Understandable, level: .AAA, code: "3.1.4", guideline: NSLocalizedString("Legível", comment: "Diretriz"), criterion: NSLocalizedString("Abreviações", comment: "Critério de Sucesso"), description: NSLocalizedString("Abreviações e/ou acrônimos devem ser identificados diretamente no conteúdo ou por meio de uma forma que possibilite a apresentação de sua definição por extenso.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#meaning", comment: ""), image: nil)

let card63 = Card(title: .Understandable, level: .AAA, code: "3.1.5", guideline: NSLocalizedString("Legível", comment: "Diretriz"), criterion: NSLocalizedString("Nível de leitura", comment: "Critério de Sucesso"), description: NSLocalizedString("Caso um determinado conteúdo seja tão complexo a ponto de um usuário com ensino fundamental completo não ser capaz de entender, será necessário a sua revisão ou a utilização de conteúdo complementar que facilite o seu entendimento. Nota: baseado em níveis internacionais (UNESCO)", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#meaning", comment: ""), image: nil)

let card64 = Card(title: .Understandable, level: .AAA, code: "3.1.6", guideline: NSLocalizedString("Legível", comment: "Diretriz"), criterion: NSLocalizedString("Pronúncia", comment: "Critério de Sucesso"), description: NSLocalizedString("Deve-se fornecer um mecanismo que identifique a pronúncia correta de determinadas palavras que possam gerar ambiguidade fora do contexto.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#meaning", comment: ""), image: nil)

let card65 = Card(title: .Understandable, level: .A, code: "3.2.1", guideline: NSLocalizedString("Previsível", comment: "Diretriz"), criterion: NSLocalizedString("Em foco", comment: "Critério de Sucesso"), description: NSLocalizedString("Quando um componente recebe foco, nenhum tipo de mudança contextual que possa confundir o usuário, deve ser efetuada. Nota: ver em conjunto com critério 3.2.2.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#consistent-behavior", comment: ""), image: nil)

let card66 = Card(title: .Understandable, level: .A, code: "3.2.2", guideline: NSLocalizedString("Previsível", comment: "Diretriz"), criterion: NSLocalizedString("Em entrada", comment: "Critério de Sucesso"), description: NSLocalizedString("Quando houver uma interação com um campo de entrada de dados (formulário) ou um tipo de controle (exemplo: switch), nenhuma mudança contextual na tela deverá acontecer a não ser que o usuário tenha sido informado que essa mudança ocorreria. Nota: ver em conjunto com critério 3.2.1.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#consistent-behavior", comment: ""), image: nil)

let card67 = Card(title: .Understandable, level: .AA, code: "3.2.3", guideline: NSLocalizedString("Previsível", comment: "Diretriz"), criterion: NSLocalizedString("Navegação consistente", comment: "Critério de Sucesso"), description: NSLocalizedString("Componentes de navegação de um mesmo site ou aplicação que são exibidos em telas diferentes, devem ser apresentados sempre na mesma posição em relação aos demais componentes (exemplo: tab bar em um aplicativo).", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#consistent-behavior", comment: ""), image: nil)

let card68 = Card(title: .Understandable, level: .AA, code: "3.2.4", guideline: NSLocalizedString("Previsível", comment: "Diretriz"), criterion: NSLocalizedString("Identificação consistente", comment: "Critério de Sucesso"), description: NSLocalizedString("Componentes de navegação de um mesmo site ou aplicação que são exibidos em telas diferentes, mas possuem a mesma funcionali- dade, devem ser identificados sempre da mesma forma (exemplo: um campo de busca).", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#consistent-behavior", comment: ""), image: nil)

let card69 = Card(title: .Understandable, level: .AAA, code: "3.2.5", guideline: NSLocalizedString("Previsível", comment: "Diretriz"), criterion: NSLocalizedString("Alteração a pedido", comment: "Critério de Sucesso"), description: NSLocalizedString("Qualquer alteração de contexto na tela, que possa desorientar o usuário, só deve ocorrer após uma ação de confirmação do próprio usuário, a não ser que um mecanismo para cancelar a ação seja disponibilizado. Nota: ao atender este critério, o critério 3.2.1 (A) também estará atendido.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#consistent-behavior", comment: ""), image: nil)

let card70 = Card(title: .Understandable, level: .A, code: "3.3.1", guideline: NSLocalizedString("Assistência a entrada", comment: "Diretriz"), criterion: NSLocalizedString("Identificação do erro", comment: "Critério de Sucesso"), description: NSLocalizedString("Erros durante e após o preenchimento de dados em formulários, devem ser identificados de forma específica e clara para o usuário. O acesso aos campos com erros também deve ser simplificado. Nota: ver em conjunto com critérios 3.3.2 e 3.3.3.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#minimize-error", comment: ""), image: nil)

let card71 = Card(title: .Understandable, level: .A, code: "3.3.2", guideline: NSLocalizedString("Assistência a entrada", comment: "Diretriz"), criterion: NSLocalizedString("Rótulos e Instruções", comment: "Critério de Sucesso"), description: NSLocalizedString("Rótulos (labels) devem identificar os respectivos campos de formulários de forma clara e correta. Forneça instruções de tela ou dicas de preenchimento dos campos sempre que possível. Nota: ver em conjunto com critérios 1.3.5, 3.3.1 e 3.3.3.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#minimize-error", comment: ""), image: nil)

let card72 = Card(title: .Understandable, level: .AA, code: "3.3.3", guideline: NSLocalizedString("Assistência a entrada", comment: "Diretriz"), criterion: NSLocalizedString("Sugestão de erro", comment: "Critério de Sucesso"), description: NSLocalizedString("Forneça sugestões simples para que o usuário consiga corrigir facilmente os erros de preenchimento. Nota: ver em conjunto com critérios 3.3.1 e 3.3.2.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#minimize-error", comment: ""), image: nil)

let card73 = Card(title: .Understandable, level: .AA, code: "3.3.4", guideline: NSLocalizedString("Assistência a entrada", comment: "Diretriz"), criterion: NSLocalizedString("Prevenção de erro (legal, financeiro, dados)", comment: "Critério de Sucesso"), description: NSLocalizedString("Sempre que o usuário puder acrescentar qualquer informação que envolva responsabilidade jurídica ou transação financeira via formulário, bem como alterações em dados já existentes, deve-se também possibilitar o cancelamento do envio ou a verificação e confirmação dos dados.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#minimize-error", comment: ""), image: nil)

let card74 = Card(title: .Understandable, level: .AAA, code: "3.3.5", guideline: NSLocalizedString("Assistência a entrada", comment: "Diretriz"), criterion: NSLocalizedString("Ajuda", comment: "Critério de Sucesso"), description: NSLocalizedString("Caso um rótulo (label) não seja suficiente para explicar o preenchimento de um determinado campo, uma ajuda contextualizada deve ser fornecida. Nota: ver também critério 3.3.2.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#minimize-error", comment: ""), image: nil)

let card75 = Card(title: .Understandable, level: .AAA, code: "3.3.6", guideline: NSLocalizedString("Assistência a entrada", comment: "Diretriz"), criterion: NSLocalizedString("Prevenção de erro (todos)", comment: "Critério de Sucesso"), description: NSLocalizedString("Sempre que o usuário puder acrescentar qualquer informação via formulário, deve-se possibilitar o cancelamento do envio ou a verificação e/ou confirmação dos dados.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#minimize-error", comment: ""), image: nil)

let card76 = Card(title: .Robust, level: .A, code: "4.1.1", guideline: NSLocalizedString("Compatível", comment: "Diretriz"), criterion: NSLocalizedString("Análise (código)", comment: "Critério de Sucesso"), description: NSLocalizedString("Erros significativos de validação ou análise de semântica de código devem ser evitados. Nota para DEV: deve-se utilizar alguma ferramenta para validação da semântica e identificação de erros comuns.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#ensure-compat", comment: ""), image: nil)

let card77 = Card(title: .Robust, level: .A, code: "4.1.2", guideline: NSLocalizedString("Compatível", comment: "Diretriz"), criterion: NSLocalizedString("Nome, função, valor", comment: "Critério de Sucesso"), description: NSLocalizedString("Nomes, funções, valores e estados dos componentes devem ser identificados corretamente por tecnologias assistivas. Nota para DEV: código semântico fornece naturalmente boa parte dessas informações.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#ensure-compat", comment: ""), image: nil)

let card78 = Card(title: .Robust, level: .AA, code: "4.1.3", guideline: NSLocalizedString("Compatível", comment: "Diretriz"), criterion: NSLocalizedString("Mensagens de status", comment: "Critério de Sucesso"), description: NSLocalizedString("Qualquer tipo de mensagem informacional e relevante ao usuário após executar uma ação deve ser transmitida sem que haja mudança de foco no elemento que originou a informação. Nota: ver critério completo para identificar exemplos e casos de uso.", comment: "Descrição resumidada diretriz"), link: NSLocalizedString("https://www.w3.org/Translations/WCAG20-pt-PT/WCAG20-pt-PT-20141024/#ensure-compat", comment: ""), image: nil)


let allCards = [card1,
                card2,
                card3,
                card4,
                card5,
                card6,
                card7,
                card8,
                card9,
                card10,
                card11,
                card12,
                card13,
                card14,
                card15,
                card16,
                card17,
                card18,
                card19,
                card20,
                card21,
                card22,
                card23,
                card24,
                card25,
                card26,
                card27,
                card28,
                card29,
                card30,
                card31,
                card32,
                card33,
                card34,
                card35,
                card36,
                card37,
                card38,
                card39,
                card40,
                card41,
                card42,
                card43,
                card44,
                card45,
                card46,
                card47,
                card48,
                card49,
                card50,
                card51,
                card52,
                card53,
                card54,
                card55,
                card56,
                card57,
                card58,
                card59,
                card60,
                card61,
                card62,
                card63,
                card64,
                card65,
                card66,
                card67,
                card68,
                card69,
                card70,
                card71,
                card72,
                card73,
                card74,
                card75,
                card76,
                card77,
                card78]

let listaPrinciple: [String: [Card]] = Dictionary(grouping: allCards) { (element) -> String in
    return element.title.name()
}































