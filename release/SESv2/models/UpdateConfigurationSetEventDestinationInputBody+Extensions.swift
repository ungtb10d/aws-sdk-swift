// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateConfigurationSetEventDestinationInputBody: Equatable {
    public let eventDestination: EventDestinationDefinition?
}

extension UpdateConfigurationSetEventDestinationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case eventDestination = "EventDestination"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let eventDestinationDecoded = try containerValues.decodeIfPresent(EventDestinationDefinition.self, forKey: .eventDestination)
        eventDestination = eventDestinationDecoded
    }
}