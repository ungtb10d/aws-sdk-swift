// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateApiInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateApiInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateApiInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateApiOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateApiInput>
    public typealias MOutput = OperationOutput<UpdateApiOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateApiOutputError>
}

public struct UpdateApiInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateApiInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateApiInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateApiOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateApiInput>
    public typealias MOutput = OperationOutput<UpdateApiOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateApiOutputError>
}

public struct UpdateApiInputBodyMiddleware: Middleware {
    public let id: String = "UpdateApiInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateApiInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateApiOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateApiInput>
    public typealias MOutput = OperationOutput<UpdateApiOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateApiOutputError>
}

extension UpdateApiInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case apiKeySelectionExpression = "apiKeySelectionExpression"
        case corsConfiguration = "corsConfiguration"
        case credentialsArn = "credentialsArn"
        case description = "description"
        case disableExecuteApiEndpoint = "disableExecuteApiEndpoint"
        case disableSchemaValidation = "disableSchemaValidation"
        case name = "name"
        case routeKey = "routeKey"
        case routeSelectionExpression = "routeSelectionExpression"
        case target = "target"
        case version = "version"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let apiKeySelectionExpression = apiKeySelectionExpression {
            try encodeContainer.encode(apiKeySelectionExpression, forKey: .apiKeySelectionExpression)
        }
        if let corsConfiguration = corsConfiguration {
            try encodeContainer.encode(corsConfiguration, forKey: .corsConfiguration)
        }
        if let credentialsArn = credentialsArn {
            try encodeContainer.encode(credentialsArn, forKey: .credentialsArn)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if disableExecuteApiEndpoint != false {
            try encodeContainer.encode(disableExecuteApiEndpoint, forKey: .disableExecuteApiEndpoint)
        }
        if disableSchemaValidation != false {
            try encodeContainer.encode(disableSchemaValidation, forKey: .disableSchemaValidation)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let routeKey = routeKey {
            try encodeContainer.encode(routeKey, forKey: .routeKey)
        }
        if let routeSelectionExpression = routeSelectionExpression {
            try encodeContainer.encode(routeSelectionExpression, forKey: .routeSelectionExpression)
        }
        if let target = target {
            try encodeContainer.encode(target, forKey: .target)
        }
        if let version = version {
            try encodeContainer.encode(version, forKey: .version)
        }
    }
}