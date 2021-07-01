// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateByteMatchSetOutputResponseBody: Equatable {
    public let byteMatchSet: ByteMatchSet?
    public let changeToken: String?
}

extension CreateByteMatchSetOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case byteMatchSet = "ByteMatchSet"
        case changeToken = "ChangeToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let byteMatchSetDecoded = try containerValues.decodeIfPresent(ByteMatchSet.self, forKey: .byteMatchSet)
        byteMatchSet = byteMatchSetDecoded
        let changeTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .changeToken)
        changeToken = changeTokenDecoded
    }
}