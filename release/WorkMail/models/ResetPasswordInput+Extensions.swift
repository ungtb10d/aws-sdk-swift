// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ResetPasswordInputHeadersMiddleware: Middleware {
    public let id: String = "ResetPasswordInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ResetPasswordInput>,
                  next: H) -> Swift.Result<OperationOutput<ResetPasswordOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ResetPasswordInput>
    public typealias MOutput = OperationOutput<ResetPasswordOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ResetPasswordOutputError>
}

public struct ResetPasswordInputQueryItemMiddleware: Middleware {
    public let id: String = "ResetPasswordInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ResetPasswordInput>,
                  next: H) -> Swift.Result<OperationOutput<ResetPasswordOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ResetPasswordInput>
    public typealias MOutput = OperationOutput<ResetPasswordOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ResetPasswordOutputError>
}

public struct ResetPasswordInputBodyMiddleware: Middleware {
    public let id: String = "ResetPasswordInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ResetPasswordInput>,
                  next: H) -> Swift.Result<OperationOutput<ResetPasswordOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ResetPasswordInput>
    public typealias MOutput = OperationOutput<ResetPasswordOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ResetPasswordOutputError>
}

extension ResetPasswordInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case organizationId = "OrganizationId"
        case password = "Password"
        case userId = "UserId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let organizationId = organizationId {
            try encodeContainer.encode(organizationId, forKey: .organizationId)
        }
        if let password = password {
            try encodeContainer.encode(password, forKey: .password)
        }
        if let userId = userId {
            try encodeContainer.encode(userId, forKey: .userId)
        }
    }
}