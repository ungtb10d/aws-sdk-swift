// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeFleetAttributesInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeFleetAttributesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeFleetAttributesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeFleetAttributesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeFleetAttributesInput>
    public typealias MOutput = OperationOutput<DescribeFleetAttributesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeFleetAttributesOutputError>
}

public struct DescribeFleetAttributesInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeFleetAttributesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeFleetAttributesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeFleetAttributesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeFleetAttributesInput>
    public typealias MOutput = OperationOutput<DescribeFleetAttributesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeFleetAttributesOutputError>
}

public struct DescribeFleetAttributesInputBodyMiddleware: Middleware {
    public let id: String = "DescribeFleetAttributesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeFleetAttributesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeFleetAttributesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeFleetAttributesInput>
    public typealias MOutput = OperationOutput<DescribeFleetAttributesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeFleetAttributesOutputError>
}

extension DescribeFleetAttributesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case fleetIds = "FleetIds"
        case limit = "Limit"
        case nextToken = "NextToken"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let fleetIds = fleetIds {
            var fleetIdsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .fleetIds)
            for fleetidorarnlist0 in fleetIds {
                try fleetIdsContainer.encode(fleetidorarnlist0)
            }
        }
        if let limit = limit {
            try encodeContainer.encode(limit, forKey: .limit)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}