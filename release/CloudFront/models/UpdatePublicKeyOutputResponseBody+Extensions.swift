// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdatePublicKeyOutputResponseBody: Equatable {
    public let publicKey: PublicKey?
}

extension UpdatePublicKeyOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case publicKey = "PublicKey"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let publicKeyDecoded = try containerValues.decodeIfPresent(PublicKey.self, forKey: .publicKey)
        publicKey = publicKeyDecoded
    }
}