// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct OpsItemAlreadyExistsExceptionBody: Equatable {
    public let message: String?
    public let opsItemId: String?
}

extension OpsItemAlreadyExistsExceptionBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case message = "Message"
        case opsItemId = "OpsItemId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
        let opsItemIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .opsItemId)
        opsItemId = opsItemIdDecoded
    }
}