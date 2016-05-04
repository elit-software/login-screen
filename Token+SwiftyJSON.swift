import SwiftyJSON

extension Token {

    init(data: NSData?) {
        let data = data ?? NSData()
        let json = JSON(data: data)
        self.init(json: json)
    }

    init(json: JSON) {
        self.token = json["token"].stringValue
    }
}
