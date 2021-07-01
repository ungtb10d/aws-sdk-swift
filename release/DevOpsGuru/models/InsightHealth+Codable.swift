// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension InsightHealth: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case meanTimeToRecoverInMilliseconds = "MeanTimeToRecoverInMilliseconds"
        case openProactiveInsights = "OpenProactiveInsights"
        case openReactiveInsights = "OpenReactiveInsights"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let meanTimeToRecoverInMilliseconds = meanTimeToRecoverInMilliseconds {
            try encodeContainer.encode(meanTimeToRecoverInMilliseconds, forKey: .meanTimeToRecoverInMilliseconds)
        }
        if openProactiveInsights != 0 {
            try encodeContainer.encode(openProactiveInsights, forKey: .openProactiveInsights)
        }
        if openReactiveInsights != 0 {
            try encodeContainer.encode(openReactiveInsights, forKey: .openReactiveInsights)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let openProactiveInsightsDecoded = try containerValues.decode(Int.self, forKey: .openProactiveInsights)
        openProactiveInsights = openProactiveInsightsDecoded
        let openReactiveInsightsDecoded = try containerValues.decode(Int.self, forKey: .openReactiveInsights)
        openReactiveInsights = openReactiveInsightsDecoded
        let meanTimeToRecoverInMillisecondsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .meanTimeToRecoverInMilliseconds)
        meanTimeToRecoverInMilliseconds = meanTimeToRecoverInMillisecondsDecoded
    }
}