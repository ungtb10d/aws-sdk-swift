// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeConfigurationAggregatorsOutputResponseBody: Equatable {
    public let configurationAggregators: [ConfigurationAggregator]?
    public let nextToken: String?
}

extension DescribeConfigurationAggregatorsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case configurationAggregators = "ConfigurationAggregators"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let configurationAggregatorsContainer = try containerValues.decodeIfPresent([ConfigurationAggregator?].self, forKey: .configurationAggregators)
        var configurationAggregatorsDecoded0:[ConfigurationAggregator]? = nil
        if let configurationAggregatorsContainer = configurationAggregatorsContainer {
            configurationAggregatorsDecoded0 = [ConfigurationAggregator]()
            for structure0 in configurationAggregatorsContainer {
                if let structure0 = structure0 {
                    configurationAggregatorsDecoded0?.append(structure0)
                }
            }
        }
        configurationAggregators = configurationAggregatorsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}