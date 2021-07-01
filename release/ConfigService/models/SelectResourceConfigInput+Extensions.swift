// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct SelectResourceConfigInputHeadersMiddleware: Middleware {
    public let id: String = "SelectResourceConfigInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SelectResourceConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<SelectResourceConfigOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SelectResourceConfigInput>
    public typealias MOutput = OperationOutput<SelectResourceConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SelectResourceConfigOutputError>
}

public struct SelectResourceConfigInputQueryItemMiddleware: Middleware {
    public let id: String = "SelectResourceConfigInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SelectResourceConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<SelectResourceConfigOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SelectResourceConfigInput>
    public typealias MOutput = OperationOutput<SelectResourceConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SelectResourceConfigOutputError>
}

public struct SelectResourceConfigInputBodyMiddleware: Middleware {
    public let id: String = "SelectResourceConfigInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SelectResourceConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<SelectResourceConfigOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<SelectResourceConfigInput>
    public typealias MOutput = OperationOutput<SelectResourceConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SelectResourceConfigOutputError>
}

extension SelectResourceConfigInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case expression = "Expression"
        case limit = "Limit"
        case nextToken = "NextToken"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let expression = expression {
            try encodeContainer.encode(expression, forKey: .expression)
        }
        if limit != 0 {
            try encodeContainer.encode(limit, forKey: .limit)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}