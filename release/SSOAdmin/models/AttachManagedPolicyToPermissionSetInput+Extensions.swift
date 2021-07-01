// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AttachManagedPolicyToPermissionSetInputHeadersMiddleware: Middleware {
    public let id: String = "AttachManagedPolicyToPermissionSetInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AttachManagedPolicyToPermissionSetInput>,
                  next: H) -> Swift.Result<OperationOutput<AttachManagedPolicyToPermissionSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AttachManagedPolicyToPermissionSetInput>
    public typealias MOutput = OperationOutput<AttachManagedPolicyToPermissionSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AttachManagedPolicyToPermissionSetOutputError>
}

public struct AttachManagedPolicyToPermissionSetInputQueryItemMiddleware: Middleware {
    public let id: String = "AttachManagedPolicyToPermissionSetInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AttachManagedPolicyToPermissionSetInput>,
                  next: H) -> Swift.Result<OperationOutput<AttachManagedPolicyToPermissionSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AttachManagedPolicyToPermissionSetInput>
    public typealias MOutput = OperationOutput<AttachManagedPolicyToPermissionSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AttachManagedPolicyToPermissionSetOutputError>
}

public struct AttachManagedPolicyToPermissionSetInputBodyMiddleware: Middleware {
    public let id: String = "AttachManagedPolicyToPermissionSetInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AttachManagedPolicyToPermissionSetInput>,
                  next: H) -> Swift.Result<OperationOutput<AttachManagedPolicyToPermissionSetOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AttachManagedPolicyToPermissionSetInput>
    public typealias MOutput = OperationOutput<AttachManagedPolicyToPermissionSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AttachManagedPolicyToPermissionSetOutputError>
}

extension AttachManagedPolicyToPermissionSetInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case instanceArn = "InstanceArn"
        case managedPolicyArn = "ManagedPolicyArn"
        case permissionSetArn = "PermissionSetArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let instanceArn = instanceArn {
            try encodeContainer.encode(instanceArn, forKey: .instanceArn)
        }
        if let managedPolicyArn = managedPolicyArn {
            try encodeContainer.encode(managedPolicyArn, forKey: .managedPolicyArn)
        }
        if let permissionSetArn = permissionSetArn {
            try encodeContainer.encode(permissionSetArn, forKey: .permissionSetArn)
        }
    }
}