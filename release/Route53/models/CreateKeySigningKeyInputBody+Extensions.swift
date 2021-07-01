// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateKeySigningKeyInputBody: Equatable {
    public let callerReference: String?
    public let hostedZoneId: String?
    public let keyManagementServiceArn: String?
    public let name: String?
    public let status: String?
}

extension CreateKeySigningKeyInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case callerReference = "CallerReference"
        case hostedZoneId = "HostedZoneId"
        case keyManagementServiceArn = "KeyManagementServiceArn"
        case name = "Name"
        case status = "Status"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let callerReferenceDecoded = try containerValues.decodeIfPresent(String.self, forKey: .callerReference)
        callerReference = callerReferenceDecoded
        let hostedZoneIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .hostedZoneId)
        hostedZoneId = hostedZoneIdDecoded
        let keyManagementServiceArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .keyManagementServiceArn)
        keyManagementServiceArn = keyManagementServiceArnDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let statusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .status)
        status = statusDecoded
    }
}