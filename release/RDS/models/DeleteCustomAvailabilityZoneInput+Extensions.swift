// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteCustomAvailabilityZoneInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteCustomAvailabilityZoneInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteCustomAvailabilityZoneInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteCustomAvailabilityZoneOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteCustomAvailabilityZoneInput>
    public typealias MOutput = OperationOutput<DeleteCustomAvailabilityZoneOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteCustomAvailabilityZoneOutputError>
}

public struct DeleteCustomAvailabilityZoneInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteCustomAvailabilityZoneInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteCustomAvailabilityZoneInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteCustomAvailabilityZoneOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteCustomAvailabilityZoneInput>
    public typealias MOutput = OperationOutput<DeleteCustomAvailabilityZoneOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteCustomAvailabilityZoneOutputError>
}

public struct DeleteCustomAvailabilityZoneInputBodyMiddleware: Middleware {
    public let id: String = "DeleteCustomAvailabilityZoneInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteCustomAvailabilityZoneInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteCustomAvailabilityZoneOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteCustomAvailabilityZoneInput>
    public typealias MOutput = OperationOutput<DeleteCustomAvailabilityZoneOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteCustomAvailabilityZoneOutputError>
}

extension DeleteCustomAvailabilityZoneInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let customAvailabilityZoneId = customAvailabilityZoneId {
            try container.encode(customAvailabilityZoneId, forKey: Key("CustomAvailabilityZoneId"))
        }
        try container.encode("DeleteCustomAvailabilityZone", forKey:Key("Action"))
        try container.encode("2014-10-31", forKey:Key("Version"))
    }
}