// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteUserPoolDomainInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteUserPoolDomainInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteUserPoolDomainInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteUserPoolDomainOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteUserPoolDomainInput>
    public typealias MOutput = OperationOutput<DeleteUserPoolDomainOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteUserPoolDomainOutputError>
}

public struct DeleteUserPoolDomainInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteUserPoolDomainInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteUserPoolDomainInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteUserPoolDomainOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteUserPoolDomainInput>
    public typealias MOutput = OperationOutput<DeleteUserPoolDomainOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteUserPoolDomainOutputError>
}

public struct DeleteUserPoolDomainInputBodyMiddleware: Middleware {
    public let id: String = "DeleteUserPoolDomainInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteUserPoolDomainInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteUserPoolDomainOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteUserPoolDomainInput>
    public typealias MOutput = OperationOutput<DeleteUserPoolDomainOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteUserPoolDomainOutputError>
}

extension DeleteUserPoolDomainInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case domain = "Domain"
        case userPoolId = "UserPoolId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let domain = domain {
            try encodeContainer.encode(domain, forKey: .domain)
        }
        if let userPoolId = userPoolId {
            try encodeContainer.encode(userPoolId, forKey: .userPoolId)
        }
    }
}