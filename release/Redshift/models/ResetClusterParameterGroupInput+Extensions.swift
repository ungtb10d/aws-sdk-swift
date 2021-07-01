// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ResetClusterParameterGroupInputHeadersMiddleware: Middleware {
    public let id: String = "ResetClusterParameterGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ResetClusterParameterGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<ResetClusterParameterGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ResetClusterParameterGroupInput>
    public typealias MOutput = OperationOutput<ResetClusterParameterGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ResetClusterParameterGroupOutputError>
}

public struct ResetClusterParameterGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "ResetClusterParameterGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ResetClusterParameterGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<ResetClusterParameterGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ResetClusterParameterGroupInput>
    public typealias MOutput = OperationOutput<ResetClusterParameterGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ResetClusterParameterGroupOutputError>
}

public struct ResetClusterParameterGroupInputBodyMiddleware: Middleware {
    public let id: String = "ResetClusterParameterGroupInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ResetClusterParameterGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<ResetClusterParameterGroupOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ResetClusterParameterGroupInput>
    public typealias MOutput = OperationOutput<ResetClusterParameterGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ResetClusterParameterGroupOutputError>
}

extension ResetClusterParameterGroupInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let parameterGroupName = parameterGroupName {
            try container.encode(parameterGroupName, forKey: Key("ParameterGroupName"))
        }
        if let parameters = parameters {
            var parametersContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("Parameters"))
            for (index0, parameter0) in parameters.enumerated() {
                try parametersContainer.encode(parameter0, forKey: Key("Parameter.\(index0.advanced(by: 1))"))
            }
        }
        if resetAllParameters != false {
            try container.encode(resetAllParameters, forKey: Key("ResetAllParameters"))
        }
        try container.encode("ResetClusterParameterGroup", forKey:Key("Action"))
        try container.encode("2012-12-01", forKey:Key("Version"))
    }
}