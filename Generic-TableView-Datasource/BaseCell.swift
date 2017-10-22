protocol BaseCell {

    static var identifier: String { get }

    func configureCell(with resource: BaseResource)

}
