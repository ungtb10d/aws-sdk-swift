// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension HandshakeFilter: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case actionType = "ActionType"
        case parentHandshakeId = "ParentHandshakeId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let actionType = actionType {
            try encodeContainer.encode(actionType.rawValue, forKey: .actionType)
        }
        if let parentHandshakeId = parentHandshakeId {
            try encodeContainer.encode(parentHandshakeId, forKey: .parentHandshakeId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let actionTypeDecoded = try containerValues.decodeIfPresent(ActionType.self, forKey: .actionType)
        actionType = actionTypeDecoded
        let parentHandshakeIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .parentHandshakeId)
        parentHandshakeId = parentHandshakeIdDecoded
    }
}