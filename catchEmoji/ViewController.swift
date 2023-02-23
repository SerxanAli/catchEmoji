import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Emoji: UILabel!
    @IBOutlet weak var Score: UILabel!
    
    var score = 0 {
        didSet {
            Score.text = "Score: \(score)"
        }
    }
    
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 0.61, target: self, selector: #selector(haraket), userInfo: nil, repeats: true)
        
        
        emojiTiklanmasi()
        
    }
    
    
    @objc func haraket(){
        
        HereketKordinati()
        Emoji.text = "😃"
        
        
    }
    
    func emojiTiklanmasi(){
        
        Emoji.isUserInteractionEnabled = true
        let gestAlqilayici = UITapGestureRecognizer(target: self, action: #selector(EmojiyeTiklandi))
        Emoji.addGestureRecognizer(gestAlqilayici)
    }
    
    @objc func EmojiyeTiklandi(){
        
        Emoji.text = "🤬"
        HereketKordinati()
        //   print("Taped")
        score += 1
        
    }
    
    
    func HereketKordinati(){
        
        Emoji.layer.position.x = CGFloat(Int.random(in: 20...300))
        Emoji.layer.position.y = CGFloat(Int.random(in: 20...468))
        
        
    }
    
    
}

