import UIKit
//https://stackoverflow.com/questions/20449256/how-does-clipstobounds-work
class ViewController: UIViewController {
    
    @IBOutlet weak var View1: UIView!
    @IBOutlet weak var View2: UIView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.View1.clipsToBounds = true
        self.View2.clipsToBounds = false
    }
}
