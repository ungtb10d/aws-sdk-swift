// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListGroupResourcesInputHeadersMiddleware: Middleware {
    public let id: String = "ListGroupResourcesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListGroupResourcesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListGroupResourcesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListGroupResourcesInput>
    public typealias MOutput = OperationOutput<ListGroupResourcesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListGroupResourcesOutputError>
}

public struct ListGroupResourcesInputQueryItemMiddleware: Middleware {
    public let id: String = "ListGroupResourcesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListGroupResourcesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListGroupResourcesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListGroupResourcesInput>
    public typealias MOutput = OperationOutput<ListGroupResourcesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListGroupResourcesOutputError>
}

public struct ListGroupResourcesInputBodyMiddleware: Middleware {
    public let id: String = "ListGroupResourcesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListGroupResourcesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListGroupResourcesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListGroupResourcesInput>
    public typealias MOutput = OperationOutput<ListGroupResourcesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListGroupResourcesOutputError>
}

extension ListGroupResourcesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case filters = "Filters"
        case group = "Group"
        case groupName = "GroupName"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let filters = filters {
            var filtersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .filters)
            for resourcefilterlist0 in filters {
                try filtersContainer.encode(resourcefilterlist0)
            }
        }
        if let group = group {
            try encodeContainer.encode(group, forKey: .group)
        }
        if let groupName = groupName {
            try encodeContainer.encode(groupName, forKey: .groupName)
        }
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}