// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetSignalingChannelEndpointOutputResponseBody: Equatable {
    public let resourceEndpointList: [ResourceEndpointListItem]?
}

extension GetSignalingChannelEndpointOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case resourceEndpointList = "ResourceEndpointList"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let resourceEndpointListContainer = try containerValues.decodeIfPresent([ResourceEndpointListItem?].self, forKey: .resourceEndpointList)
        var resourceEndpointListDecoded0:[ResourceEndpointListItem]? = nil
        if let resourceEndpointListContainer = resourceEndpointListContainer {
            resourceEndpointListDecoded0 = [ResourceEndpointListItem]()
            for structure0 in resourceEndpointListContainer {
                if let structure0 = structure0 {
                    resourceEndpointListDecoded0?.append(structure0)
                }
            }
        }
        resourceEndpointList = resourceEndpointListDecoded0
    }
}