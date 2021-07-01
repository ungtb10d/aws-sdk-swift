// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateSubscriptionInputBody: Equatable {
    public let autoRenew: AutoRenew?
}

extension UpdateSubscriptionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case autoRenew = "AutoRenew"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let autoRenewDecoded = try containerValues.decodeIfPresent(AutoRenew.self, forKey: .autoRenew)
        autoRenew = autoRenewDecoded
    }
}