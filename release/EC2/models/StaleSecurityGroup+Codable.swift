// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StaleSecurityGroup: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case description = "description"
        case groupId = "groupId"
        case groupName = "groupName"
        case staleIpPermissions = "staleIpPermissions"
        case staleIpPermissionsEgress = "staleIpPermissionsEgress"
        case vpcId = "vpcId"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let description = description {
            try container.encode(description, forKey: Key("Description"))
        }
        if let groupId = groupId {
            try container.encode(groupId, forKey: Key("GroupId"))
        }
        if let groupName = groupName {
            try container.encode(groupName, forKey: Key("GroupName"))
        }
        if let staleIpPermissions = staleIpPermissions {
            if !staleIpPermissions.isEmpty {
                for (index0, staleippermission0) in staleIpPermissions.enumerated() {
                    var staleIpPermissionsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("StaleIpPermissions.\(index0.advanced(by: 1))"))
                    try staleIpPermissionsContainer0.encode(staleippermission0, forKey: Key(""))
                }
            }
        }
        if let staleIpPermissionsEgress = staleIpPermissionsEgress {
            if !staleIpPermissionsEgress.isEmpty {
                for (index0, staleippermission0) in staleIpPermissionsEgress.enumerated() {
                    var staleIpPermissionsEgressContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("StaleIpPermissionsEgress.\(index0.advanced(by: 1))"))
                    try staleIpPermissionsEgressContainer0.encode(staleippermission0, forKey: Key(""))
                }
            }
        }
        if let vpcId = vpcId {
            try container.encode(vpcId, forKey: Key("VpcId"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let groupIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .groupId)
        groupId = groupIdDecoded
        let groupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .groupName)
        groupName = groupNameDecoded
        if containerValues.contains(.staleIpPermissions) {
            struct KeyVal0{struct item{}}
            let staleIpPermissionsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.item>.CodingKeys.self, forKey: .staleIpPermissions)
            if let staleIpPermissionsWrappedContainer = staleIpPermissionsWrappedContainer {
                let staleIpPermissionsContainer = try staleIpPermissionsWrappedContainer.decodeIfPresent([StaleIpPermission].self, forKey: .member)
                var staleIpPermissionsBuffer:[StaleIpPermission]? = nil
                if let staleIpPermissionsContainer = staleIpPermissionsContainer {
                    staleIpPermissionsBuffer = [StaleIpPermission]()
                    for structureContainer0 in staleIpPermissionsContainer {
                        staleIpPermissionsBuffer?.append(structureContainer0)
                    }
                }
                staleIpPermissions = staleIpPermissionsBuffer
            } else {
                staleIpPermissions = []
            }
        } else {
            staleIpPermissions = nil
        }
        if containerValues.contains(.staleIpPermissionsEgress) {
            struct KeyVal0{struct item{}}
            let staleIpPermissionsEgressWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.item>.CodingKeys.self, forKey: .staleIpPermissionsEgress)
            if let staleIpPermissionsEgressWrappedContainer = staleIpPermissionsEgressWrappedContainer {
                let staleIpPermissionsEgressContainer = try staleIpPermissionsEgressWrappedContainer.decodeIfPresent([StaleIpPermission].self, forKey: .member)
                var staleIpPermissionsEgressBuffer:[StaleIpPermission]? = nil
                if let staleIpPermissionsEgressContainer = staleIpPermissionsEgressContainer {
                    staleIpPermissionsEgressBuffer = [StaleIpPermission]()
                    for structureContainer0 in staleIpPermissionsEgressContainer {
                        staleIpPermissionsEgressBuffer?.append(structureContainer0)
                    }
                }
                staleIpPermissionsEgress = staleIpPermissionsEgressBuffer
            } else {
                staleIpPermissionsEgress = []
            }
        } else {
            staleIpPermissionsEgress = nil
        }
        let vpcIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .vpcId)
        vpcId = vpcIdDecoded
    }
}