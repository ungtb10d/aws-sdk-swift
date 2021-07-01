// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateAttributeGroupInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateAttributeGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateAttributeGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateAttributeGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateAttributeGroupInput>
    public typealias MOutput = OperationOutput<UpdateAttributeGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateAttributeGroupOutputError>
}

public struct UpdateAttributeGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateAttributeGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateAttributeGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateAttributeGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateAttributeGroupInput>
    public typealias MOutput = OperationOutput<UpdateAttributeGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateAttributeGroupOutputError>
}

public struct UpdateAttributeGroupInputBodyMiddleware: Middleware {
    public let id: String = "UpdateAttributeGroupInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateAttributeGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateAttributeGroupOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateAttributeGroupInput>
    public typealias MOutput = OperationOutput<UpdateAttributeGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateAttributeGroupOutputError>
}

extension UpdateAttributeGroupInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case attributes
        case description
        case name
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let attributes = attributes {
            try encodeContainer.encode(attributes, forKey: .attributes)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
    }
}