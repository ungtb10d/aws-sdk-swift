// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AbortEnvironmentUpdateInputHeadersMiddleware: Middleware {
    public let id: String = "AbortEnvironmentUpdateInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AbortEnvironmentUpdateInput>,
                  next: H) -> Swift.Result<OperationOutput<AbortEnvironmentUpdateOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AbortEnvironmentUpdateInput>
    public typealias MOutput = OperationOutput<AbortEnvironmentUpdateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AbortEnvironmentUpdateOutputError>
}

public struct AbortEnvironmentUpdateInputQueryItemMiddleware: Middleware {
    public let id: String = "AbortEnvironmentUpdateInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AbortEnvironmentUpdateInput>,
                  next: H) -> Swift.Result<OperationOutput<AbortEnvironmentUpdateOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AbortEnvironmentUpdateInput>
    public typealias MOutput = OperationOutput<AbortEnvironmentUpdateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AbortEnvironmentUpdateOutputError>
}

public struct AbortEnvironmentUpdateInputBodyMiddleware: Middleware {
    public let id: String = "AbortEnvironmentUpdateInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AbortEnvironmentUpdateInput>,
                  next: H) -> Swift.Result<OperationOutput<AbortEnvironmentUpdateOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AbortEnvironmentUpdateInput>
    public typealias MOutput = OperationOutput<AbortEnvironmentUpdateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AbortEnvironmentUpdateOutputError>
}

extension AbortEnvironmentUpdateInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let environmentId = environmentId {
            try container.encode(environmentId, forKey: Key("EnvironmentId"))
        }
        if let environmentName = environmentName {
            try container.encode(environmentName, forKey: Key("EnvironmentName"))
        }
        try container.encode("AbortEnvironmentUpdate", forKey:Key("Action"))
        try container.encode("2010-12-01", forKey:Key("Version"))
    }
}