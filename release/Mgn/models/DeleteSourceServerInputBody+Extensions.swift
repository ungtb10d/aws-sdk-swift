// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteSourceServerInputBody: Equatable {
    public let sourceServerID: String?
}

extension DeleteSourceServerInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case sourceServerID
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sourceServerIDDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sourceServerID)
        sourceServerID = sourceServerIDDecoded
    }
}