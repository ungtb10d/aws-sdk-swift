// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ResetServiceSpecificCredentialInputHeadersMiddleware: Middleware {
    public let id: String = "ResetServiceSpecificCredentialInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ResetServiceSpecificCredentialInput>,
                  next: H) -> Swift.Result<OperationOutput<ResetServiceSpecificCredentialOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ResetServiceSpecificCredentialInput>
    public typealias MOutput = OperationOutput<ResetServiceSpecificCredentialOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ResetServiceSpecificCredentialOutputError>
}

public struct ResetServiceSpecificCredentialInputQueryItemMiddleware: Middleware {
    public let id: String = "ResetServiceSpecificCredentialInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ResetServiceSpecificCredentialInput>,
                  next: H) -> Swift.Result<OperationOutput<ResetServiceSpecificCredentialOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ResetServiceSpecificCredentialInput>
    public typealias MOutput = OperationOutput<ResetServiceSpecificCredentialOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ResetServiceSpecificCredentialOutputError>
}

public struct ResetServiceSpecificCredentialInputBodyMiddleware: Middleware {
    public let id: String = "ResetServiceSpecificCredentialInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ResetServiceSpecificCredentialInput>,
                  next: H) -> Swift.Result<OperationOutput<ResetServiceSpecificCredentialOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            let encoder = context.getEncoder()
            let data = try encoder.encode(input.operationInput)
            let body = HttpBody.data(data)
            input.builder.withBody(body)
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ResetServiceSpecificCredentialInput>
    public typealias MOutput = OperationOutput<ResetServiceSpecificCredentialOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ResetServiceSpecificCredentialOutputError>
}

extension ResetServiceSpecificCredentialInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let serviceSpecificCredentialId = serviceSpecificCredentialId {
            try container.encode(serviceSpecificCredentialId, forKey: Key("ServiceSpecificCredentialId"))
        }
        if let userName = userName {
            try container.encode(userName, forKey: Key("UserName"))
        }
        try container.encode("ResetServiceSpecificCredential", forKey:Key("Action"))
        try container.encode("2010-05-08", forKey:Key("Version"))
    }
}