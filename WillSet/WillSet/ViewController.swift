import UIKit

class ViewController: UIViewController {

    private var text:Int = 300 {
        willSet {
            label1.text = "\(text)"
            label2.text = "\(newValue)"
        }
        didSet {
            label2.text = "\(text)"
        }
    }
 
    let label1 = UILabel(frame: CGRect(x: 50, y: 150, width: 200, height: 20))
    let label2 = UILabel(frame:CGRect(x: 50, y: 230, width: 200, height: 20))
    override func viewDidLoad() {
        super.viewDidLoad()
       label2.text = ""
       labelOne()
       labelTwo()
       
        DispatchQueue.main.asyncAfter(deadline: .now()+10) {
            self.text = 400
        }
        
    }
    
    func labelOne() {
        view.addSubview(label1)
        label1.text = String(text)
        label1.textAlignment = .center
        label1.layer.backgroundColor = UIColor.red.cgColor
    }

    func labelTwo() {
        view.addSubview(label2)
        label2.text = ""
        label2.textAlignment = .center
        label2.layer.backgroundColor = UIColor.red.cgColor
    }
    
}

