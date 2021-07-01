// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CloudWatchLoggingOption: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case logStreamARN = "LogStreamARN"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let logStreamARN = logStreamARN {
            try encodeContainer.encode(logStreamARN, forKey: .logStreamARN)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let logStreamARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .logStreamARN)
        logStreamARN = logStreamARNDecoded
    }
}