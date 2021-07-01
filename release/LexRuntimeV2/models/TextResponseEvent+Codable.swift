// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TextResponseEvent: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case eventId
        case messages
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let eventId = eventId {
            try encodeContainer.encode(eventId, forKey: .eventId)
        }
        if let messages = messages {
            var messagesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .messages)
            for messages0 in messages {
                try messagesContainer.encode(messages0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messagesContainer = try containerValues.decodeIfPresent([Message?].self, forKey: .messages)
        var messagesDecoded0:[Message]? = nil
        if let messagesContainer = messagesContainer {
            messagesDecoded0 = [Message]()
            for structure0 in messagesContainer {
                if let structure0 = structure0 {
                    messagesDecoded0?.append(structure0)
                }
            }
        }
        messages = messagesDecoded0
        let eventIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .eventId)
        eventId = eventIdDecoded
    }
}