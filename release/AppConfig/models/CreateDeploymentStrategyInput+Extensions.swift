// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateDeploymentStrategyInputHeadersMiddleware: Middleware {
    public let id: String = "CreateDeploymentStrategyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateDeploymentStrategyInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateDeploymentStrategyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateDeploymentStrategyInput>
    public typealias MOutput = OperationOutput<CreateDeploymentStrategyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateDeploymentStrategyOutputError>
}

public struct CreateDeploymentStrategyInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateDeploymentStrategyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateDeploymentStrategyInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateDeploymentStrategyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateDeploymentStrategyInput>
    public typealias MOutput = OperationOutput<CreateDeploymentStrategyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateDeploymentStrategyOutputError>
}

public struct CreateDeploymentStrategyInputBodyMiddleware: Middleware {
    public let id: String = "CreateDeploymentStrategyInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateDeploymentStrategyInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateDeploymentStrategyOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateDeploymentStrategyInput>
    public typealias MOutput = OperationOutput<CreateDeploymentStrategyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateDeploymentStrategyOutputError>
}

extension CreateDeploymentStrategyInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case deploymentDurationInMinutes = "DeploymentDurationInMinutes"
        case description = "Description"
        case finalBakeTimeInMinutes = "FinalBakeTimeInMinutes"
        case growthFactor = "GrowthFactor"
        case growthType = "GrowthType"
        case name = "Name"
        case replicateTo = "ReplicateTo"
        case tags = "Tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if deploymentDurationInMinutes != 0 {
            try encodeContainer.encode(deploymentDurationInMinutes, forKey: .deploymentDurationInMinutes)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if finalBakeTimeInMinutes != 0 {
            try encodeContainer.encode(finalBakeTimeInMinutes, forKey: .finalBakeTimeInMinutes)
        }
        if growthFactor != 0.0 {
            try encodeContainer.encode(growthFactor, forKey: .growthFactor)
        }
        if let growthType = growthType {
            try encodeContainer.encode(growthType.rawValue, forKey: .growthType)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let replicateTo = replicateTo {
            try encodeContainer.encode(replicateTo.rawValue, forKey: .replicateTo)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, tagmap0) in tags {
                try tagsContainer.encode(tagmap0, forKey: Key(stringValue: dictKey0))
            }
        }
    }
}