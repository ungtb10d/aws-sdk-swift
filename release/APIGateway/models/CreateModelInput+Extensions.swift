// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateModelInputHeadersMiddleware: Middleware {
    public let id: String = "CreateModelInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateModelInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateModelOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateModelInput>
    public typealias MOutput = OperationOutput<CreateModelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateModelOutputError>
}

public struct CreateModelInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateModelInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateModelInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateModelOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateModelInput>
    public typealias MOutput = OperationOutput<CreateModelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateModelOutputError>
}

public struct CreateModelInputBodyMiddleware: Middleware {
    public let id: String = "CreateModelInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateModelInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateModelOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateModelInput>
    public typealias MOutput = OperationOutput<CreateModelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateModelOutputError>
}

extension CreateModelInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case contentType
        case description
        case name
        case schema
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let contentType = contentType {
            try encodeContainer.encode(contentType, forKey: .contentType)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let schema = schema {
            try encodeContainer.encode(schema, forKey: .schema)
        }
    }
}