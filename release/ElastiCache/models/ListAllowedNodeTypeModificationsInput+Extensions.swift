// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListAllowedNodeTypeModificationsInputHeadersMiddleware: Middleware {
    public let id: String = "ListAllowedNodeTypeModificationsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListAllowedNodeTypeModificationsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListAllowedNodeTypeModificationsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListAllowedNodeTypeModificationsInput>
    public typealias MOutput = OperationOutput<ListAllowedNodeTypeModificationsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListAllowedNodeTypeModificationsOutputError>
}

public struct ListAllowedNodeTypeModificationsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListAllowedNodeTypeModificationsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListAllowedNodeTypeModificationsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListAllowedNodeTypeModificationsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListAllowedNodeTypeModificationsInput>
    public typealias MOutput = OperationOutput<ListAllowedNodeTypeModificationsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListAllowedNodeTypeModificationsOutputError>
}

public struct ListAllowedNodeTypeModificationsInputBodyMiddleware: Middleware {
    public let id: String = "ListAllowedNodeTypeModificationsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListAllowedNodeTypeModificationsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListAllowedNodeTypeModificationsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListAllowedNodeTypeModificationsInput>
    public typealias MOutput = OperationOutput<ListAllowedNodeTypeModificationsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListAllowedNodeTypeModificationsOutputError>
}

extension ListAllowedNodeTypeModificationsInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let cacheClusterId = cacheClusterId {
            try container.encode(cacheClusterId, forKey: Key("CacheClusterId"))
        }
        if let replicationGroupId = replicationGroupId {
            try container.encode(replicationGroupId, forKey: Key("ReplicationGroupId"))
        }
        try container.encode("ListAllowedNodeTypeModifications", forKey:Key("Action"))
        try container.encode("2015-02-02", forKey:Key("Version"))
    }
}