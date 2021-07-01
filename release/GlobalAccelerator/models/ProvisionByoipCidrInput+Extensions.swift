// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ProvisionByoipCidrInputHeadersMiddleware: Middleware {
    public let id: String = "ProvisionByoipCidrInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ProvisionByoipCidrInput>,
                  next: H) -> Swift.Result<OperationOutput<ProvisionByoipCidrOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ProvisionByoipCidrInput>
    public typealias MOutput = OperationOutput<ProvisionByoipCidrOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ProvisionByoipCidrOutputError>
}

public struct ProvisionByoipCidrInputQueryItemMiddleware: Middleware {
    public let id: String = "ProvisionByoipCidrInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ProvisionByoipCidrInput>,
                  next: H) -> Swift.Result<OperationOutput<ProvisionByoipCidrOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ProvisionByoipCidrInput>
    public typealias MOutput = OperationOutput<ProvisionByoipCidrOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ProvisionByoipCidrOutputError>
}

public struct ProvisionByoipCidrInputBodyMiddleware: Middleware {
    public let id: String = "ProvisionByoipCidrInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ProvisionByoipCidrInput>,
                  next: H) -> Swift.Result<OperationOutput<ProvisionByoipCidrOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ProvisionByoipCidrInput>
    public typealias MOutput = OperationOutput<ProvisionByoipCidrOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ProvisionByoipCidrOutputError>
}

extension ProvisionByoipCidrInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case cidr = "Cidr"
        case cidrAuthorizationContext = "CidrAuthorizationContext"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let cidr = cidr {
            try encodeContainer.encode(cidr, forKey: .cidr)
        }
        if let cidrAuthorizationContext = cidrAuthorizationContext {
            try encodeContainer.encode(cidrAuthorizationContext, forKey: .cidrAuthorizationContext)
        }
    }
}