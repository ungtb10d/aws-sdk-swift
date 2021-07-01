// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateIPSetInputHeadersMiddleware: Middleware {
    public let id: String = "CreateIPSetInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateIPSetInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateIPSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateIPSetInput>
    public typealias MOutput = OperationOutput<CreateIPSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateIPSetOutputError>
}

public struct CreateIPSetInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateIPSetInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateIPSetInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateIPSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateIPSetInput>
    public typealias MOutput = OperationOutput<CreateIPSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateIPSetOutputError>
}

public struct CreateIPSetInputBodyMiddleware: Middleware {
    public let id: String = "CreateIPSetInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateIPSetInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateIPSetOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateIPSetInput>
    public typealias MOutput = OperationOutput<CreateIPSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateIPSetOutputError>
}

extension CreateIPSetInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case changeToken = "ChangeToken"
        case name = "Name"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let changeToken = changeToken {
            try encodeContainer.encode(changeToken, forKey: .changeToken)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
    }
}