// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutLoggingConfigurationInputHeadersMiddleware: Middleware {
    public let id: String = "PutLoggingConfigurationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutLoggingConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<PutLoggingConfigurationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutLoggingConfigurationInput>
    public typealias MOutput = OperationOutput<PutLoggingConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutLoggingConfigurationOutputError>
}

public struct PutLoggingConfigurationInputQueryItemMiddleware: Middleware {
    public let id: String = "PutLoggingConfigurationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutLoggingConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<PutLoggingConfigurationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutLoggingConfigurationInput>
    public typealias MOutput = OperationOutput<PutLoggingConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutLoggingConfigurationOutputError>
}

public struct PutLoggingConfigurationInputBodyMiddleware: Middleware {
    public let id: String = "PutLoggingConfigurationInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutLoggingConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<PutLoggingConfigurationOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<PutLoggingConfigurationInput>
    public typealias MOutput = OperationOutput<PutLoggingConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutLoggingConfigurationOutputError>
}

extension PutLoggingConfigurationInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case loggingConfiguration = "LoggingConfiguration"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let loggingConfiguration = loggingConfiguration {
            try encodeContainer.encode(loggingConfiguration, forKey: .loggingConfiguration)
        }
    }
}