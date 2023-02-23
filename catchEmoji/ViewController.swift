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
    
    var secrenWidth = 0
    var secrenHeight = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 0.61, target: self, selector: #selector(haraket), userInfo: nil, repeats: true)
        
        
        emojiTiklanmasi()
        
        secrenWidth = Int(view.frame.size.width)
        secrenHeight = Int(view.frame.size.height)
        
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
        //HereketKordinati()
        score += 1
        
        if score == 60 {
            performSegue(withIdentifier: "page3", sender: nil)
            timer.invalidate()
        }
    }
    
    
    func HereketKordinati(){
        
        Emoji.layer.position.x = CGFloat(Double.random(in: Double(secrenWidth) * 0.07...Double(secrenWidth) * 0.93))
        Emoji.layer.position.y = CGFloat(Double.random(in: Double(secrenHeight) * 0.14...Double(secrenHeight) * 0.90))
        
        // print("x-\(Emoji.layer.position.x)")
        // print("y-\(Emoji.layer.position.y)")
    }
    
    
}

