// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteVirtualMFADeviceInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteVirtualMFADeviceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteVirtualMFADeviceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteVirtualMFADeviceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteVirtualMFADeviceInput>
    public typealias MOutput = OperationOutput<DeleteVirtualMFADeviceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteVirtualMFADeviceOutputError>
}

public struct DeleteVirtualMFADeviceInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteVirtualMFADeviceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteVirtualMFADeviceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteVirtualMFADeviceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteVirtualMFADeviceInput>
    public typealias MOutput = OperationOutput<DeleteVirtualMFADeviceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteVirtualMFADeviceOutputError>
}

public struct DeleteVirtualMFADeviceInputBodyMiddleware: Middleware {
    public let id: String = "DeleteVirtualMFADeviceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteVirtualMFADeviceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteVirtualMFADeviceOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteVirtualMFADeviceInput>
    public typealias MOutput = OperationOutput<DeleteVirtualMFADeviceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteVirtualMFADeviceOutputError>
}

extension DeleteVirtualMFADeviceInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let serialNumber = serialNumber {
            try container.encode(serialNumber, forKey: Key("SerialNumber"))
        }
        try container.encode("DeleteVirtualMFADevice", forKey:Key("Action"))
        try container.encode("2010-05-08", forKey:Key("Version"))
    }
}