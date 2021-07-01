// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Endpoint: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn
        case certificateArn
        case configurationOverrides
        case createdAt
        case executionRoleArn
        case id
        case name
        case releaseLabel
        case securityGroup
        case serverUrl
        case state
        case subnetIds
        case tags
        case type
        case virtualClusterId
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let certificateArn = certificateArn {
            try encodeContainer.encode(certificateArn, forKey: .certificateArn)
        }
        if let configurationOverrides = configurationOverrides {
            try encodeContainer.encode(configurationOverrides, forKey: .configurationOverrides)
        }
        if let createdAt = createdAt {
            try encodeContainer.encode(createdAt.timeIntervalSince1970, forKey: .createdAt)
        }
        if let executionRoleArn = executionRoleArn {
            try encodeContainer.encode(executionRoleArn, forKey: .executionRoleArn)
        }
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let releaseLabel = releaseLabel {
            try encodeContainer.encode(releaseLabel, forKey: .releaseLabel)
        }
        if let securityGroup = securityGroup {
            try encodeContainer.encode(securityGroup, forKey: .securityGroup)
        }
        if let serverUrl = serverUrl {
            try encodeContainer.encode(serverUrl, forKey: .serverUrl)
        }
        if let state = state {
            try encodeContainer.encode(state.rawValue, forKey: .state)
        }
        if let subnetIds = subnetIds {
            var subnetIdsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .subnetIds)
            for subnetids0 in subnetIds {
                try subnetIdsContainer.encode(subnetids0)
            }
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, tagmap0) in tags {
                try tagsContainer.encode(tagmap0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let type = type {
            try encodeContainer.encode(type, forKey: .type)
        }
        if let virtualClusterId = virtualClusterId {
            try encodeContainer.encode(virtualClusterId, forKey: .virtualClusterId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let virtualClusterIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .virtualClusterId)
        virtualClusterId = virtualClusterIdDecoded
        let typeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .type)
        type = typeDecoded
        let stateDecoded = try containerValues.decodeIfPresent(EndpointState.self, forKey: .state)
        state = stateDecoded
        let releaseLabelDecoded = try containerValues.decodeIfPresent(String.self, forKey: .releaseLabel)
        releaseLabel = releaseLabelDecoded
        let executionRoleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .executionRoleArn)
        executionRoleArn = executionRoleArnDecoded
        let certificateArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .certificateArn)
        certificateArn = certificateArnDecoded
        let configurationOverridesDecoded = try containerValues.decodeIfPresent(ConfigurationOverrides.self, forKey: .configurationOverrides)
        configurationOverrides = configurationOverridesDecoded
        let serverUrlDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serverUrl)
        serverUrl = serverUrlDecoded
        let createdAtDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createdAt)
        createdAt = createdAtDecoded
        let securityGroupDecoded = try containerValues.decodeIfPresent(String.self, forKey: .securityGroup)
        securityGroup = securityGroupDecoded
        let subnetIdsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .subnetIds)
        var subnetIdsDecoded0:[String]? = nil
        if let subnetIdsContainer = subnetIdsContainer {
            subnetIdsDecoded0 = [String]()
            for string0 in subnetIdsContainer {
                if let string0 = string0 {
                    subnetIdsDecoded0?.append(string0)
                }
            }
        }
        subnetIds = subnetIdsDecoded0
        let tagsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .tags)
        var tagsDecoded0: [String:String]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [String:String]()
            for (key0, stringempty2560) in tagsContainer {
                if let stringempty2560 = stringempty2560 {
                    tagsDecoded0?[key0] = stringempty2560
                }
            }
        }
        tags = tagsDecoded0
    }
}