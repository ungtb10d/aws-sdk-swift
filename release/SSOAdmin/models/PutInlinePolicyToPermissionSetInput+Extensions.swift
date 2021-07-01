// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutInlinePolicyToPermissionSetInputHeadersMiddleware: Middleware {
    public let id: String = "PutInlinePolicyToPermissionSetInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutInlinePolicyToPermissionSetInput>,
                  next: H) -> Swift.Result<OperationOutput<PutInlinePolicyToPermissionSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutInlinePolicyToPermissionSetInput>
    public typealias MOutput = OperationOutput<PutInlinePolicyToPermissionSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutInlinePolicyToPermissionSetOutputError>
}

public struct PutInlinePolicyToPermissionSetInputQueryItemMiddleware: Middleware {
    public let id: String = "PutInlinePolicyToPermissionSetInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutInlinePolicyToPermissionSetInput>,
                  next: H) -> Swift.Result<OperationOutput<PutInlinePolicyToPermissionSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutInlinePolicyToPermissionSetInput>
    public typealias MOutput = OperationOutput<PutInlinePolicyToPermissionSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutInlinePolicyToPermissionSetOutputError>
}

public struct PutInlinePolicyToPermissionSetInputBodyMiddleware: Middleware {
    public let id: String = "PutInlinePolicyToPermissionSetInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutInlinePolicyToPermissionSetInput>,
                  next: H) -> Swift.Result<OperationOutput<PutInlinePolicyToPermissionSetOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<PutInlinePolicyToPermissionSetInput>
    public typealias MOutput = OperationOutput<PutInlinePolicyToPermissionSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutInlinePolicyToPermissionSetOutputError>
}

extension PutInlinePolicyToPermissionSetInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case inlinePolicy = "InlinePolicy"
        case instanceArn = "InstanceArn"
        case permissionSetArn = "PermissionSetArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let inlinePolicy = inlinePolicy {
            try encodeContainer.encode(inlinePolicy, forKey: .inlinePolicy)
        }
        if let instanceArn = instanceArn {
            try encodeContainer.encode(instanceArn, forKey: .instanceArn)
        }
        if let permissionSetArn = permissionSetArn {
            try encodeContainer.encode(permissionSetArn, forKey: .permissionSetArn)
        }
    }
}