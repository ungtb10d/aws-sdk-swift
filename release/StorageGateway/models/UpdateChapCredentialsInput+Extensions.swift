// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateChapCredentialsInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateChapCredentialsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateChapCredentialsInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateChapCredentialsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateChapCredentialsInput>
    public typealias MOutput = OperationOutput<UpdateChapCredentialsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateChapCredentialsOutputError>
}

public struct UpdateChapCredentialsInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateChapCredentialsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateChapCredentialsInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateChapCredentialsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateChapCredentialsInput>
    public typealias MOutput = OperationOutput<UpdateChapCredentialsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateChapCredentialsOutputError>
}

public struct UpdateChapCredentialsInputBodyMiddleware: Middleware {
    public let id: String = "UpdateChapCredentialsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateChapCredentialsInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateChapCredentialsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateChapCredentialsInput>
    public typealias MOutput = OperationOutput<UpdateChapCredentialsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateChapCredentialsOutputError>
}

extension UpdateChapCredentialsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case initiatorName = "InitiatorName"
        case secretToAuthenticateInitiator = "SecretToAuthenticateInitiator"
        case secretToAuthenticateTarget = "SecretToAuthenticateTarget"
        case targetARN = "TargetARN"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let initiatorName = initiatorName {
            try encodeContainer.encode(initiatorName, forKey: .initiatorName)
        }
        if let secretToAuthenticateInitiator = secretToAuthenticateInitiator {
            try encodeContainer.encode(secretToAuthenticateInitiator, forKey: .secretToAuthenticateInitiator)
        }
        if let secretToAuthenticateTarget = secretToAuthenticateTarget {
            try encodeContainer.encode(secretToAuthenticateTarget, forKey: .secretToAuthenticateTarget)
        }
        if let targetARN = targetARN {
            try encodeContainer.encode(targetARN, forKey: .targetARN)
        }
    }
}