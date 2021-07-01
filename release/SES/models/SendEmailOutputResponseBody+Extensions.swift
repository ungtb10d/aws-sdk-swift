// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct SendEmailOutputResponseBody: Equatable {
    public let messageId: String?
}

extension SendEmailOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case messageId = "MessageId"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("SendEmailResult"))
        let messageIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .messageId)
        messageId = messageIdDecoded
    }
}