// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteApplicationInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteApplicationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteApplicationInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteApplicationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteApplicationInput>
    public typealias MOutput = OperationOutput<DeleteApplicationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteApplicationOutputError>
}

public struct DeleteApplicationInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteApplicationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteApplicationInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteApplicationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteApplicationInput>
    public typealias MOutput = OperationOutput<DeleteApplicationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteApplicationOutputError>
}

public struct DeleteApplicationInputBodyMiddleware: Middleware {
    public let id: String = "DeleteApplicationInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteApplicationInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteApplicationOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteApplicationInput>
    public typealias MOutput = OperationOutput<DeleteApplicationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteApplicationOutputError>
}

extension DeleteApplicationInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case applicationName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let applicationName = applicationName {
            try encodeContainer.encode(applicationName, forKey: .applicationName)
        }
    }
}