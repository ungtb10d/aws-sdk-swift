// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DuplicateRequestBody: Equatable {
    public let message: String?
    public let duplicateOperationId: String?
}

extension DuplicateRequestBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case duplicateOperationId = "DuplicateOperationId"
        case message = "Message"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
        let duplicateOperationIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .duplicateOperationId)
        duplicateOperationId = duplicateOperationIdDecoded
    }
}