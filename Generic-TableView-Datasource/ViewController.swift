import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
     let viewModel: ViewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = viewModel.dataSource
        tableView.reloadData()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

}

