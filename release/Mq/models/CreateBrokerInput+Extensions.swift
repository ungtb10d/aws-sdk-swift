// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateBrokerInputHeadersMiddleware: Middleware {
    public let id: String = "CreateBrokerInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateBrokerInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateBrokerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateBrokerInput>
    public typealias MOutput = OperationOutput<CreateBrokerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateBrokerOutputError>
}

public struct CreateBrokerInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateBrokerInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateBrokerInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateBrokerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateBrokerInput>
    public typealias MOutput = OperationOutput<CreateBrokerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateBrokerOutputError>
}

public struct CreateBrokerInputBodyMiddleware: Middleware {
    public let id: String = "CreateBrokerInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateBrokerInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateBrokerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            if try !input.operationInput.allPropertiesAreNull() {
                let encoder = context.getEncoder()
                let data = try encoder.encode(input.operationInput)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            }
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateBrokerInput>
    public typealias MOutput = OperationOutput<CreateBrokerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateBrokerOutputError>
}

extension CreateBrokerInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case authenticationStrategy = "authenticationStrategy"
        case autoMinorVersionUpgrade = "autoMinorVersionUpgrade"
        case brokerName = "brokerName"
        case configuration = "configuration"
        case creatorRequestId = "creatorRequestId"
        case deploymentMode = "deploymentMode"
        case encryptionOptions = "encryptionOptions"
        case engineType = "engineType"
        case engineVersion = "engineVersion"
        case hostInstanceType = "hostInstanceType"
        case ldapServerMetadata = "ldapServerMetadata"
        case logs = "logs"
        case maintenanceWindowStartTime = "maintenanceWindowStartTime"
        case publiclyAccessible = "publiclyAccessible"
        case securityGroups = "securityGroups"
        case storageType = "storageType"
        case subnetIds = "subnetIds"
        case tags = "tags"
        case users = "users"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let authenticationStrategy = authenticationStrategy {
            try encodeContainer.encode(authenticationStrategy.rawValue, forKey: .authenticationStrategy)
        }
        if autoMinorVersionUpgrade != false {
            try encodeContainer.encode(autoMinorVersionUpgrade, forKey: .autoMinorVersionUpgrade)
        }
        if let brokerName = brokerName {
            try encodeContainer.encode(brokerName, forKey: .brokerName)
        }
        if let configuration = configuration {
            try encodeContainer.encode(configuration, forKey: .configuration)
        }
        if let creatorRequestId = creatorRequestId {
            try encodeContainer.encode(creatorRequestId, forKey: .creatorRequestId)
        }
        if let deploymentMode = deploymentMode {
            try encodeContainer.encode(deploymentMode.rawValue, forKey: .deploymentMode)
        }
        if let encryptionOptions = encryptionOptions {
            try encodeContainer.encode(encryptionOptions, forKey: .encryptionOptions)
        }
        if let engineType = engineType {
            try encodeContainer.encode(engineType.rawValue, forKey: .engineType)
        }
        if let engineVersion = engineVersion {
            try encodeContainer.encode(engineVersion, forKey: .engineVersion)
        }
        if let hostInstanceType = hostInstanceType {
            try encodeContainer.encode(hostInstanceType, forKey: .hostInstanceType)
        }
        if let ldapServerMetadata = ldapServerMetadata {
            try encodeContainer.encode(ldapServerMetadata, forKey: .ldapServerMetadata)
        }
        if let logs = logs {
            try encodeContainer.encode(logs, forKey: .logs)
        }
        if let maintenanceWindowStartTime = maintenanceWindowStartTime {
            try encodeContainer.encode(maintenanceWindowStartTime, forKey: .maintenanceWindowStartTime)
        }
        if publiclyAccessible != false {
            try encodeContainer.encode(publiclyAccessible, forKey: .publiclyAccessible)
        }
        if let securityGroups = securityGroups {
            var securityGroupsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .securityGroups)
            for __listof__string0 in securityGroups {
                try securityGroupsContainer.encode(__listof__string0)
            }
        }
        if let storageType = storageType {
            try encodeContainer.encode(storageType.rawValue, forKey: .storageType)
        }
        if let subnetIds = subnetIds {
            var subnetIdsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .subnetIds)
            for __listof__string0 in subnetIds {
                try subnetIdsContainer.encode(__listof__string0)
            }
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, __mapof__string0) in tags {
                try tagsContainer.encode(__mapof__string0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let users = users {
            var usersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .users)
            for __listofuser0 in users {
                try usersContainer.encode(__listofuser0)
            }
        }
    }
}