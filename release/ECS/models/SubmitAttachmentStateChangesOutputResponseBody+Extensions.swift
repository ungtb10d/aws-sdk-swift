// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct SubmitAttachmentStateChangesOutputResponseBody: Equatable {
    public let acknowledgment: String?
}

extension SubmitAttachmentStateChangesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case acknowledgment
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let acknowledgmentDecoded = try containerValues.decodeIfPresent(String.self, forKey: .acknowledgment)
        acknowledgment = acknowledgmentDecoded
    }
}