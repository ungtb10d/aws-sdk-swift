// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension NotificationSpecification: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case destination = "Destination"
        case eventTypes = "EventTypes"
        case transport = "Transport"
        case version = "Version"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let destination = destination {
            try encodeContainer.encode(destination, forKey: .destination)
        }
        if let eventTypes = eventTypes {
            var eventTypesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .eventTypes)
            for eventtypelist0 in eventTypes {
                try eventTypesContainer.encode(eventtypelist0.rawValue)
            }
        }
        if let transport = transport {
            try encodeContainer.encode(transport.rawValue, forKey: .transport)
        }
        if let version = version {
            try encodeContainer.encode(version, forKey: .version)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let destinationDecoded = try containerValues.decodeIfPresent(String.self, forKey: .destination)
        destination = destinationDecoded
        let transportDecoded = try containerValues.decodeIfPresent(NotificationTransport.self, forKey: .transport)
        transport = transportDecoded
        let versionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .version)
        version = versionDecoded
        let eventTypesContainer = try containerValues.decodeIfPresent([EventType?].self, forKey: .eventTypes)
        var eventTypesDecoded0:[EventType]? = nil
        if let eventTypesContainer = eventTypesContainer {
            eventTypesDecoded0 = [EventType]()
            for string0 in eventTypesContainer {
                if let string0 = string0 {
                    eventTypesDecoded0?.append(string0)
                }
            }
        }
        eventTypes = eventTypesDecoded0
    }
}