//https://www.youtube.com/watch?v=ELLekRhz84s&t=487s

import UIKit

enum ViewControllerCellType:Int, CaseIterable {
    case search = 0 , product = 1
}

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTableView()
    }
    
    private func setTableView() {
        self.tableview.register(UINib(nibName: "searchCell", bundle: nil), forCellReuseIdentifier: "searchCell")
        self.tableview.register(UINib(nibName: "ProductCell", bundle: nil), forCellReuseIdentifier: "ProductCell")
        self.tableview.delegate = self
        self.tableview.dataSource = self
        
    }
}


extension ViewController:UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return ViewControllerCellType.allCases.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if section == 0 {
//            return 1
//        } else {
//            return 5
//        }
        switch section {
        case ViewControllerCellType.search.rawValue:
            <#code#>
        default:
            <#code#>
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableview.dequeueReusableCell(withIdentifier: "" , for:indexPath) as! searchCell
            return cell
        }else{
            let cell = tableview.dequeueReusableCell(withIdentifier: "" , for:indexPath) as! ProductCell
            return cell
        }
        
        
    }
    
}
