
class ProductResource: BaseResource {
    var id: Int = 0
    var name: String = ""

    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}
