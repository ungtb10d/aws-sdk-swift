// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AssignInstanceInputHeadersMiddleware: Middleware {
    public let id: String = "AssignInstanceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssignInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<AssignInstanceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssignInstanceInput>
    public typealias MOutput = OperationOutput<AssignInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssignInstanceOutputError>
}

public struct AssignInstanceInputQueryItemMiddleware: Middleware {
    public let id: String = "AssignInstanceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssignInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<AssignInstanceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssignInstanceInput>
    public typealias MOutput = OperationOutput<AssignInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssignInstanceOutputError>
}

public struct AssignInstanceInputBodyMiddleware: Middleware {
    public let id: String = "AssignInstanceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssignInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<AssignInstanceOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AssignInstanceInput>
    public typealias MOutput = OperationOutput<AssignInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssignInstanceOutputError>
}

extension AssignInstanceInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case instanceId = "InstanceId"
        case layerIds = "LayerIds"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let instanceId = instanceId {
            try encodeContainer.encode(instanceId, forKey: .instanceId)
        }
        if let layerIds = layerIds {
            var layerIdsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .layerIds)
            for strings0 in layerIds {
                try layerIdsContainer.encode(strings0)
            }
        }
    }
}