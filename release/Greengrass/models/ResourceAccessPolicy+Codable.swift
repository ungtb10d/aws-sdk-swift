// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ResourceAccessPolicy: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case permission = "Permission"
        case resourceId = "ResourceId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let permission = permission {
            try encodeContainer.encode(permission.rawValue, forKey: .permission)
        }
        if let resourceId = resourceId {
            try encodeContainer.encode(resourceId, forKey: .resourceId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let permissionDecoded = try containerValues.decodeIfPresent(Permission.self, forKey: .permission)
        permission = permissionDecoded
        let resourceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceId)
        resourceId = resourceIdDecoded
    }
}