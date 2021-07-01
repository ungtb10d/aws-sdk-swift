// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteUserPoolClientInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteUserPoolClientInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteUserPoolClientInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteUserPoolClientOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteUserPoolClientInput>
    public typealias MOutput = OperationOutput<DeleteUserPoolClientOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteUserPoolClientOutputError>
}

public struct DeleteUserPoolClientInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteUserPoolClientInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteUserPoolClientInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteUserPoolClientOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteUserPoolClientInput>
    public typealias MOutput = OperationOutput<DeleteUserPoolClientOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteUserPoolClientOutputError>
}

public struct DeleteUserPoolClientInputBodyMiddleware: Middleware {
    public let id: String = "DeleteUserPoolClientInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteUserPoolClientInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteUserPoolClientOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteUserPoolClientInput>
    public typealias MOutput = OperationOutput<DeleteUserPoolClientOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteUserPoolClientOutputError>
}

extension DeleteUserPoolClientInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case clientId = "ClientId"
        case userPoolId = "UserPoolId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let clientId = clientId {
            try encodeContainer.encode(clientId, forKey: .clientId)
        }
        if let userPoolId = userPoolId {
            try encodeContainer.encode(userPoolId, forKey: .userPoolId)
        }
    }
}