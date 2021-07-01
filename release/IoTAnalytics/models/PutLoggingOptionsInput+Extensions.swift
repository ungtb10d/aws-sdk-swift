// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutLoggingOptionsInputHeadersMiddleware: Middleware {
    public let id: String = "PutLoggingOptionsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutLoggingOptionsInput>,
                  next: H) -> Swift.Result<OperationOutput<PutLoggingOptionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutLoggingOptionsInput>
    public typealias MOutput = OperationOutput<PutLoggingOptionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutLoggingOptionsOutputError>
}

public struct PutLoggingOptionsInputQueryItemMiddleware: Middleware {
    public let id: String = "PutLoggingOptionsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutLoggingOptionsInput>,
                  next: H) -> Swift.Result<OperationOutput<PutLoggingOptionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutLoggingOptionsInput>
    public typealias MOutput = OperationOutput<PutLoggingOptionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutLoggingOptionsOutputError>
}

public struct PutLoggingOptionsInputBodyMiddleware: Middleware {
    public let id: String = "PutLoggingOptionsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutLoggingOptionsInput>,
                  next: H) -> Swift.Result<OperationOutput<PutLoggingOptionsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<PutLoggingOptionsInput>
    public typealias MOutput = OperationOutput<PutLoggingOptionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutLoggingOptionsOutputError>
}

extension PutLoggingOptionsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case loggingOptions
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let loggingOptions = loggingOptions {
            try encodeContainer.encode(loggingOptions, forKey: .loggingOptions)
        }
    }
}