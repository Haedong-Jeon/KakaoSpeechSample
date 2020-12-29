//
//  Selector.swift
//  KakaoSpeechSample
//
//  Created by 전해동 on 2020/12/29.
//

import Foundation

extension ViewController {
    @objc func speak() {
        if inputTextView.text.isEmpty { return }
        if isSpeaking {
            speakerClient?.stop()
            self.speakButton.setTitle("말하기", for: .normal)
            self.speakButton.backgroundColor = .systemIndigo
        } else {
            speakerClient!.play(inputTextView.text)
            self.speakButton.setTitle("그만", for: .normal)
            self.speakButton.backgroundColor = .systemPink
        }
    }
}
