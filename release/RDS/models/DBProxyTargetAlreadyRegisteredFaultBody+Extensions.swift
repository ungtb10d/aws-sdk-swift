// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DBProxyTargetAlreadyRegisteredFaultBody: Equatable {
    public let message: String?
}

extension DBProxyTargetAlreadyRegisteredFaultBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case message
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
    }
}