enum Patty: Int {
    case single = 1
    case double
    case triple

    var pattyCountWithExtraPatty: Int {
        return self.rawValue + 1
    }
}
print(Patty.triple.pattyCountWithExtraPatty)