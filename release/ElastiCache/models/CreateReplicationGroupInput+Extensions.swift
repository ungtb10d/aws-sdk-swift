// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateReplicationGroupInputHeadersMiddleware: Middleware {
    public let id: String = "CreateReplicationGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateReplicationGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateReplicationGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateReplicationGroupInput>
    public typealias MOutput = OperationOutput<CreateReplicationGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateReplicationGroupOutputError>
}

public struct CreateReplicationGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateReplicationGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateReplicationGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateReplicationGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateReplicationGroupInput>
    public typealias MOutput = OperationOutput<CreateReplicationGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateReplicationGroupOutputError>
}

public struct CreateReplicationGroupInputBodyMiddleware: Middleware {
    public let id: String = "CreateReplicationGroupInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateReplicationGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateReplicationGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            let encoder = context.getEncoder()
            let data = try encoder.encode(input.operationInput)
            let body = HttpBody.data(data)
            input.builder.withBody(body)
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateReplicationGroupInput>
    public typealias MOutput = OperationOutput<CreateReplicationGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateReplicationGroupOutputError>
}

extension CreateReplicationGroupInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let atRestEncryptionEnabled = atRestEncryptionEnabled {
            try container.encode(atRestEncryptionEnabled, forKey: Key("AtRestEncryptionEnabled"))
        }
        if let authToken = authToken {
            try container.encode(authToken, forKey: Key("AuthToken"))
        }
        if let autoMinorVersionUpgrade = autoMinorVersionUpgrade {
            try container.encode(autoMinorVersionUpgrade, forKey: Key("AutoMinorVersionUpgrade"))
        }
        if let automaticFailoverEnabled = automaticFailoverEnabled {
            try container.encode(automaticFailoverEnabled, forKey: Key("AutomaticFailoverEnabled"))
        }
        if let cacheNodeType = cacheNodeType {
            try container.encode(cacheNodeType, forKey: Key("CacheNodeType"))
        }
        if let cacheParameterGroupName = cacheParameterGroupName {
            try container.encode(cacheParameterGroupName, forKey: Key("CacheParameterGroupName"))
        }
        if let cacheSecurityGroupNames = cacheSecurityGroupNames {
            var cacheSecurityGroupNamesContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("CacheSecurityGroupNames"))
            for (index0, string0) in cacheSecurityGroupNames.enumerated() {
                try cacheSecurityGroupNamesContainer.encode(string0, forKey: Key("CacheSecurityGroupName.\(index0.advanced(by: 1))"))
            }
        }
        if let cacheSubnetGroupName = cacheSubnetGroupName {
            try container.encode(cacheSubnetGroupName, forKey: Key("CacheSubnetGroupName"))
        }
        if let engine = engine {
            try container.encode(engine, forKey: Key("Engine"))
        }
        if let engineVersion = engineVersion {
            try container.encode(engineVersion, forKey: Key("EngineVersion"))
        }
        if let globalReplicationGroupId = globalReplicationGroupId {
            try container.encode(globalReplicationGroupId, forKey: Key("GlobalReplicationGroupId"))
        }
        if let kmsKeyId = kmsKeyId {
            try container.encode(kmsKeyId, forKey: Key("KmsKeyId"))
        }
        if let logDeliveryConfigurations = logDeliveryConfigurations {
            var logDeliveryConfigurationsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("LogDeliveryConfigurations"))
            for (index0, logdeliveryconfigurationrequest0) in logDeliveryConfigurations.enumerated() {
                try logDeliveryConfigurationsContainer.encode(logdeliveryconfigurationrequest0, forKey: Key("LogDeliveryConfigurationRequest.\(index0.advanced(by: 1))"))
            }
        }
        if let multiAZEnabled = multiAZEnabled {
            try container.encode(multiAZEnabled, forKey: Key("MultiAZEnabled"))
        }
        if let nodeGroupConfiguration = nodeGroupConfiguration {
            var nodeGroupConfigurationContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("NodeGroupConfiguration"))
            for (index0, nodegroupconfiguration0) in nodeGroupConfiguration.enumerated() {
                try nodeGroupConfigurationContainer.encode(nodegroupconfiguration0, forKey: Key("NodeGroupConfiguration.\(index0.advanced(by: 1))"))
            }
        }
        if let notificationTopicArn = notificationTopicArn {
            try container.encode(notificationTopicArn, forKey: Key("NotificationTopicArn"))
        }
        if let numCacheClusters = numCacheClusters {
            try container.encode(numCacheClusters, forKey: Key("NumCacheClusters"))
        }
        if let numNodeGroups = numNodeGroups {
            try container.encode(numNodeGroups, forKey: Key("NumNodeGroups"))
        }
        if let port = port {
            try container.encode(port, forKey: Key("Port"))
        }
        if let preferredCacheClusterAZs = preferredCacheClusterAZs {
            var preferredCacheClusterAZsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("PreferredCacheClusterAZs"))
            for (index0, string0) in preferredCacheClusterAZs.enumerated() {
                try preferredCacheClusterAZsContainer.encode(string0, forKey: Key("AvailabilityZone.\(index0.advanced(by: 1))"))
            }
        }
        if let preferredMaintenanceWindow = preferredMaintenanceWindow {
            try container.encode(preferredMaintenanceWindow, forKey: Key("PreferredMaintenanceWindow"))
        }
        if let primaryClusterId = primaryClusterId {
            try container.encode(primaryClusterId, forKey: Key("PrimaryClusterId"))
        }
        if let replicasPerNodeGroup = replicasPerNodeGroup {
            try container.encode(replicasPerNodeGroup, forKey: Key("ReplicasPerNodeGroup"))
        }
        if let replicationGroupDescription = replicationGroupDescription {
            try container.encode(replicationGroupDescription, forKey: Key("ReplicationGroupDescription"))
        }
        if let replicationGroupId = replicationGroupId {
            try container.encode(replicationGroupId, forKey: Key("ReplicationGroupId"))
        }
        if let securityGroupIds = securityGroupIds {
            var securityGroupIdsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("SecurityGroupIds"))
            for (index0, string0) in securityGroupIds.enumerated() {
                try securityGroupIdsContainer.encode(string0, forKey: Key("SecurityGroupId.\(index0.advanced(by: 1))"))
            }
        }
        if let snapshotArns = snapshotArns {
            var snapshotArnsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("SnapshotArns"))
            for (index0, string0) in snapshotArns.enumerated() {
                try snapshotArnsContainer.encode(string0, forKey: Key("SnapshotArn.\(index0.advanced(by: 1))"))
            }
        }
        if let snapshotName = snapshotName {
            try container.encode(snapshotName, forKey: Key("SnapshotName"))
        }
        if let snapshotRetentionLimit = snapshotRetentionLimit {
            try container.encode(snapshotRetentionLimit, forKey: Key("SnapshotRetentionLimit"))
        }
        if let snapshotWindow = snapshotWindow {
            try container.encode(snapshotWindow, forKey: Key("SnapshotWindow"))
        }
        if let tags = tags {
            var tagsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("Tags"))
            for (index0, tag0) in tags.enumerated() {
                try tagsContainer.encode(tag0, forKey: Key("Tag.\(index0.advanced(by: 1))"))
            }
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
        try container.encode("CreateReplicationGroup", forKey:Key("Action"))
        try container.encode("2015-02-02", forKey:Key("Version"))
    }
}