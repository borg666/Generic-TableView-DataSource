class ViewModel {

    var dataSource: TableViewDataSource<ProductResource, ProductCell> =
        TableViewDataSource<ProductResource, ProductCell>()

    init() {
        let products: [ProductResource] = createProducts()
        dataSource.loadItems(with: products )
    }



    func createProducts() -> [ProductResource] {
        return [ProductResource(id: 1, name: "ProdA"),
                ProductResource(id: 2, name: "ProdB"),
                ProductResource(id: 3, name: "ProdC")]
    }
}
