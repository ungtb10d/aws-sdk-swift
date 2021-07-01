// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteStreamInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteStreamInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteStreamOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteStreamInput>
    public typealias MOutput = OperationOutput<DeleteStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteStreamOutputError>
}

public struct DeleteStreamInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteStreamInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteStreamOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteStreamInput>
    public typealias MOutput = OperationOutput<DeleteStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteStreamOutputError>
}

public struct DeleteStreamInputBodyMiddleware: Middleware {
    public let id: String = "DeleteStreamInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteStreamOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteStreamInput>
    public typealias MOutput = OperationOutput<DeleteStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteStreamOutputError>
}

extension DeleteStreamInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case enforceConsumerDeletion = "EnforceConsumerDeletion"
        case streamName = "StreamName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let enforceConsumerDeletion = enforceConsumerDeletion {
            try encodeContainer.encode(enforceConsumerDeletion, forKey: .enforceConsumerDeletion)
        }
        if let streamName = streamName {
            try encodeContainer.encode(streamName, forKey: .streamName)
        }
    }
}