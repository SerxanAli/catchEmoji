import UIKit

class ViewController: UIViewController {

    
    // birinci Ders
    
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(haraket), userInfo: nil, repeats: true)
        
        
        
    }
    
    
    @objc func haraket(){
        
        //
        
    }


}

