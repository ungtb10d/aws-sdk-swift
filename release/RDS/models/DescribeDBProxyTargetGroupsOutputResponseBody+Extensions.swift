// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeDBProxyTargetGroupsOutputResponseBody: Equatable {
    public let targetGroups: [DBProxyTargetGroup]?
    public let marker: String?
}

extension DescribeDBProxyTargetGroupsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case marker = "Marker"
        case targetGroups = "TargetGroups"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("DescribeDBProxyTargetGroupsResult"))
        if containerValues.contains(.targetGroups) {
            struct KeyVal0{struct member{}}
            let targetGroupsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .targetGroups)
            if let targetGroupsWrappedContainer = targetGroupsWrappedContainer {
                let targetGroupsContainer = try targetGroupsWrappedContainer.decodeIfPresent([DBProxyTargetGroup].self, forKey: .member)
                var targetGroupsBuffer:[DBProxyTargetGroup]? = nil
                if let targetGroupsContainer = targetGroupsContainer {
                    targetGroupsBuffer = [DBProxyTargetGroup]()
                    for structureContainer0 in targetGroupsContainer {
                        targetGroupsBuffer?.append(structureContainer0)
                    }
                }
                targetGroups = targetGroupsBuffer
            } else {
                targetGroups = []
            }
        } else {
            targetGroups = nil
        }
        let markerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .marker)
        marker = markerDecoded
    }
}