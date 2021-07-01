// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StartDeploymentInputHeadersMiddleware: Middleware {
    public let id: String = "StartDeploymentInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartDeploymentInput>,
                  next: H) -> Swift.Result<OperationOutput<StartDeploymentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartDeploymentInput>
    public typealias MOutput = OperationOutput<StartDeploymentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartDeploymentOutputError>
}

public struct StartDeploymentInputQueryItemMiddleware: Middleware {
    public let id: String = "StartDeploymentInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartDeploymentInput>,
                  next: H) -> Swift.Result<OperationOutput<StartDeploymentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartDeploymentInput>
    public typealias MOutput = OperationOutput<StartDeploymentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartDeploymentOutputError>
}

public struct StartDeploymentInputBodyMiddleware: Middleware {
    public let id: String = "StartDeploymentInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartDeploymentInput>,
                  next: H) -> Swift.Result<OperationOutput<StartDeploymentOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<StartDeploymentInput>
    public typealias MOutput = OperationOutput<StartDeploymentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartDeploymentOutputError>
}

extension StartDeploymentInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case configurationProfileId = "ConfigurationProfileId"
        case configurationVersion = "ConfigurationVersion"
        case deploymentStrategyId = "DeploymentStrategyId"
        case description = "Description"
        case tags = "Tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let configurationProfileId = configurationProfileId {
            try encodeContainer.encode(configurationProfileId, forKey: .configurationProfileId)
        }
        if let configurationVersion = configurationVersion {
            try encodeContainer.encode(configurationVersion, forKey: .configurationVersion)
        }
        if let deploymentStrategyId = deploymentStrategyId {
            try encodeContainer.encode(deploymentStrategyId, forKey: .deploymentStrategyId)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, tagmap0) in tags {
                try tagsContainer.encode(tagmap0, forKey: Key(stringValue: dictKey0))
            }
        }
    }
}