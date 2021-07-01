// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StartRemediationExecutionInputHeadersMiddleware: Middleware {
    public let id: String = "StartRemediationExecutionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartRemediationExecutionInput>,
                  next: H) -> Swift.Result<OperationOutput<StartRemediationExecutionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartRemediationExecutionInput>
    public typealias MOutput = OperationOutput<StartRemediationExecutionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartRemediationExecutionOutputError>
}

public struct StartRemediationExecutionInputQueryItemMiddleware: Middleware {
    public let id: String = "StartRemediationExecutionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartRemediationExecutionInput>,
                  next: H) -> Swift.Result<OperationOutput<StartRemediationExecutionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartRemediationExecutionInput>
    public typealias MOutput = OperationOutput<StartRemediationExecutionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartRemediationExecutionOutputError>
}

public struct StartRemediationExecutionInputBodyMiddleware: Middleware {
    public let id: String = "StartRemediationExecutionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartRemediationExecutionInput>,
                  next: H) -> Swift.Result<OperationOutput<StartRemediationExecutionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<StartRemediationExecutionInput>
    public typealias MOutput = OperationOutput<StartRemediationExecutionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartRemediationExecutionOutputError>
}

extension StartRemediationExecutionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case configRuleName = "ConfigRuleName"
        case resourceKeys = "ResourceKeys"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let configRuleName = configRuleName {
            try encodeContainer.encode(configRuleName, forKey: .configRuleName)
        }
        if let resourceKeys = resourceKeys {
            var resourceKeysContainer = encodeContainer.nestedUnkeyedContainer(forKey: .resourceKeys)
            for resourcekeys0 in resourceKeys {
                try resourceKeysContainer.encode(resourcekeys0)
            }
        }
    }
}