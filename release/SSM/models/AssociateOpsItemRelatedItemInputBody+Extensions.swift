// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct AssociateOpsItemRelatedItemInputBody: Equatable {
    public let opsItemId: String?
    public let associationType: String?
    public let resourceType: String?
    public let resourceUri: String?
}

extension AssociateOpsItemRelatedItemInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case associationType = "AssociationType"
        case opsItemId = "OpsItemId"
        case resourceType = "ResourceType"
        case resourceUri = "ResourceUri"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let opsItemIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .opsItemId)
        opsItemId = opsItemIdDecoded
        let associationTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .associationType)
        associationType = associationTypeDecoded
        let resourceTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceType)
        resourceType = resourceTypeDecoded
        let resourceUriDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceUri)
        resourceUri = resourceUriDecoded
    }
}