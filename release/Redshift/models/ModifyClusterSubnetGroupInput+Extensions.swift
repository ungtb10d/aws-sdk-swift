// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ModifyClusterSubnetGroupInputHeadersMiddleware: Middleware {
    public let id: String = "ModifyClusterSubnetGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyClusterSubnetGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyClusterSubnetGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ModifyClusterSubnetGroupInput>
    public typealias MOutput = OperationOutput<ModifyClusterSubnetGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyClusterSubnetGroupOutputError>
}

public struct ModifyClusterSubnetGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "ModifyClusterSubnetGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyClusterSubnetGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyClusterSubnetGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ModifyClusterSubnetGroupInput>
    public typealias MOutput = OperationOutput<ModifyClusterSubnetGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyClusterSubnetGroupOutputError>
}

public struct ModifyClusterSubnetGroupInputBodyMiddleware: Middleware {
    public let id: String = "ModifyClusterSubnetGroupInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyClusterSubnetGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyClusterSubnetGroupOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ModifyClusterSubnetGroupInput>
    public typealias MOutput = OperationOutput<ModifyClusterSubnetGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyClusterSubnetGroupOutputError>
}

extension ModifyClusterSubnetGroupInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let clusterSubnetGroupName = clusterSubnetGroupName {
            try container.encode(clusterSubnetGroupName, forKey: Key("ClusterSubnetGroupName"))
        }
        if let description = description {
            try container.encode(description, forKey: Key("Description"))
        }
        if let subnetIds = subnetIds {
            var subnetIdsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("SubnetIds"))
            for (index0, string0) in subnetIds.enumerated() {
                try subnetIdsContainer.encode(string0, forKey: Key("SubnetIdentifier.\(index0.advanced(by: 1))"))
            }
        }
        try container.encode("ModifyClusterSubnetGroup", forKey:Key("Action"))
        try container.encode("2012-12-01", forKey:Key("Version"))
    }
}