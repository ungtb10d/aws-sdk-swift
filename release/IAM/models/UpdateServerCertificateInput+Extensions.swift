// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateServerCertificateInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateServerCertificateInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateServerCertificateInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateServerCertificateOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateServerCertificateInput>
    public typealias MOutput = OperationOutput<UpdateServerCertificateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateServerCertificateOutputError>
}

public struct UpdateServerCertificateInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateServerCertificateInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateServerCertificateInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateServerCertificateOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateServerCertificateInput>
    public typealias MOutput = OperationOutput<UpdateServerCertificateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateServerCertificateOutputError>
}

public struct UpdateServerCertificateInputBodyMiddleware: Middleware {
    public let id: String = "UpdateServerCertificateInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateServerCertificateInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateServerCertificateOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateServerCertificateInput>
    public typealias MOutput = OperationOutput<UpdateServerCertificateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateServerCertificateOutputError>
}

extension UpdateServerCertificateInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let newPath = newPath {
            try container.encode(newPath, forKey: Key("NewPath"))
        }
        if let newServerCertificateName = newServerCertificateName {
            try container.encode(newServerCertificateName, forKey: Key("NewServerCertificateName"))
        }
        if let serverCertificateName = serverCertificateName {
            try container.encode(serverCertificateName, forKey: Key("ServerCertificateName"))
        }
        try container.encode("UpdateServerCertificate", forKey:Key("Action"))
        try container.encode("2010-05-08", forKey:Key("Version"))
    }
}