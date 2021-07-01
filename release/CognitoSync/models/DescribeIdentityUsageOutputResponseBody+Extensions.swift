// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeIdentityUsageOutputResponseBody: Equatable {
    public let identityUsage: IdentityUsage?
}

extension DescribeIdentityUsageOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case identityUsage = "IdentityUsage"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let identityUsageDecoded = try containerValues.decodeIfPresent(IdentityUsage.self, forKey: .identityUsage)
        identityUsage = identityUsageDecoded
    }
}