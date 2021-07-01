// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateTokenInputHeadersMiddleware: Middleware {
    public let id: String = "CreateTokenInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateTokenInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateTokenOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateTokenInput>
    public typealias MOutput = OperationOutput<CreateTokenOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateTokenOutputError>
}

public struct CreateTokenInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateTokenInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateTokenInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateTokenOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateTokenInput>
    public typealias MOutput = OperationOutput<CreateTokenOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateTokenOutputError>
}

public struct CreateTokenInputBodyMiddleware: Middleware {
    public let id: String = "CreateTokenInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateTokenInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateTokenOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateTokenInput>
    public typealias MOutput = OperationOutput<CreateTokenOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateTokenOutputError>
}

extension CreateTokenInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case clientId
        case clientSecret
        case code
        case deviceCode
        case grantType
        case redirectUri
        case refreshToken
        case scope
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let clientId = clientId {
            try encodeContainer.encode(clientId, forKey: .clientId)
        }
        if let clientSecret = clientSecret {
            try encodeContainer.encode(clientSecret, forKey: .clientSecret)
        }
        if let code = code {
            try encodeContainer.encode(code, forKey: .code)
        }
        if let deviceCode = deviceCode {
            try encodeContainer.encode(deviceCode, forKey: .deviceCode)
        }
        if let grantType = grantType {
            try encodeContainer.encode(grantType, forKey: .grantType)
        }
        if let redirectUri = redirectUri {
            try encodeContainer.encode(redirectUri, forKey: .redirectUri)
        }
        if let refreshToken = refreshToken {
            try encodeContainer.encode(refreshToken, forKey: .refreshToken)
        }
        if let scope = scope {
            var scopeContainer = encodeContainer.nestedUnkeyedContainer(forKey: .scope)
            for scopes0 in scope {
                try scopeContainer.encode(scopes0)
            }
        }
    }
}