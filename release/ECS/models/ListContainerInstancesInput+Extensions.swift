// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListContainerInstancesInputHeadersMiddleware: Middleware {
    public let id: String = "ListContainerInstancesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListContainerInstancesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListContainerInstancesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListContainerInstancesInput>
    public typealias MOutput = OperationOutput<ListContainerInstancesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListContainerInstancesOutputError>
}

public struct ListContainerInstancesInputQueryItemMiddleware: Middleware {
    public let id: String = "ListContainerInstancesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListContainerInstancesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListContainerInstancesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListContainerInstancesInput>
    public typealias MOutput = OperationOutput<ListContainerInstancesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListContainerInstancesOutputError>
}

public struct ListContainerInstancesInputBodyMiddleware: Middleware {
    public let id: String = "ListContainerInstancesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListContainerInstancesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListContainerInstancesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListContainerInstancesInput>
    public typealias MOutput = OperationOutput<ListContainerInstancesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListContainerInstancesOutputError>
}

extension ListContainerInstancesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case cluster
        case filter
        case maxResults
        case nextToken
        case status
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let cluster = cluster {
            try encodeContainer.encode(cluster, forKey: .cluster)
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
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
    }
}