//
//  Speak.swift
//  KakaoSpeechSample
//
//  Created by 전해동 on 2020/12/29.
//

import Foundation
import KakaoNewtoneSpeech

extension ViewController {
    func onFinished() {
        DispatchQueue.main.async {
            self.speakButton.setTitle("말하기", for: .normal)
            self.speakButton.backgroundColor = .systemIndigo
        }
    }
    func onError(_ errorCode: MTTextToSpeechError, message: String!) {
        print("ERROR - \(errorCode), \(message!)")
        return
    }
}
