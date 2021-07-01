// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct SendMessageInputHeadersMiddleware: Middleware {
    public let id: String = "SendMessageInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SendMessageInput>,
                  next: H) -> Swift.Result<OperationOutput<SendMessageOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let connectionToken = input.operationInput.connectionToken {
            input.builder.withHeader(name: "X-Amz-Bearer", value: String(connectionToken))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SendMessageInput>
    public typealias MOutput = OperationOutput<SendMessageOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SendMessageOutputError>
}

public struct SendMessageInputQueryItemMiddleware: Middleware {
    public let id: String = "SendMessageInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SendMessageInput>,
                  next: H) -> Swift.Result<OperationOutput<SendMessageOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SendMessageInput>
    public typealias MOutput = OperationOutput<SendMessageOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SendMessageOutputError>
}

public struct SendMessageInputBodyMiddleware: Middleware {
    public let id: String = "SendMessageInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SendMessageInput>,
                  next: H) -> Swift.Result<OperationOutput<SendMessageOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<SendMessageInput>
    public typealias MOutput = OperationOutput<SendMessageOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SendMessageOutputError>
}

extension SendMessageInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case content = "Content"
        case contentType = "ContentType"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let clientToken = clientToken {
            try encodeContainer.encode(clientToken, forKey: .clientToken)
        }
        if let content = content {
            try encodeContainer.encode(content, forKey: .content)
        }
        if let contentType = contentType {
            try encodeContainer.encode(contentType, forKey: .contentType)
        }
    }
}