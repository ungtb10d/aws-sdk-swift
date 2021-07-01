// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DisassociateAssetsInputBody: Equatable {
    public let hierarchyId: String?
    public let childAssetId: String?
    public let clientToken: String?
}

extension DisassociateAssetsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case childAssetId
        case clientToken
        case hierarchyId
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let hierarchyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .hierarchyId)
        hierarchyId = hierarchyIdDecoded
        let childAssetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .childAssetId)
        childAssetId = childAssetIdDecoded
        let clientTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientToken)
        clientToken = clientTokenDecoded
    }
}