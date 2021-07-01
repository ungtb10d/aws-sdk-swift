// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListAliasesInputBody: Equatable {
    public let keyId: String?
    public let limit: Int?
    public let marker: String?
}

extension ListAliasesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case keyId = "KeyId"
        case limit = "Limit"
        case marker = "Marker"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let keyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .keyId)
        keyId = keyIdDecoded
        let limitDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .limit)
        limit = limitDecoded
        let markerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .marker)
        marker = markerDecoded
    }
}