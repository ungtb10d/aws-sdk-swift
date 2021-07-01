// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SNSDestination: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case topicARN = "TopicARN"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let topicARN = topicARN {
            try container.encode(topicARN, forKey: Key("TopicARN"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let topicARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .topicARN)
        topicARN = topicARNDecoded
    }
}