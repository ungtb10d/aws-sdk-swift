// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ClusterParameterGroup: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case parameterGroupFamily = "ParameterGroupFamily"
        case parameterGroupName = "ParameterGroupName"
        case tags = "Tags"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let description = description {
            try container.encode(description, forKey: Key("Description"))
        }
        if let parameterGroupFamily = parameterGroupFamily {
            try container.encode(parameterGroupFamily, forKey: Key("ParameterGroupFamily"))
        }
        if let parameterGroupName = parameterGroupName {
            try container.encode(parameterGroupName, forKey: Key("ParameterGroupName"))
        }
        if let tags = tags {
            var tagsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("Tags"))
            for (index0, tag0) in tags.enumerated() {
                try tagsContainer.encode(tag0, forKey: Key("Tag.\(index0.advanced(by: 1))"))
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let parameterGroupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .parameterGroupName)
        parameterGroupName = parameterGroupNameDecoded
        let parameterGroupFamilyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .parameterGroupFamily)
        parameterGroupFamily = parameterGroupFamilyDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        if containerValues.contains(.tags) {
            struct KeyVal0{struct Tag{}}
            let tagsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.Tag>.CodingKeys.self, forKey: .tags)
            if let tagsWrappedContainer = tagsWrappedContainer {
                let tagsContainer = try tagsWrappedContainer.decodeIfPresent([Tag].self, forKey: .member)
                var tagsBuffer:[Tag]? = nil
                if let tagsContainer = tagsContainer {
                    tagsBuffer = [Tag]()
                    for structureContainer0 in tagsContainer {
                        tagsBuffer?.append(structureContainer0)
                    }
                }
                tags = tagsBuffer
            } else {
                tags = []
            }
        } else {
            tags = nil
        }
    }
}