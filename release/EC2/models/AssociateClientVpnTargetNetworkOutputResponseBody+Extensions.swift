// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct AssociateClientVpnTargetNetworkOutputResponseBody: Equatable {
    public let associationId: String?
    public let status: AssociationStatus?
}

extension AssociateClientVpnTargetNetworkOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case associationId = "associationId"
        case status = "status"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let associationIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .associationId)
        associationId = associationIdDecoded
        let statusDecoded = try containerValues.decodeIfPresent(AssociationStatus.self, forKey: .status)
        status = statusDecoded
    }
}