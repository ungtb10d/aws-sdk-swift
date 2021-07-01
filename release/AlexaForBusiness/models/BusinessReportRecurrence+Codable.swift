// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension BusinessReportRecurrence: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case startDate = "StartDate"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let startDate = startDate {
            try encodeContainer.encode(startDate, forKey: .startDate)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let startDateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .startDate)
        startDate = startDateDecoded
    }
}