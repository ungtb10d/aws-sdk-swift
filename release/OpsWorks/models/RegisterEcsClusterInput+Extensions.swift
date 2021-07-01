// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RegisterEcsClusterInputHeadersMiddleware: Middleware {
    public let id: String = "RegisterEcsClusterInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterEcsClusterInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterEcsClusterOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RegisterEcsClusterInput>
    public typealias MOutput = OperationOutput<RegisterEcsClusterOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterEcsClusterOutputError>
}

public struct RegisterEcsClusterInputQueryItemMiddleware: Middleware {
    public let id: String = "RegisterEcsClusterInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterEcsClusterInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterEcsClusterOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RegisterEcsClusterInput>
    public typealias MOutput = OperationOutput<RegisterEcsClusterOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterEcsClusterOutputError>
}

public struct RegisterEcsClusterInputBodyMiddleware: Middleware {
    public let id: String = "RegisterEcsClusterInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterEcsClusterInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterEcsClusterOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<RegisterEcsClusterInput>
    public typealias MOutput = OperationOutput<RegisterEcsClusterOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterEcsClusterOutputError>
}

extension RegisterEcsClusterInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case ecsClusterArn = "EcsClusterArn"
        case stackId = "StackId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let ecsClusterArn = ecsClusterArn {
            try encodeContainer.encode(ecsClusterArn, forKey: .ecsClusterArn)
        }
        if let stackId = stackId {
            try encodeContainer.encode(stackId, forKey: .stackId)
        }
    }
}