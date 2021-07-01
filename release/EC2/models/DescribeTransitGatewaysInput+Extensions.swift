// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeTransitGatewaysInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeTransitGatewaysInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeTransitGatewaysInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeTransitGatewaysOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeTransitGatewaysInput>
    public typealias MOutput = OperationOutput<DescribeTransitGatewaysOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeTransitGatewaysOutputError>
}

public struct DescribeTransitGatewaysInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeTransitGatewaysInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeTransitGatewaysInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeTransitGatewaysOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeTransitGatewaysInput>
    public typealias MOutput = OperationOutput<DescribeTransitGatewaysOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeTransitGatewaysOutputError>
}

public struct DescribeTransitGatewaysInputBodyMiddleware: Middleware {
    public let id: String = "DescribeTransitGatewaysInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeTransitGatewaysInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeTransitGatewaysOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            let encoder = context.getEncoder()
            let data = try encoder.encode(input.operationInput)
            let body = HttpBody.data(data)
            input.builder.withBody(body)
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeTransitGatewaysInput>
    public typealias MOutput = OperationOutput<DescribeTransitGatewaysOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeTransitGatewaysOutputError>
}

extension DescribeTransitGatewaysInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if let filters = filters {
            if !filters.isEmpty {
                for (index0, filter0) in filters.enumerated() {
                    var filtersContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("Filter.\(index0.advanced(by: 1))"))
                    try filtersContainer0.encode(filter0, forKey: Key(""))
                }
            }
        }
        if maxResults != 0 {
            try container.encode(maxResults, forKey: Key("MaxResults"))
        }
        if let nextToken = nextToken {
            try container.encode(nextToken, forKey: Key("NextToken"))
        }
        if let transitGatewayIds = transitGatewayIds {
            if !transitGatewayIds.isEmpty {
                for (index0, transitgatewayid0) in transitGatewayIds.enumerated() {
                    var transitGatewayIdsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("TransitGatewayIds.\(index0.advanced(by: 1))"))
                    try transitGatewayIdsContainer0.encode(transitgatewayid0, forKey: Key(""))
                }
            }
        }
        try container.encode("DescribeTransitGateways", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}