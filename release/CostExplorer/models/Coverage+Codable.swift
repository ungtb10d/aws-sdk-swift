// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Coverage: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case coverageCost = "CoverageCost"
        case coverageHours = "CoverageHours"
        case coverageNormalizedUnits = "CoverageNormalizedUnits"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let coverageCost = coverageCost {
            try encodeContainer.encode(coverageCost, forKey: .coverageCost)
        }
        if let coverageHours = coverageHours {
            try encodeContainer.encode(coverageHours, forKey: .coverageHours)
        }
        if let coverageNormalizedUnits = coverageNormalizedUnits {
            try encodeContainer.encode(coverageNormalizedUnits, forKey: .coverageNormalizedUnits)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let coverageHoursDecoded = try containerValues.decodeIfPresent(CoverageHours.self, forKey: .coverageHours)
        coverageHours = coverageHoursDecoded
        let coverageNormalizedUnitsDecoded = try containerValues.decodeIfPresent(CoverageNormalizedUnits.self, forKey: .coverageNormalizedUnits)
        coverageNormalizedUnits = coverageNormalizedUnitsDecoded
        let coverageCostDecoded = try containerValues.decodeIfPresent(CoverageCost.self, forKey: .coverageCost)
        coverageCost = coverageCostDecoded
    }
}