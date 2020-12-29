//
//  UI.swift
//  KakaoSpeechSample
//
//  Created by 전해동 on 2020/12/29.
//

import UIKit

extension ViewController {
    func configureUI() {
        view.backgroundColor = #colorLiteral(red: 0.1889419258, green: 0.1871659458, blue: 0.2520412803, alpha: 1)
        
        view.addSubview(inputTextView)
        inputTextView.heightAnchor.constraint(equalToConstant: 400).isActive = true
        inputTextView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        inputTextView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 10).isActive = true
        inputTextView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -10).isActive = true
        
        view.addSubview(speakButton)
        speakButton.topAnchor.constraint(equalTo: inputTextView.bottomAnchor, constant: 20).isActive = true
        speakButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
    }
}
