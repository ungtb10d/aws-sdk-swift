// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension WorkGroup: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case configuration = "Configuration"
        case creationTime = "CreationTime"
        case description = "Description"
        case name = "Name"
        case state = "State"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let configuration = configuration {
            try encodeContainer.encode(configuration, forKey: .configuration)
        }
        if let creationTime = creationTime {
            try encodeContainer.encode(creationTime.timeIntervalSince1970, forKey: .creationTime)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let state = state {
            try encodeContainer.encode(state.rawValue, forKey: .state)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let stateDecoded = try containerValues.decodeIfPresent(WorkGroupState.self, forKey: .state)
        state = stateDecoded
        let configurationDecoded = try containerValues.decodeIfPresent(WorkGroupConfiguration.self, forKey: .configuration)
        configuration = configurationDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let creationTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationTime)
        creationTime = creationTimeDecoded
    }
}