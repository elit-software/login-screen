protocol LoginServiceDelegate: class {
    func credentialsAreValid()
    func credentialsAreNotValid()
}
