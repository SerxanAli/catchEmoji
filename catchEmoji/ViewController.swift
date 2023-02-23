import UIKit

class ViewController: UIViewController {

    
    // birinci Ders
    
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
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(haraket), userInfo: nil, repeats: true)
        
        
        
    }
    
    func emojiTiklanmasi(){
        
        
        
        
    }
    
    @objc func haraket(){
        
        //
        
        
    }


}

