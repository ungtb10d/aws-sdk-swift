// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ReplicationGroup: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case aRN = "ARN"
        case atRestEncryptionEnabled = "AtRestEncryptionEnabled"
        case authTokenEnabled = "AuthTokenEnabled"
        case authTokenLastModifiedDate = "AuthTokenLastModifiedDate"
        case automaticFailover = "AutomaticFailover"
        case cacheNodeType = "CacheNodeType"
        case clusterEnabled = "ClusterEnabled"
        case configurationEndpoint = "ConfigurationEndpoint"
        case description = "Description"
        case globalReplicationGroupInfo = "GlobalReplicationGroupInfo"
        case kmsKeyId = "KmsKeyId"
        case logDeliveryConfigurations = "LogDeliveryConfigurations"
        case memberClusters = "MemberClusters"
        case memberClustersOutpostArns = "MemberClustersOutpostArns"
        case multiAZ = "MultiAZ"
        case nodeGroups = "NodeGroups"
        case pendingModifiedValues = "PendingModifiedValues"
        case replicationGroupId = "ReplicationGroupId"
        case snapshotRetentionLimit = "SnapshotRetentionLimit"
        case snapshotWindow = "SnapshotWindow"
        case snapshottingClusterId = "SnapshottingClusterId"
        case status = "Status"
        case transitEncryptionEnabled = "TransitEncryptionEnabled"
        case userGroupIds = "UserGroupIds"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let aRN = aRN {
            try container.encode(aRN, forKey: Key("ARN"))
        }
        if let atRestEncryptionEnabled = atRestEncryptionEnabled {
            try container.encode(atRestEncryptionEnabled, forKey: Key("AtRestEncryptionEnabled"))
        }
        if let authTokenEnabled = authTokenEnabled {
            try container.encode(authTokenEnabled, forKey: Key("AuthTokenEnabled"))
        }
        if let authTokenLastModifiedDate = authTokenLastModifiedDate {
            try container.encode(TimestampWrapper(authTokenLastModifiedDate, format: .dateTime), forKey: Key("authTokenLastModifiedDate"))
        }
        if let automaticFailover = automaticFailover {
            try container.encode(automaticFailover, forKey: Key("AutomaticFailover"))
        }
        if let cacheNodeType = cacheNodeType {
            try container.encode(cacheNodeType, forKey: Key("CacheNodeType"))
        }
        if let clusterEnabled = clusterEnabled {
            try container.encode(clusterEnabled, forKey: Key("ClusterEnabled"))
        }
        if let configurationEndpoint = configurationEndpoint {
            try container.encode(configurationEndpoint, forKey: Key("ConfigurationEndpoint"))
        }
        if let description = description {
            try container.encode(description, forKey: Key("Description"))
        }
        if let globalReplicationGroupInfo = globalReplicationGroupInfo {
            try container.encode(globalReplicationGroupInfo, forKey: Key("GlobalReplicationGroupInfo"))
        }
        if let kmsKeyId = kmsKeyId {
            try container.encode(kmsKeyId, forKey: Key("KmsKeyId"))
        }
        if let logDeliveryConfigurations = logDeliveryConfigurations {
            var logDeliveryConfigurationsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("LogDeliveryConfigurations"))
            for (index0, logdeliveryconfiguration0) in logDeliveryConfigurations.enumerated() {
                try logDeliveryConfigurationsContainer.encode(logdeliveryconfiguration0, forKey: Key("LogDeliveryConfiguration.\(index0.advanced(by: 1))"))
            }
        }
        if let memberClusters = memberClusters {
            var memberClustersContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("MemberClusters"))
            for (index0, string0) in memberClusters.enumerated() {
                try memberClustersContainer.encode(string0, forKey: Key("ClusterId.\(index0.advanced(by: 1))"))
            }
        }
        if let memberClustersOutpostArns = memberClustersOutpostArns {
            var memberClustersOutpostArnsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("MemberClustersOutpostArns"))
            for (index0, string0) in memberClustersOutpostArns.enumerated() {
                try memberClustersOutpostArnsContainer.encode(string0, forKey: Key("ReplicationGroupOutpostArn.\(index0.advanced(by: 1))"))
            }
        }
        if let multiAZ = multiAZ {
            try container.encode(multiAZ, forKey: Key("MultiAZ"))
        }
        if let nodeGroups = nodeGroups {
            var nodeGroupsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("NodeGroups"))
            for (index0, nodegroup0) in nodeGroups.enumerated() {
                try nodeGroupsContainer.encode(nodegroup0, forKey: Key("NodeGroup.\(index0.advanced(by: 1))"))
            }
        }
        if let pendingModifiedValues = pendingModifiedValues {
            try container.encode(pendingModifiedValues, forKey: Key("PendingModifiedValues"))
        }
        if let replicationGroupId = replicationGroupId {
            try container.encode(replicationGroupId, forKey: Key("ReplicationGroupId"))
        }
        if let snapshotRetentionLimit = snapshotRetentionLimit {
            try container.encode(snapshotRetentionLimit, forKey: Key("SnapshotRetentionLimit"))
        }
        if let snapshotWindow = snapshotWindow {
            try container.encode(snapshotWindow, forKey: Key("SnapshotWindow"))
        }
        if let snapshottingClusterId = snapshottingClusterId {
            try container.encode(snapshottingClusterId, forKey: Key("SnapshottingClusterId"))
        }
        if let status = status {
            try container.encode(status, forKey: Key("Status"))
        }
        if let transitEncryptionEnabled = transitEncryptionEnabled {
            try container.encode(transitEncryptionEnabled, forKey: Key("TransitEncryptionEnabled"))
        }
        if let userGroupIds = userGroupIds {
            var userGroupIdsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("UserGroupIds"))
            for (index0, usergroupid0) in userGroupIds.enumerated() {
                try userGroupIdsContainer.encode(usergroupid0, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let replicationGroupIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .replicationGroupId)
        replicationGroupId = replicationGroupIdDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let globalReplicationGroupInfoDecoded = try containerValues.decodeIfPresent(GlobalReplicationGroupInfo.self, forKey: .globalReplicationGroupInfo)
        globalReplicationGroupInfo = globalReplicationGroupInfoDecoded
        let statusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .status)
        status = statusDecoded
        let pendingModifiedValuesDecoded = try containerValues.decodeIfPresent(ReplicationGroupPendingModifiedValues.self, forKey: .pendingModifiedValues)
        pendingModifiedValues = pendingModifiedValuesDecoded
        if containerValues.contains(.memberClusters) {
            struct KeyVal0{struct ClusterId{}}
            let memberClustersWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.ClusterId>.CodingKeys.self, forKey: .memberClusters)
            if let memberClustersWrappedContainer = memberClustersWrappedContainer {
                let memberClustersContainer = try memberClustersWrappedContainer.decodeIfPresent([String].self, forKey: .member)
                var memberClustersBuffer:[String]? = nil
                if let memberClustersContainer = memberClustersContainer {
                    memberClustersBuffer = [String]()
                    for stringContainer0 in memberClustersContainer {
                        memberClustersBuffer?.append(stringContainer0)
                    }
                }
                memberClusters = memberClustersBuffer
            } else {
                memberClusters = []
            }
        } else {
            memberClusters = nil
        }
        if containerValues.contains(.nodeGroups) {
            struct KeyVal0{struct NodeGroup{}}
            let nodeGroupsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.NodeGroup>.CodingKeys.self, forKey: .nodeGroups)
            if let nodeGroupsWrappedContainer = nodeGroupsWrappedContainer {
                let nodeGroupsContainer = try nodeGroupsWrappedContainer.decodeIfPresent([NodeGroup].self, forKey: .member)
                var nodeGroupsBuffer:[NodeGroup]? = nil
                if let nodeGroupsContainer = nodeGroupsContainer {
                    nodeGroupsBuffer = [NodeGroup]()
                    for structureContainer0 in nodeGroupsContainer {
                        nodeGroupsBuffer?.append(structureContainer0)
                    }
                }
                nodeGroups = nodeGroupsBuffer
            } else {
                nodeGroups = []
            }
        } else {
            nodeGroups = nil
        }
        let snapshottingClusterIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .snapshottingClusterId)
        snapshottingClusterId = snapshottingClusterIdDecoded
        let automaticFailoverDecoded = try containerValues.decodeIfPresent(AutomaticFailoverStatus.self, forKey: .automaticFailover)
        automaticFailover = automaticFailoverDecoded
        let multiAZDecoded = try containerValues.decodeIfPresent(MultiAZStatus.self, forKey: .multiAZ)
        multiAZ = multiAZDecoded
        let configurationEndpointDecoded = try containerValues.decodeIfPresent(Endpoint.self, forKey: .configurationEndpoint)
        configurationEndpoint = configurationEndpointDecoded
        let snapshotRetentionLimitDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .snapshotRetentionLimit)
        snapshotRetentionLimit = snapshotRetentionLimitDecoded
        let snapshotWindowDecoded = try containerValues.decodeIfPresent(String.self, forKey: .snapshotWindow)
        snapshotWindow = snapshotWindowDecoded
        let clusterEnabledDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .clusterEnabled)
        clusterEnabled = clusterEnabledDecoded
        let cacheNodeTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .cacheNodeType)
        cacheNodeType = cacheNodeTypeDecoded
        let authTokenEnabledDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .authTokenEnabled)
        authTokenEnabled = authTokenEnabledDecoded
        let authTokenLastModifiedDateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .authTokenLastModifiedDate)
        var authTokenLastModifiedDateBuffer:Date? = nil
        if let authTokenLastModifiedDateDecoded = authTokenLastModifiedDateDecoded {
            authTokenLastModifiedDateBuffer = try TimestampWrapperDecoder.parseDateStringValue(authTokenLastModifiedDateDecoded, format: .dateTime)
        }
        authTokenLastModifiedDate = authTokenLastModifiedDateBuffer
        let transitEncryptionEnabledDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .transitEncryptionEnabled)
        transitEncryptionEnabled = transitEncryptionEnabledDecoded
        let atRestEncryptionEnabledDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .atRestEncryptionEnabled)
        atRestEncryptionEnabled = atRestEncryptionEnabledDecoded
        if containerValues.contains(.memberClustersOutpostArns) {
            struct KeyVal0{struct ReplicationGroupOutpostArn{}}
            let memberClustersOutpostArnsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.ReplicationGroupOutpostArn>.CodingKeys.self, forKey: .memberClustersOutpostArns)
            if let memberClustersOutpostArnsWrappedContainer = memberClustersOutpostArnsWrappedContainer {
                let memberClustersOutpostArnsContainer = try memberClustersOutpostArnsWrappedContainer.decodeIfPresent([String].self, forKey: .member)
                var memberClustersOutpostArnsBuffer:[String]? = nil
                if let memberClustersOutpostArnsContainer = memberClustersOutpostArnsContainer {
                    memberClustersOutpostArnsBuffer = [String]()
                    for stringContainer0 in memberClustersOutpostArnsContainer {
                        memberClustersOutpostArnsBuffer?.append(stringContainer0)
                    }
                }
                memberClustersOutpostArns = memberClustersOutpostArnsBuffer
            } else {
                memberClustersOutpostArns = []
            }
        } else {
            memberClustersOutpostArns = nil
        }
        let kmsKeyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .kmsKeyId)
        kmsKeyId = kmsKeyIdDecoded
        let aRNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .aRN)
        aRN = aRNDecoded
        if containerValues.contains(.userGroupIds) {
            struct KeyVal0{struct member{}}
            let userGroupIdsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .userGroupIds)
            if let userGroupIdsWrappedContainer = userGroupIdsWrappedContainer {
                let userGroupIdsContainer = try userGroupIdsWrappedContainer.decodeIfPresent([String].self, forKey: .member)
                var userGroupIdsBuffer:[String]? = nil
                if let userGroupIdsContainer = userGroupIdsContainer {
                    userGroupIdsBuffer = [String]()
                    for stringContainer0 in userGroupIdsContainer {
                        userGroupIdsBuffer?.append(stringContainer0)
                    }
                }
                userGroupIds = userGroupIdsBuffer
            } else {
                userGroupIds = []
            }
        } else {
            userGroupIds = nil
        }
        if containerValues.contains(.logDeliveryConfigurations) {
            struct KeyVal0{struct LogDeliveryConfiguration{}}
            let logDeliveryConfigurationsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.LogDeliveryConfiguration>.CodingKeys.self, forKey: .logDeliveryConfigurations)
            if let logDeliveryConfigurationsWrappedContainer = logDeliveryConfigurationsWrappedContainer {
                let logDeliveryConfigurationsContainer = try logDeliveryConfigurationsWrappedContainer.decodeIfPresent([LogDeliveryConfiguration].self, forKey: .member)
                var logDeliveryConfigurationsBuffer:[LogDeliveryConfiguration]? = nil
                if let logDeliveryConfigurationsContainer = logDeliveryConfigurationsContainer {
                    logDeliveryConfigurationsBuffer = [LogDeliveryConfiguration]()
                    for structureContainer0 in logDeliveryConfigurationsContainer {
                        logDeliveryConfigurationsBuffer?.append(structureContainer0)
                    }
                }
                logDeliveryConfigurations = logDeliveryConfigurationsBuffer
            } else {
                logDeliveryConfigurations = []
            }
        } else {
            logDeliveryConfigurations = nil
        }
    }
}