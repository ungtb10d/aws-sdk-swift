// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CustomRoutingEndpointGroup: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case destinationDescriptions = "DestinationDescriptions"
        case endpointDescriptions = "EndpointDescriptions"
        case endpointGroupArn = "EndpointGroupArn"
        case endpointGroupRegion = "EndpointGroupRegion"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let destinationDescriptions = destinationDescriptions {
            var destinationDescriptionsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .destinationDescriptions)
            for customroutingdestinationdescriptions0 in destinationDescriptions {
                try destinationDescriptionsContainer.encode(customroutingdestinationdescriptions0)
            }
        }
        if let endpointDescriptions = endpointDescriptions {
            var endpointDescriptionsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .endpointDescriptions)
            for customroutingendpointdescriptions0 in endpointDescriptions {
                try endpointDescriptionsContainer.encode(customroutingendpointdescriptions0)
            }
        }
        if let endpointGroupArn = endpointGroupArn {
            try encodeContainer.encode(endpointGroupArn, forKey: .endpointGroupArn)
        }
        if let endpointGroupRegion = endpointGroupRegion {
            try encodeContainer.encode(endpointGroupRegion, forKey: .endpointGroupRegion)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let endpointGroupArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .endpointGroupArn)
        endpointGroupArn = endpointGroupArnDecoded
        let endpointGroupRegionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .endpointGroupRegion)
        endpointGroupRegion = endpointGroupRegionDecoded
        let destinationDescriptionsContainer = try containerValues.decodeIfPresent([CustomRoutingDestinationDescription?].self, forKey: .destinationDescriptions)
        var destinationDescriptionsDecoded0:[CustomRoutingDestinationDescription]? = nil
        if let destinationDescriptionsContainer = destinationDescriptionsContainer {
            destinationDescriptionsDecoded0 = [CustomRoutingDestinationDescription]()
            for structure0 in destinationDescriptionsContainer {
                if let structure0 = structure0 {
                    destinationDescriptionsDecoded0?.append(structure0)
                }
            }
        }
        destinationDescriptions = destinationDescriptionsDecoded0
        let endpointDescriptionsContainer = try containerValues.decodeIfPresent([CustomRoutingEndpointDescription?].self, forKey: .endpointDescriptions)
        var endpointDescriptionsDecoded0:[CustomRoutingEndpointDescription]? = nil
        if let endpointDescriptionsContainer = endpointDescriptionsContainer {
            endpointDescriptionsDecoded0 = [CustomRoutingEndpointDescription]()
            for structure0 in endpointDescriptionsContainer {
                if let structure0 = structure0 {
                    endpointDescriptionsDecoded0?.append(structure0)
                }
            }
        }
        endpointDescriptions = endpointDescriptionsDecoded0
    }
}