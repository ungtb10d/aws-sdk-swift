// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetInlinePolicyForPermissionSetInputHeadersMiddleware: Middleware {
    public let id: String = "GetInlinePolicyForPermissionSetInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetInlinePolicyForPermissionSetInput>,
                  next: H) -> Swift.Result<OperationOutput<GetInlinePolicyForPermissionSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetInlinePolicyForPermissionSetInput>
    public typealias MOutput = OperationOutput<GetInlinePolicyForPermissionSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetInlinePolicyForPermissionSetOutputError>
}

public struct GetInlinePolicyForPermissionSetInputQueryItemMiddleware: Middleware {
    public let id: String = "GetInlinePolicyForPermissionSetInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetInlinePolicyForPermissionSetInput>,
                  next: H) -> Swift.Result<OperationOutput<GetInlinePolicyForPermissionSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetInlinePolicyForPermissionSetInput>
    public typealias MOutput = OperationOutput<GetInlinePolicyForPermissionSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetInlinePolicyForPermissionSetOutputError>
}

public struct GetInlinePolicyForPermissionSetInputBodyMiddleware: Middleware {
    public let id: String = "GetInlinePolicyForPermissionSetInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetInlinePolicyForPermissionSetInput>,
                  next: H) -> Swift.Result<OperationOutput<GetInlinePolicyForPermissionSetOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetInlinePolicyForPermissionSetInput>
    public typealias MOutput = OperationOutput<GetInlinePolicyForPermissionSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetInlinePolicyForPermissionSetOutputError>
}

extension GetInlinePolicyForPermissionSetInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case instanceArn = "InstanceArn"
        case permissionSetArn = "PermissionSetArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let instanceArn = instanceArn {
            try encodeContainer.encode(instanceArn, forKey: .instanceArn)
        }
        if let permissionSetArn = permissionSetArn {
            try encodeContainer.encode(permissionSetArn, forKey: .permissionSetArn)
        }
    }
}