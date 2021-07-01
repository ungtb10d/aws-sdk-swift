// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetKeyRotationStatusInputBody: Equatable {
    public let keyId: String?
}

extension GetKeyRotationStatusInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case keyId = "KeyId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let keyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .keyId)
        keyId = keyIdDecoded
    }
}