// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeregisterInstanceInputHeadersMiddleware: Middleware {
    public let id: String = "DeregisterInstanceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeregisterInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeregisterInstanceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeregisterInstanceInput>
    public typealias MOutput = OperationOutput<DeregisterInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeregisterInstanceOutputError>
}

public struct DeregisterInstanceInputQueryItemMiddleware: Middleware {
    public let id: String = "DeregisterInstanceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeregisterInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeregisterInstanceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeregisterInstanceInput>
    public typealias MOutput = OperationOutput<DeregisterInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeregisterInstanceOutputError>
}

public struct DeregisterInstanceInputBodyMiddleware: Middleware {
    public let id: String = "DeregisterInstanceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeregisterInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeregisterInstanceOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeregisterInstanceInput>
    public typealias MOutput = OperationOutput<DeregisterInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeregisterInstanceOutputError>
}

extension DeregisterInstanceInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case instanceId = "InstanceId"
        case serviceId = "ServiceId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let instanceId = instanceId {
            try encodeContainer.encode(instanceId, forKey: .instanceId)
        }
        if let serviceId = serviceId {
            try encodeContainer.encode(serviceId, forKey: .serviceId)
        }
    }
}