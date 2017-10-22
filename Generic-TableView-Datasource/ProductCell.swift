import UIKit

class ProductCell: UITableViewCell, BaseCell {

    static var identifier: String = {
        return "ProductCell"
    }()
    @IBOutlet weak var name: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configureCell(with resource: BaseResource) {
        let productResource: ProductResource = resource as! ProductResource
        name.text = productResource.name
    }

}
