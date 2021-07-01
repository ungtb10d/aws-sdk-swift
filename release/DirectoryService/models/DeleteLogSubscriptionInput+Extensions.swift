// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteLogSubscriptionInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteLogSubscriptionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteLogSubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteLogSubscriptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteLogSubscriptionInput>
    public typealias MOutput = OperationOutput<DeleteLogSubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteLogSubscriptionOutputError>
}

public struct DeleteLogSubscriptionInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteLogSubscriptionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteLogSubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteLogSubscriptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteLogSubscriptionInput>
    public typealias MOutput = OperationOutput<DeleteLogSubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteLogSubscriptionOutputError>
}

public struct DeleteLogSubscriptionInputBodyMiddleware: Middleware {
    public let id: String = "DeleteLogSubscriptionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteLogSubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteLogSubscriptionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteLogSubscriptionInput>
    public typealias MOutput = OperationOutput<DeleteLogSubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteLogSubscriptionOutputError>
}

extension DeleteLogSubscriptionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case directoryId = "DirectoryId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let directoryId = directoryId {
            try encodeContainer.encode(directoryId, forKey: .directoryId)
        }
    }
}