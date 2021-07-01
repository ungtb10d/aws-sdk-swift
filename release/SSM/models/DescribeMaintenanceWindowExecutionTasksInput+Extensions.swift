// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeMaintenanceWindowExecutionTasksInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeMaintenanceWindowExecutionTasksInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeMaintenanceWindowExecutionTasksInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeMaintenanceWindowExecutionTasksOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeMaintenanceWindowExecutionTasksInput>
    public typealias MOutput = OperationOutput<DescribeMaintenanceWindowExecutionTasksOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeMaintenanceWindowExecutionTasksOutputError>
}

public struct DescribeMaintenanceWindowExecutionTasksInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeMaintenanceWindowExecutionTasksInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeMaintenanceWindowExecutionTasksInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeMaintenanceWindowExecutionTasksOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeMaintenanceWindowExecutionTasksInput>
    public typealias MOutput = OperationOutput<DescribeMaintenanceWindowExecutionTasksOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeMaintenanceWindowExecutionTasksOutputError>
}

public struct DescribeMaintenanceWindowExecutionTasksInputBodyMiddleware: Middleware {
    public let id: String = "DescribeMaintenanceWindowExecutionTasksInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeMaintenanceWindowExecutionTasksInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeMaintenanceWindowExecutionTasksOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeMaintenanceWindowExecutionTasksInput>
    public typealias MOutput = OperationOutput<DescribeMaintenanceWindowExecutionTasksOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeMaintenanceWindowExecutionTasksOutputError>
}

extension DescribeMaintenanceWindowExecutionTasksInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case filters = "Filters"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case windowExecutionId = "WindowExecutionId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let filters = filters {
            var filtersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .filters)
            for maintenancewindowfilterlist0 in filters {
                try filtersContainer.encode(maintenancewindowfilterlist0)
            }
        }
        if maxResults != 0 {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let windowExecutionId = windowExecutionId {
            try encodeContainer.encode(windowExecutionId, forKey: .windowExecutionId)
        }
    }
}