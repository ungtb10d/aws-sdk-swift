// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateCacheClusterInputHeadersMiddleware: Middleware {
    public let id: String = "CreateCacheClusterInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateCacheClusterInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateCacheClusterOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateCacheClusterInput>
    public typealias MOutput = OperationOutput<CreateCacheClusterOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateCacheClusterOutputError>
}

public struct CreateCacheClusterInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateCacheClusterInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateCacheClusterInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateCacheClusterOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateCacheClusterInput>
    public typealias MOutput = OperationOutput<CreateCacheClusterOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateCacheClusterOutputError>
}

public struct CreateCacheClusterInputBodyMiddleware: Middleware {
    public let id: String = "CreateCacheClusterInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateCacheClusterInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateCacheClusterOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateCacheClusterInput>
    public typealias MOutput = OperationOutput<CreateCacheClusterOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateCacheClusterOutputError>
}

extension CreateCacheClusterInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let aZMode = aZMode {
            try container.encode(aZMode, forKey: Key("AZMode"))
        }
        if let authToken = authToken {
            try container.encode(authToken, forKey: Key("AuthToken"))
        }
        if let autoMinorVersionUpgrade = autoMinorVersionUpgrade {
            try container.encode(autoMinorVersionUpgrade, forKey: Key("AutoMinorVersionUpgrade"))
        }
        if let cacheClusterId = cacheClusterId {
            try container.encode(cacheClusterId, forKey: Key("CacheClusterId"))
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
        if let logDeliveryConfigurations = logDeliveryConfigurations {
            var logDeliveryConfigurationsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("LogDeliveryConfigurations"))
            for (index0, logdeliveryconfigurationrequest0) in logDeliveryConfigurations.enumerated() {
                try logDeliveryConfigurationsContainer.encode(logdeliveryconfigurationrequest0, forKey: Key("LogDeliveryConfigurationRequest.\(index0.advanced(by: 1))"))
            }
        }
        if let notificationTopicArn = notificationTopicArn {
            try container.encode(notificationTopicArn, forKey: Key("NotificationTopicArn"))
        }
        if let numCacheNodes = numCacheNodes {
            try container.encode(numCacheNodes, forKey: Key("NumCacheNodes"))
        }
        if let outpostMode = outpostMode {
            try container.encode(outpostMode, forKey: Key("OutpostMode"))
        }
        if let port = port {
            try container.encode(port, forKey: Key("Port"))
        }
        if let preferredAvailabilityZone = preferredAvailabilityZone {
            try container.encode(preferredAvailabilityZone, forKey: Key("PreferredAvailabilityZone"))
        }
        if let preferredAvailabilityZones = preferredAvailabilityZones {
            var preferredAvailabilityZonesContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("PreferredAvailabilityZones"))
            for (index0, string0) in preferredAvailabilityZones.enumerated() {
                try preferredAvailabilityZonesContainer.encode(string0, forKey: Key("PreferredAvailabilityZone.\(index0.advanced(by: 1))"))
            }
        }
        if let preferredMaintenanceWindow = preferredMaintenanceWindow {
            try container.encode(preferredMaintenanceWindow, forKey: Key("PreferredMaintenanceWindow"))
        }
        if let preferredOutpostArn = preferredOutpostArn {
            try container.encode(preferredOutpostArn, forKey: Key("PreferredOutpostArn"))
        }
        if let preferredOutpostArns = preferredOutpostArns {
            var preferredOutpostArnsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("PreferredOutpostArns"))
            for (index0, string0) in preferredOutpostArns.enumerated() {
                try preferredOutpostArnsContainer.encode(string0, forKey: Key("PreferredOutpostArn.\(index0.advanced(by: 1))"))
            }
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
        try container.encode("CreateCacheCluster", forKey:Key("Action"))
        try container.encode("2015-02-02", forKey:Key("Version"))
    }
}