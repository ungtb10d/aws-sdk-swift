// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RemoveAutoScalingPolicyInputHeadersMiddleware: Middleware {
    public let id: String = "RemoveAutoScalingPolicyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RemoveAutoScalingPolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<RemoveAutoScalingPolicyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RemoveAutoScalingPolicyInput>
    public typealias MOutput = OperationOutput<RemoveAutoScalingPolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RemoveAutoScalingPolicyOutputError>
}

public struct RemoveAutoScalingPolicyInputQueryItemMiddleware: Middleware {
    public let id: String = "RemoveAutoScalingPolicyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RemoveAutoScalingPolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<RemoveAutoScalingPolicyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RemoveAutoScalingPolicyInput>
    public typealias MOutput = OperationOutput<RemoveAutoScalingPolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RemoveAutoScalingPolicyOutputError>
}

public struct RemoveAutoScalingPolicyInputBodyMiddleware: Middleware {
    public let id: String = "RemoveAutoScalingPolicyInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RemoveAutoScalingPolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<RemoveAutoScalingPolicyOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<RemoveAutoScalingPolicyInput>
    public typealias MOutput = OperationOutput<RemoveAutoScalingPolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RemoveAutoScalingPolicyOutputError>
}

extension RemoveAutoScalingPolicyInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case clusterId = "ClusterId"
        case instanceGroupId = "InstanceGroupId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let clusterId = clusterId {
            try encodeContainer.encode(clusterId, forKey: .clusterId)
        }
        if let instanceGroupId = instanceGroupId {
            try encodeContainer.encode(instanceGroupId, forKey: .instanceGroupId)
        }
    }
}