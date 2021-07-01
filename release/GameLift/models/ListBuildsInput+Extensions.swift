// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListBuildsInputHeadersMiddleware: Middleware {
    public let id: String = "ListBuildsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListBuildsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListBuildsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListBuildsInput>
    public typealias MOutput = OperationOutput<ListBuildsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListBuildsOutputError>
}

public struct ListBuildsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListBuildsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListBuildsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListBuildsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListBuildsInput>
    public typealias MOutput = OperationOutput<ListBuildsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListBuildsOutputError>
}

public struct ListBuildsInputBodyMiddleware: Middleware {
    public let id: String = "ListBuildsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListBuildsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListBuildsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListBuildsInput>
    public typealias MOutput = OperationOutput<ListBuildsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListBuildsOutputError>
}

extension ListBuildsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case limit = "Limit"
        case nextToken = "NextToken"
        case status = "Status"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let limit = limit {
            try encodeContainer.encode(limit, forKey: .limit)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
    }
}