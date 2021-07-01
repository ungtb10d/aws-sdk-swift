// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListChannelsModeratedByAppInstanceUserOutputResponseBody: Equatable {
    public let channels: [ChannelModeratedByAppInstanceUserSummary]?
    public let nextToken: String?
}

extension ListChannelsModeratedByAppInstanceUserOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case channels = "Channels"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let channelsContainer = try containerValues.decodeIfPresent([ChannelModeratedByAppInstanceUserSummary?].self, forKey: .channels)
        var channelsDecoded0:[ChannelModeratedByAppInstanceUserSummary]? = nil
        if let channelsContainer = channelsContainer {
            channelsDecoded0 = [ChannelModeratedByAppInstanceUserSummary]()
            for structure0 in channelsContainer {
                if let structure0 = structure0 {
                    channelsDecoded0?.append(structure0)
                }
            }
        }
        channels = channelsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}