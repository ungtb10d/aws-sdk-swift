// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct LoopDetectedExceptionBody: Equatable {
    public let message: String?
}

extension LoopDetectedExceptionBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
    }
}