// Resource : https://www.youtube.com/watch?v=T0nbHBTQ5Ss

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Diff sync vs Async
        
        //Sync
//        let queue1 = DispatchQueue(label: "first")
//        queue1.sync {
//            sleep(5)
//            print("This is first queue")
//        }
//        let queue2 = DispatchQueue(label: "Second")
//        queue2.sync {
//            sleep(2)
//            print("This is second queue")
//        }
//        print("All queue are executed")
// Result
//        This is first queue
//        This is second queue
//        All queue are executed
        
         //Async
//                let queue1 = DispatchQueue(label: "first")
//                queue1.async {
//                    sleep(5)
//                    print("This is first queue")
//                }
//                let queue2 = DispatchQueue(label: "Second")
//                queue2.async {
//                    sleep(2)
//                    print("This is second queue")
//                }
//                print("All queue are executed")
//        All queue are executed
//        This is second queue
//        This is first queue
        
        let group = DispatchGroup()
       
        let queue1 = DispatchQueue(label: "first")
        queue1.async(group: group){
            sleep(5)
            print("This is the first queue")
        }
        
        let queue2 = DispatchQueue(label: "second")
        queue2.async(group: group) {
            sleep(2)
            print("This is second queue")
        }
        
//        group.notify(queue:DispatchQueue.main) {
//            print("All queue is executed")
//            self.view.backgroundColor = .brown 
//        }
        

    }
    @IBAction func greenButtonTapped() {
        //        sleep(5)
        //        view.backgroundColor = .green
        let queue = DispatchQueue(label: "BackgroundClourChange")
        
        queue.async {
            sleep(5)
            DispatchQueue.main.async {
                self.view.backgroundColor = .green
            }
        }
    }
    
    @IBAction func redButtonTapped() {
        view.backgroundColor = .red
    }
}

