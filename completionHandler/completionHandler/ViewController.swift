import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       let reviewer =  handlerWithReturn(codereviewer: "Yiy-Fahan")
        print("Comment:by - \(reviewer)")
        
  handler(name: "Garreth") { name in
           print("Comment:by - \(name)")
        }

    }
 //handlerFuncationWithReturn
    // after return we will not able to use the
      
    func handlerWithReturn(codereviewer:String) -> String {
        print("Entered Codereview state")
        print("Reviewer:\(codereviewer)")
        return "Please rename the cardInfo \(codereviewer)"
        print("Sure \(codereviewer), i will modify it.")
    }
   
    //Completion Handler
    
    func handler(name:String , completion:(_ result:String ) -> Void) {
        print("Entered Codereview state")
        print("Reviewer:\(name)")
        completion("Please rename the cardInfo \(name)")
        print("Sure \(name), i will modify it.")
    }
    
}

