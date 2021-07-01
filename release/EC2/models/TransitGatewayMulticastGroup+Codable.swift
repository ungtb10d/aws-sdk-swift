// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TransitGatewayMulticastGroup: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case groupIpAddress = "groupIpAddress"
        case groupMember = "groupMember"
        case groupSource = "groupSource"
        case memberType = "memberType"
        case networkInterfaceId = "networkInterfaceId"
        case resourceId = "resourceId"
        case resourceOwnerId = "resourceOwnerId"
        case resourceType = "resourceType"
        case sourceType = "sourceType"
        case subnetId = "subnetId"
        case transitGatewayAttachmentId = "transitGatewayAttachmentId"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let groupIpAddress = groupIpAddress {
            try container.encode(groupIpAddress, forKey: Key("GroupIpAddress"))
        }
        if groupMember != false {
            try container.encode(groupMember, forKey: Key("GroupMember"))
        }
        if groupSource != false {
            try container.encode(groupSource, forKey: Key("GroupSource"))
        }
        if let memberType = memberType {
            try container.encode(memberType, forKey: Key("MemberType"))
        }
        if let networkInterfaceId = networkInterfaceId {
            try container.encode(networkInterfaceId, forKey: Key("NetworkInterfaceId"))
        }
        if let resourceId = resourceId {
            try container.encode(resourceId, forKey: Key("ResourceId"))
        }
        if let resourceOwnerId = resourceOwnerId {
            try container.encode(resourceOwnerId, forKey: Key("ResourceOwnerId"))
        }
        if let resourceType = resourceType {
            try container.encode(resourceType, forKey: Key("ResourceType"))
        }
        if let sourceType = sourceType {
            try container.encode(sourceType, forKey: Key("SourceType"))
        }
        if let subnetId = subnetId {
            try container.encode(subnetId, forKey: Key("SubnetId"))
        }
        if let transitGatewayAttachmentId = transitGatewayAttachmentId {
            try container.encode(transitGatewayAttachmentId, forKey: Key("TransitGatewayAttachmentId"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let groupIpAddressDecoded = try containerValues.decodeIfPresent(String.self, forKey: .groupIpAddress)
        groupIpAddress = groupIpAddressDecoded
        let transitGatewayAttachmentIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .transitGatewayAttachmentId)
        transitGatewayAttachmentId = transitGatewayAttachmentIdDecoded
        let subnetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .subnetId)
        subnetId = subnetIdDecoded
        let resourceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceId)
        resourceId = resourceIdDecoded
        let resourceTypeDecoded = try containerValues.decodeIfPresent(TransitGatewayAttachmentResourceType.self, forKey: .resourceType)
        resourceType = resourceTypeDecoded
        let resourceOwnerIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceOwnerId)
        resourceOwnerId = resourceOwnerIdDecoded
        let networkInterfaceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .networkInterfaceId)
        networkInterfaceId = networkInterfaceIdDecoded
        let groupMemberDecoded = try containerValues.decode(Bool.self, forKey: .groupMember)
        groupMember = groupMemberDecoded
        let groupSourceDecoded = try containerValues.decode(Bool.self, forKey: .groupSource)
        groupSource = groupSourceDecoded
        let memberTypeDecoded = try containerValues.decodeIfPresent(MembershipType.self, forKey: .memberType)
        memberType = memberTypeDecoded
        let sourceTypeDecoded = try containerValues.decodeIfPresent(MembershipType.self, forKey: .sourceType)
        sourceType = sourceTypeDecoded
    }
}