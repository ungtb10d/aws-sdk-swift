// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RecordActivityTaskHeartbeatInputHeadersMiddleware: Middleware {
    public let id: String = "RecordActivityTaskHeartbeatInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RecordActivityTaskHeartbeatInput>,
                  next: H) -> Swift.Result<OperationOutput<RecordActivityTaskHeartbeatOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RecordActivityTaskHeartbeatInput>
    public typealias MOutput = OperationOutput<RecordActivityTaskHeartbeatOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RecordActivityTaskHeartbeatOutputError>
}

public struct RecordActivityTaskHeartbeatInputQueryItemMiddleware: Middleware {
    public let id: String = "RecordActivityTaskHeartbeatInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RecordActivityTaskHeartbeatInput>,
                  next: H) -> Swift.Result<OperationOutput<RecordActivityTaskHeartbeatOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RecordActivityTaskHeartbeatInput>
    public typealias MOutput = OperationOutput<RecordActivityTaskHeartbeatOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RecordActivityTaskHeartbeatOutputError>
}

public struct RecordActivityTaskHeartbeatInputBodyMiddleware: Middleware {
    public let id: String = "RecordActivityTaskHeartbeatInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RecordActivityTaskHeartbeatInput>,
                  next: H) -> Swift.Result<OperationOutput<RecordActivityTaskHeartbeatOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<RecordActivityTaskHeartbeatInput>
    public typealias MOutput = OperationOutput<RecordActivityTaskHeartbeatOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RecordActivityTaskHeartbeatOutputError>
}

extension RecordActivityTaskHeartbeatInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case details
        case taskToken
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let details = details {
            try encodeContainer.encode(details, forKey: .details)
        }
        if let taskToken = taskToken {
            try encodeContainer.encode(taskToken, forKey: .taskToken)
        }
    }
}