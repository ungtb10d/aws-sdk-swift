// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateJobInputHeadersMiddleware: Middleware {
    public let id: String = "CreateJobInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateJobInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateJobInput>
    public typealias MOutput = OperationOutput<CreateJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateJobOutputError>
}

public struct CreateJobInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateJobInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateJobInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateJobInput>
    public typealias MOutput = OperationOutput<CreateJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateJobOutputError>
}

public struct CreateJobInputBodyMiddleware: Middleware {
    public let id: String = "CreateJobInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateJobInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateJobOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateJobInput>
    public typealias MOutput = OperationOutput<CreateJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateJobOutputError>
}

extension CreateJobInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case details = "Details"
        case type = "Type"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let details = details {
            try encodeContainer.encode(details, forKey: .details)
        }
        if let type = type {
            try encodeContainer.encode(type.rawValue, forKey: .type)
        }
    }
}