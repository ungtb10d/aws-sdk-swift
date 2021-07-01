// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct SendTaskFailureInputHeadersMiddleware: Middleware {
    public let id: String = "SendTaskFailureInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SendTaskFailureInput>,
                  next: H) -> Swift.Result<OperationOutput<SendTaskFailureOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SendTaskFailureInput>
    public typealias MOutput = OperationOutput<SendTaskFailureOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SendTaskFailureOutputError>
}

public struct SendTaskFailureInputQueryItemMiddleware: Middleware {
    public let id: String = "SendTaskFailureInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SendTaskFailureInput>,
                  next: H) -> Swift.Result<OperationOutput<SendTaskFailureOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SendTaskFailureInput>
    public typealias MOutput = OperationOutput<SendTaskFailureOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SendTaskFailureOutputError>
}

public struct SendTaskFailureInputBodyMiddleware: Middleware {
    public let id: String = "SendTaskFailureInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SendTaskFailureInput>,
                  next: H) -> Swift.Result<OperationOutput<SendTaskFailureOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<SendTaskFailureInput>
    public typealias MOutput = OperationOutput<SendTaskFailureOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SendTaskFailureOutputError>
}

extension SendTaskFailureInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case cause
        case error
        case taskToken
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let cause = cause {
            try encodeContainer.encode(cause, forKey: .cause)
        }
        if let error = error {
            try encodeContainer.encode(error, forKey: .error)
        }
        if let taskToken = taskToken {
            try encodeContainer.encode(taskToken, forKey: .taskToken)
        }
    }
}