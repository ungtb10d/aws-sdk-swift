// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetAnalyzerOutputResponseBody: Equatable {
    public let analyzer: AnalyzerSummary?
}

extension GetAnalyzerOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case analyzer
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let analyzerDecoded = try containerValues.decodeIfPresent(AnalyzerSummary.self, forKey: .analyzer)
        analyzer = analyzerDecoded
    }
}