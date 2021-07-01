// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteAccessInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteAccessInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteAccessInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteAccessOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteAccessInput>
    public typealias MOutput = OperationOutput<DeleteAccessOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteAccessOutputError>
}

public struct DeleteAccessInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteAccessInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteAccessInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteAccessOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteAccessInput>
    public typealias MOutput = OperationOutput<DeleteAccessOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteAccessOutputError>
}

public struct DeleteAccessInputBodyMiddleware: Middleware {
    public let id: String = "DeleteAccessInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteAccessInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteAccessOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteAccessInput>
    public typealias MOutput = OperationOutput<DeleteAccessOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteAccessOutputError>
}

extension DeleteAccessInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case externalId = "ExternalId"
        case serverId = "ServerId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let externalId = externalId {
            try encodeContainer.encode(externalId, forKey: .externalId)
        }
        if let serverId = serverId {
            try encodeContainer.encode(serverId, forKey: .serverId)
        }
    }
}