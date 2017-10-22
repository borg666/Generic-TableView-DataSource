import UIKit
import Foundation

class TableViewDataSource<RESOURCE: BaseResource, CELL: BaseCell>: NSObject, UITableViewDataSource {

    var items: [BaseResource] = [BaseResource]()

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CELL = tableView.dequeueReusableCell(withIdentifier: CELL.identifier, for: indexPath) as! CELL
        cell.configureCell(with: items[indexPath.row])
        return cell as! UITableViewCell
    }

    func loadItems(with newItems: [BaseResource]) {
        if !newItems.isEmpty {
            items.removeAll()
            items.append(contentsOf: newItems)
        }
    }

}
