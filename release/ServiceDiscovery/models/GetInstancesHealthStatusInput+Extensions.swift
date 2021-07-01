// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetInstancesHealthStatusInputHeadersMiddleware: Middleware {
    public let id: String = "GetInstancesHealthStatusInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetInstancesHealthStatusInput>,
                  next: H) -> Swift.Result<OperationOutput<GetInstancesHealthStatusOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetInstancesHealthStatusInput>
    public typealias MOutput = OperationOutput<GetInstancesHealthStatusOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetInstancesHealthStatusOutputError>
}

public struct GetInstancesHealthStatusInputQueryItemMiddleware: Middleware {
    public let id: String = "GetInstancesHealthStatusInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetInstancesHealthStatusInput>,
                  next: H) -> Swift.Result<OperationOutput<GetInstancesHealthStatusOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetInstancesHealthStatusInput>
    public typealias MOutput = OperationOutput<GetInstancesHealthStatusOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetInstancesHealthStatusOutputError>
}

public struct GetInstancesHealthStatusInputBodyMiddleware: Middleware {
    public let id: String = "GetInstancesHealthStatusInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetInstancesHealthStatusInput>,
                  next: H) -> Swift.Result<OperationOutput<GetInstancesHealthStatusOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetInstancesHealthStatusInput>
    public typealias MOutput = OperationOutput<GetInstancesHealthStatusOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetInstancesHealthStatusOutputError>
}

extension GetInstancesHealthStatusInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case instances = "Instances"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case serviceId = "ServiceId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let instances = instances {
            var instancesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .instances)
            for instanceidlist0 in instances {
                try instancesContainer.encode(instanceidlist0)
            }
        }
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let serviceId = serviceId {
            try encodeContainer.encode(serviceId, forKey: .serviceId)
        }
    }
}