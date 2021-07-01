// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ValidationExceptionField: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case message = "Message"
        case name = "Name"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let message = message {
            try encodeContainer.encode(message, forKey: .message)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
    }
}