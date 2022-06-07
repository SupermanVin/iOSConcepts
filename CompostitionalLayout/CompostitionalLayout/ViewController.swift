import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colletionView:UICollectionView!
    
    private let images:[UIImage] = Array(1...11).map { UIImage(named: String($0))!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colletionView.collectionViewLayout = createLayout()
    }
    
    private func createLayout() ->  UICollectionViewCompositionalLayout {
        //item
        let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
        //group
        let group  = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.3)), subitem: item, count:2)
        //section
        let section = NSCollectionLayoutSection(group: group)
        //return
        return UICollectionViewCompositionalLayout(section: section)
    }
}

extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        cell.setup(image: images[indexPath.row])
        return cell
    }
    
}


class MyCollectionViewCell:UICollectionViewCell {
    
    @IBOutlet weak var cellImageView:UIImageView!
    
    func setup(image:UIImage) {
        cellImageView.image = image
    }
    
}
