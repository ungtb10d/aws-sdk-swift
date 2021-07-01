// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Page: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case lineRange = "lineRange"
        case offsetRange = "offsetRange"
        case pageNumber = "pageNumber"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let lineRange = lineRange {
            try encodeContainer.encode(lineRange, forKey: .lineRange)
        }
        if let offsetRange = offsetRange {
            try encodeContainer.encode(offsetRange, forKey: .offsetRange)
        }
        if pageNumber != 0 {
            try encodeContainer.encode(pageNumber, forKey: .pageNumber)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let lineRangeDecoded = try containerValues.decodeIfPresent(Range.self, forKey: .lineRange)
        lineRange = lineRangeDecoded
        let offsetRangeDecoded = try containerValues.decodeIfPresent(Range.self, forKey: .offsetRange)
        offsetRange = offsetRangeDecoded
        let pageNumberDecoded = try containerValues.decode(Int.self, forKey: .pageNumber)
        pageNumber = pageNumberDecoded
    }
}