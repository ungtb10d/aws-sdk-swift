// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AndroidPushNotificationTemplate: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case action = "Action"
        case body = "Body"
        case imageIconUrl = "ImageIconUrl"
        case imageUrl = "ImageUrl"
        case rawContent = "RawContent"
        case smallImageIconUrl = "SmallImageIconUrl"
        case sound = "Sound"
        case title = "Title"
        case url = "Url"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let action = action {
            try encodeContainer.encode(action.rawValue, forKey: .action)
        }
        if let body = body {
            try encodeContainer.encode(body, forKey: .body)
        }
        if let imageIconUrl = imageIconUrl {
            try encodeContainer.encode(imageIconUrl, forKey: .imageIconUrl)
        }
        if let imageUrl = imageUrl {
            try encodeContainer.encode(imageUrl, forKey: .imageUrl)
        }
        if let rawContent = rawContent {
            try encodeContainer.encode(rawContent, forKey: .rawContent)
        }
        if let smallImageIconUrl = smallImageIconUrl {
            try encodeContainer.encode(smallImageIconUrl, forKey: .smallImageIconUrl)
        }
        if let sound = sound {
            try encodeContainer.encode(sound, forKey: .sound)
        }
        if let title = title {
            try encodeContainer.encode(title, forKey: .title)
        }
        if let url = url {
            try encodeContainer.encode(url, forKey: .url)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let actionDecoded = try containerValues.decodeIfPresent(Action.self, forKey: .action)
        action = actionDecoded
        let bodyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .body)
        body = bodyDecoded
        let imageIconUrlDecoded = try containerValues.decodeIfPresent(String.self, forKey: .imageIconUrl)
        imageIconUrl = imageIconUrlDecoded
        let imageUrlDecoded = try containerValues.decodeIfPresent(String.self, forKey: .imageUrl)
        imageUrl = imageUrlDecoded
        let rawContentDecoded = try containerValues.decodeIfPresent(String.self, forKey: .rawContent)
        rawContent = rawContentDecoded
        let smallImageIconUrlDecoded = try containerValues.decodeIfPresent(String.self, forKey: .smallImageIconUrl)
        smallImageIconUrl = smallImageIconUrlDecoded
        let soundDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sound)
        sound = soundDecoded
        let titleDecoded = try containerValues.decodeIfPresent(String.self, forKey: .title)
        title = titleDecoded
        let urlDecoded = try containerValues.decodeIfPresent(String.self, forKey: .url)
        url = urlDecoded
    }
}