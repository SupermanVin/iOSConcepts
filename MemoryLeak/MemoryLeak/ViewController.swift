
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        buttonSetUP()
    }

    func buttonSetUP() {
        let button = UIButton()
    
        button.setTitle("ClickMe", for: .normal)
        button.frame = CGRect(x: 0, y: 0, width: 250, height: 40)
        button.center = view.center
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc private func didTapButton() {
        
    }
}

