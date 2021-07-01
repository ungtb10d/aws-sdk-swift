// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeClusterParameterGroupsOutputResponseBody: Equatable {
    public let marker: String?
    public let parameterGroups: [ClusterParameterGroup]?
}

extension DescribeClusterParameterGroupsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case marker = "Marker"
        case parameterGroups = "ParameterGroups"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("DescribeClusterParameterGroupsResult"))
        let markerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .marker)
        marker = markerDecoded
        if containerValues.contains(.parameterGroups) {
            struct KeyVal0{struct ClusterParameterGroup{}}
            let parameterGroupsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.ClusterParameterGroup>.CodingKeys.self, forKey: .parameterGroups)
            if let parameterGroupsWrappedContainer = parameterGroupsWrappedContainer {
                let parameterGroupsContainer = try parameterGroupsWrappedContainer.decodeIfPresent([ClusterParameterGroup].self, forKey: .member)
                var parameterGroupsBuffer:[ClusterParameterGroup]? = nil
                if let parameterGroupsContainer = parameterGroupsContainer {
                    parameterGroupsBuffer = [ClusterParameterGroup]()
                    for structureContainer0 in parameterGroupsContainer {
                        parameterGroupsBuffer?.append(structureContainer0)
                    }
                }
                parameterGroups = parameterGroupsBuffer
            } else {
                parameterGroups = []
            }
        } else {
            parameterGroups = nil
        }
    }
}