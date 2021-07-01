// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ResourceNotFoundExceptionBody: Equatable {
    public let message: String?
    public let resourceType: String?
}

extension ResourceNotFoundExceptionBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case message = "Message"
        case resourceType = "ResourceType"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
        let resourceTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceType)
        resourceType = resourceTypeDecoded
    }
}