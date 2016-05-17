if Process.arguments.count != 3 {
    print("Usage: login USERNAME PASSWORD")
} else {
    let username = Process.arguments[1]
    let password = Process.arguments[2]
    let controller = LoginController(username: username, password: password)
    controller.login()
}
