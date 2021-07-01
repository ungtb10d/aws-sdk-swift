// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PutSuppressedDestinationInputBody: Equatable {
    public let emailAddress: String?
    public let reason: SuppressionListReason?
}

extension PutSuppressedDestinationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case emailAddress = "EmailAddress"
        case reason = "Reason"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let emailAddressDecoded = try containerValues.decodeIfPresent(String.self, forKey: .emailAddress)
        emailAddress = emailAddressDecoded
        let reasonDecoded = try containerValues.decodeIfPresent(SuppressionListReason.self, forKey: .reason)
        reason = reasonDecoded
    }
}