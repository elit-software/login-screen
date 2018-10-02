if CommandLine.arguments.count != 3 {
    print("Usage: login USERNAME PASSWORD")
} else {
    let username = CommandLine.arguments[1]
    let password = CommandLine.arguments[2]
    let controller = LoginController(username: username, password: password)
    controller.login()
}
