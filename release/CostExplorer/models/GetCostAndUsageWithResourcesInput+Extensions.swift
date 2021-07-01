// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetCostAndUsageWithResourcesInputHeadersMiddleware: Middleware {
    public let id: String = "GetCostAndUsageWithResourcesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetCostAndUsageWithResourcesInput>,
                  next: H) -> Swift.Result<OperationOutput<GetCostAndUsageWithResourcesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetCostAndUsageWithResourcesInput>
    public typealias MOutput = OperationOutput<GetCostAndUsageWithResourcesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetCostAndUsageWithResourcesOutputError>
}

public struct GetCostAndUsageWithResourcesInputQueryItemMiddleware: Middleware {
    public let id: String = "GetCostAndUsageWithResourcesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetCostAndUsageWithResourcesInput>,
                  next: H) -> Swift.Result<OperationOutput<GetCostAndUsageWithResourcesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetCostAndUsageWithResourcesInput>
    public typealias MOutput = OperationOutput<GetCostAndUsageWithResourcesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetCostAndUsageWithResourcesOutputError>
}

public struct GetCostAndUsageWithResourcesInputBodyMiddleware: Middleware {
    public let id: String = "GetCostAndUsageWithResourcesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetCostAndUsageWithResourcesInput>,
                  next: H) -> Swift.Result<OperationOutput<GetCostAndUsageWithResourcesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetCostAndUsageWithResourcesInput>
    public typealias MOutput = OperationOutput<GetCostAndUsageWithResourcesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetCostAndUsageWithResourcesOutputError>
}

extension GetCostAndUsageWithResourcesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case filter = "Filter"
        case granularity = "Granularity"
        case groupBy = "GroupBy"
        case metrics = "Metrics"
        case nextPageToken = "NextPageToken"
        case timePeriod = "TimePeriod"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let filter = filter {
            try encodeContainer.encode(filter, forKey: .filter)
        }
        if let granularity = granularity {
            try encodeContainer.encode(granularity.rawValue, forKey: .granularity)
        }
        if let groupBy = groupBy {
            var groupByContainer = encodeContainer.nestedUnkeyedContainer(forKey: .groupBy)
            for groupdefinitions0 in groupBy {
                try groupByContainer.encode(groupdefinitions0)
            }
        }
        if let metrics = metrics {
            var metricsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .metrics)
            for metricnames0 in metrics {
                try metricsContainer.encode(metricnames0)
            }
        }
        if let nextPageToken = nextPageToken {
            try encodeContainer.encode(nextPageToken, forKey: .nextPageToken)
        }
        if let timePeriod = timePeriod {
            try encodeContainer.encode(timePeriod, forKey: .timePeriod)
        }
    }
}