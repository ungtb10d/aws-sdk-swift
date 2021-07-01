// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SuppressedDestinationSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case emailAddress = "EmailAddress"
        case lastUpdateTime = "LastUpdateTime"
        case reason = "Reason"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let emailAddress = emailAddress {
            try encodeContainer.encode(emailAddress, forKey: .emailAddress)
        }
        if let lastUpdateTime = lastUpdateTime {
            try encodeContainer.encode(lastUpdateTime.timeIntervalSince1970, forKey: .lastUpdateTime)
        }
        if let reason = reason {
            try encodeContainer.encode(reason.rawValue, forKey: .reason)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let emailAddressDecoded = try containerValues.decodeIfPresent(String.self, forKey: .emailAddress)
        emailAddress = emailAddressDecoded
        let reasonDecoded = try containerValues.decodeIfPresent(SuppressionListReason.self, forKey: .reason)
        reason = reasonDecoded
        let lastUpdateTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastUpdateTime)
        lastUpdateTime = lastUpdateTimeDecoded
    }
}