// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DisassociateResolverRuleInputHeadersMiddleware: Middleware {
    public let id: String = "DisassociateResolverRuleInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateResolverRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateResolverRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisassociateResolverRuleInput>
    public typealias MOutput = OperationOutput<DisassociateResolverRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateResolverRuleOutputError>
}

public struct DisassociateResolverRuleInputQueryItemMiddleware: Middleware {
    public let id: String = "DisassociateResolverRuleInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateResolverRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateResolverRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisassociateResolverRuleInput>
    public typealias MOutput = OperationOutput<DisassociateResolverRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateResolverRuleOutputError>
}

public struct DisassociateResolverRuleInputBodyMiddleware: Middleware {
    public let id: String = "DisassociateResolverRuleInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateResolverRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateResolverRuleOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DisassociateResolverRuleInput>
    public typealias MOutput = OperationOutput<DisassociateResolverRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateResolverRuleOutputError>
}

extension DisassociateResolverRuleInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case resolverRuleId = "ResolverRuleId"
        case vPCId = "VPCId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let resolverRuleId = resolverRuleId {
            try encodeContainer.encode(resolverRuleId, forKey: .resolverRuleId)
        }
        if let vPCId = vPCId {
            try encodeContainer.encode(vPCId, forKey: .vPCId)
        }
    }
}