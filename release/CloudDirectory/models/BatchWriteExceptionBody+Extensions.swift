// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct BatchWriteExceptionBody: Equatable {
    public let index: Int
    public let type: BatchWriteExceptionType?
    public let message: String?
}

extension BatchWriteExceptionBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case index = "Index"
        case message = "Message"
        case type = "Type"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let indexDecoded = try containerValues.decode(Int.self, forKey: .index)
        index = indexDecoded
        let typeDecoded = try containerValues.decodeIfPresent(BatchWriteExceptionType.self, forKey: .type)
        type = typeDecoded
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
    }
}