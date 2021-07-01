// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PutProfileObjectOutputResponseBody: Equatable {
    public let profileObjectUniqueKey: String?
}

extension PutProfileObjectOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case profileObjectUniqueKey = "ProfileObjectUniqueKey"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let profileObjectUniqueKeyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .profileObjectUniqueKey)
        profileObjectUniqueKey = profileObjectUniqueKeyDecoded
    }
}