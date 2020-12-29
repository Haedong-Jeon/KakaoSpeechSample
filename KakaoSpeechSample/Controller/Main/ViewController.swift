
import UIKit
import KakaoNewtoneSpeech

class ViewController: UIViewController, MTTextToSpeechDelegate {
    var inputTextView: UITextView = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.layer.borderWidth = 1
        textView.layer.borderColor = UIColor.white.cgColor
        textView.backgroundColor = .lightGray
        textView.font = UIFont.systemFont(ofSize: 20)
        textView.layer.cornerRadius = 10
        textView.clipsToBounds = true
        return textView
    }()
    var speakButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemIndigo
        button.setTitle("말하기", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 30).isActive = true
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        
        button.addTarget(self, action: #selector(speak), for: .touchUpInside)
        return button
    }()
    var speakerClient: MTTextToSpeechClient?
    var isSpeaking = false
    override func viewDidLoad() {
        super.viewDidLoad()
        let config: [AnyHashable: Any] = [
            "TextToSpeechConfigKeySpeechSpeed": NSNumber(1.0),
            "TextToSpeechConfigKeyVoiceType": NSString("TextToSpeechVoiceTypeWomanDialog"),
            "TextToSpeechConfigServiceMode": NSString("NewtoneTalk_2")
        ]
        configureUI()
        speakerClient = MTTextToSpeechClient(config: config)
        speakerClient!.delegate = self
    }
}

