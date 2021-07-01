// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetRuleGroupInputHeadersMiddleware: Middleware {
    public let id: String = "GetRuleGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetRuleGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<GetRuleGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetRuleGroupInput>
    public typealias MOutput = OperationOutput<GetRuleGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetRuleGroupOutputError>
}

public struct GetRuleGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "GetRuleGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetRuleGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<GetRuleGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetRuleGroupInput>
    public typealias MOutput = OperationOutput<GetRuleGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetRuleGroupOutputError>
}

public struct GetRuleGroupInputBodyMiddleware: Middleware {
    public let id: String = "GetRuleGroupInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetRuleGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<GetRuleGroupOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetRuleGroupInput>
    public typealias MOutput = OperationOutput<GetRuleGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetRuleGroupOutputError>
}

extension GetRuleGroupInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case name = "Name"
        case scope = "Scope"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let scope = scope {
            try encodeContainer.encode(scope.rawValue, forKey: .scope)
        }
    }
}