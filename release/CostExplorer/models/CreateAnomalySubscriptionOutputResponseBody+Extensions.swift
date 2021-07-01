// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateAnomalySubscriptionOutputResponseBody: Equatable {
    public let subscriptionArn: String?
}

extension CreateAnomalySubscriptionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case subscriptionArn = "SubscriptionArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let subscriptionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .subscriptionArn)
        subscriptionArn = subscriptionArnDecoded
    }
}