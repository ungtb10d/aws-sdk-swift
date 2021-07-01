// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeUsageReportSubscriptionsInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeUsageReportSubscriptionsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeUsageReportSubscriptionsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeUsageReportSubscriptionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeUsageReportSubscriptionsInput>
    public typealias MOutput = OperationOutput<DescribeUsageReportSubscriptionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeUsageReportSubscriptionsOutputError>
}

public struct DescribeUsageReportSubscriptionsInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeUsageReportSubscriptionsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeUsageReportSubscriptionsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeUsageReportSubscriptionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeUsageReportSubscriptionsInput>
    public typealias MOutput = OperationOutput<DescribeUsageReportSubscriptionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeUsageReportSubscriptionsOutputError>
}

public struct DescribeUsageReportSubscriptionsInputBodyMiddleware: Middleware {
    public let id: String = "DescribeUsageReportSubscriptionsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeUsageReportSubscriptionsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeUsageReportSubscriptionsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeUsageReportSubscriptionsInput>
    public typealias MOutput = OperationOutput<DescribeUsageReportSubscriptionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeUsageReportSubscriptionsOutputError>
}

extension DescribeUsageReportSubscriptionsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}