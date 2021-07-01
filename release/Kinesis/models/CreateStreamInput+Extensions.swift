// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateStreamInputHeadersMiddleware: Middleware {
    public let id: String = "CreateStreamInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateStreamOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateStreamInput>
    public typealias MOutput = OperationOutput<CreateStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateStreamOutputError>
}

public struct CreateStreamInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateStreamInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateStreamOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateStreamInput>
    public typealias MOutput = OperationOutput<CreateStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateStreamOutputError>
}

public struct CreateStreamInputBodyMiddleware: Middleware {
    public let id: String = "CreateStreamInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateStreamOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateStreamInput>
    public typealias MOutput = OperationOutput<CreateStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateStreamOutputError>
}

extension CreateStreamInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case shardCount = "ShardCount"
        case streamName = "StreamName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let shardCount = shardCount {
            try encodeContainer.encode(shardCount, forKey: .shardCount)
        }
        if let streamName = streamName {
            try encodeContainer.encode(streamName, forKey: .streamName)
        }
    }
}