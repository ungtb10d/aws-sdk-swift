// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeBrokerInstanceOptionsOutputResponseBody: Equatable {
    public let brokerInstanceOptions: [BrokerInstanceOption]?
    public let maxResults: Int
    public let nextToken: String?
}

extension DescribeBrokerInstanceOptionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case brokerInstanceOptions = "brokerInstanceOptions"
        case maxResults = "maxResults"
        case nextToken = "nextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let brokerInstanceOptionsContainer = try containerValues.decodeIfPresent([BrokerInstanceOption?].self, forKey: .brokerInstanceOptions)
        var brokerInstanceOptionsDecoded0:[BrokerInstanceOption]? = nil
        if let brokerInstanceOptionsContainer = brokerInstanceOptionsContainer {
            brokerInstanceOptionsDecoded0 = [BrokerInstanceOption]()
            for structure0 in brokerInstanceOptionsContainer {
                if let structure0 = structure0 {
                    brokerInstanceOptionsDecoded0?.append(structure0)
                }
            }
        }
        brokerInstanceOptions = brokerInstanceOptionsDecoded0
        let maxResultsDecoded = try containerValues.decode(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}