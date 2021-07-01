// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ResetDBClusterParameterGroupInputHeadersMiddleware: Middleware {
    public let id: String = "ResetDBClusterParameterGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ResetDBClusterParameterGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<ResetDBClusterParameterGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ResetDBClusterParameterGroupInput>
    public typealias MOutput = OperationOutput<ResetDBClusterParameterGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ResetDBClusterParameterGroupOutputError>
}

public struct ResetDBClusterParameterGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "ResetDBClusterParameterGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ResetDBClusterParameterGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<ResetDBClusterParameterGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ResetDBClusterParameterGroupInput>
    public typealias MOutput = OperationOutput<ResetDBClusterParameterGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ResetDBClusterParameterGroupOutputError>
}

public struct ResetDBClusterParameterGroupInputBodyMiddleware: Middleware {
    public let id: String = "ResetDBClusterParameterGroupInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ResetDBClusterParameterGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<ResetDBClusterParameterGroupOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ResetDBClusterParameterGroupInput>
    public typealias MOutput = OperationOutput<ResetDBClusterParameterGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ResetDBClusterParameterGroupOutputError>
}

extension ResetDBClusterParameterGroupInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let dBClusterParameterGroupName = dBClusterParameterGroupName {
            try container.encode(dBClusterParameterGroupName, forKey: Key("DBClusterParameterGroupName"))
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
        try container.encode("ResetDBClusterParameterGroup", forKey:Key("Action"))
        try container.encode("2014-10-31", forKey:Key("Version"))
    }
}