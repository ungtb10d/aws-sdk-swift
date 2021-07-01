// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RetryBuildInputHeadersMiddleware: Middleware {
    public let id: String = "RetryBuildInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RetryBuildInput>,
                  next: H) -> Swift.Result<OperationOutput<RetryBuildOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RetryBuildInput>
    public typealias MOutput = OperationOutput<RetryBuildOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RetryBuildOutputError>
}

public struct RetryBuildInputQueryItemMiddleware: Middleware {
    public let id: String = "RetryBuildInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RetryBuildInput>,
                  next: H) -> Swift.Result<OperationOutput<RetryBuildOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RetryBuildInput>
    public typealias MOutput = OperationOutput<RetryBuildOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RetryBuildOutputError>
}

public struct RetryBuildInputBodyMiddleware: Middleware {
    public let id: String = "RetryBuildInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RetryBuildInput>,
                  next: H) -> Swift.Result<OperationOutput<RetryBuildOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<RetryBuildInput>
    public typealias MOutput = OperationOutput<RetryBuildOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RetryBuildOutputError>
}

extension RetryBuildInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case id
        case idempotencyToken
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let idempotencyToken = idempotencyToken {
            try encodeContainer.encode(idempotencyToken, forKey: .idempotencyToken)
        }
    }
}