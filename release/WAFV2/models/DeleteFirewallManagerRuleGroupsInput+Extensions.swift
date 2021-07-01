// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteFirewallManagerRuleGroupsInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteFirewallManagerRuleGroupsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteFirewallManagerRuleGroupsInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteFirewallManagerRuleGroupsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteFirewallManagerRuleGroupsInput>
    public typealias MOutput = OperationOutput<DeleteFirewallManagerRuleGroupsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteFirewallManagerRuleGroupsOutputError>
}

public struct DeleteFirewallManagerRuleGroupsInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteFirewallManagerRuleGroupsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteFirewallManagerRuleGroupsInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteFirewallManagerRuleGroupsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteFirewallManagerRuleGroupsInput>
    public typealias MOutput = OperationOutput<DeleteFirewallManagerRuleGroupsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteFirewallManagerRuleGroupsOutputError>
}

public struct DeleteFirewallManagerRuleGroupsInputBodyMiddleware: Middleware {
    public let id: String = "DeleteFirewallManagerRuleGroupsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteFirewallManagerRuleGroupsInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteFirewallManagerRuleGroupsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteFirewallManagerRuleGroupsInput>
    public typealias MOutput = OperationOutput<DeleteFirewallManagerRuleGroupsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteFirewallManagerRuleGroupsOutputError>
}

extension DeleteFirewallManagerRuleGroupsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case webACLArn = "WebACLArn"
        case webACLLockToken = "WebACLLockToken"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let webACLArn = webACLArn {
            try encodeContainer.encode(webACLArn, forKey: .webACLArn)
        }
        if let webACLLockToken = webACLLockToken {
            try encodeContainer.encode(webACLLockToken, forKey: .webACLLockToken)
        }
    }
}