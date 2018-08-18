import SwiftyJSON

extension Token {

    init(data: AnyObject?) {
        let data = data as? NSData ?? NSData()
        let json = JSON(data: data as Data)
        self.init(json: json)
    }

    init(json: JSON) {
        token = json["token"].stringValue
    }
}
