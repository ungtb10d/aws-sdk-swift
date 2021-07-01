// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeEventAggregatesInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeEventAggregatesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeEventAggregatesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeEventAggregatesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeEventAggregatesInput>
    public typealias MOutput = OperationOutput<DescribeEventAggregatesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeEventAggregatesOutputError>
}

public struct DescribeEventAggregatesInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeEventAggregatesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeEventAggregatesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeEventAggregatesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeEventAggregatesInput>
    public typealias MOutput = OperationOutput<DescribeEventAggregatesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeEventAggregatesOutputError>
}

public struct DescribeEventAggregatesInputBodyMiddleware: Middleware {
    public let id: String = "DescribeEventAggregatesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeEventAggregatesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeEventAggregatesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeEventAggregatesInput>
    public typealias MOutput = OperationOutput<DescribeEventAggregatesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeEventAggregatesOutputError>
}

extension DescribeEventAggregatesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case aggregateField
        case filter
        case maxResults
        case nextToken
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let aggregateField = aggregateField {
            try encodeContainer.encode(aggregateField.rawValue, forKey: .aggregateField)
        }
        if let filter = filter {
            try encodeContainer.encode(filter, forKey: .filter)
        }
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}