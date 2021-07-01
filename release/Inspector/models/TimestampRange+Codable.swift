// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TimestampRange: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case beginDate
        case endDate
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let beginDate = beginDate {
            try encodeContainer.encode(beginDate.timeIntervalSince1970, forKey: .beginDate)
        }
        if let endDate = endDate {
            try encodeContainer.encode(endDate.timeIntervalSince1970, forKey: .endDate)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let beginDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .beginDate)
        beginDate = beginDateDecoded
        let endDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .endDate)
        endDate = endDateDecoded
    }
}