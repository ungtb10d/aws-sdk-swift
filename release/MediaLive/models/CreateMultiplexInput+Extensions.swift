// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateMultiplexInputHeadersMiddleware: Middleware {
    public let id: String = "CreateMultiplexInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateMultiplexInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateMultiplexOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateMultiplexInput>
    public typealias MOutput = OperationOutput<CreateMultiplexOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateMultiplexOutputError>
}

public struct CreateMultiplexInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateMultiplexInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateMultiplexInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateMultiplexOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateMultiplexInput>
    public typealias MOutput = OperationOutput<CreateMultiplexOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateMultiplexOutputError>
}

public struct CreateMultiplexInputBodyMiddleware: Middleware {
    public let id: String = "CreateMultiplexInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateMultiplexInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateMultiplexOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateMultiplexInput>
    public typealias MOutput = OperationOutput<CreateMultiplexOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateMultiplexOutputError>
}

extension CreateMultiplexInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case availabilityZones = "availabilityZones"
        case multiplexSettings = "multiplexSettings"
        case name = "name"
        case requestId = "requestId"
        case tags = "tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let availabilityZones = availabilityZones {
            var availabilityZonesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .availabilityZones)
            for __listof__string0 in availabilityZones {
                try availabilityZonesContainer.encode(__listof__string0)
            }
        }
        if let multiplexSettings = multiplexSettings {
            try encodeContainer.encode(multiplexSettings, forKey: .multiplexSettings)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let requestId = requestId {
            try encodeContainer.encode(requestId, forKey: .requestId)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, tags0) in tags {
                try tagsContainer.encode(tags0, forKey: Key(stringValue: dictKey0))
            }
        }
    }
}