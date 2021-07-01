// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DisassociateMembershipInputHeadersMiddleware: Middleware {
    public let id: String = "DisassociateMembershipInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateMembershipInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateMembershipOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisassociateMembershipInput>
    public typealias MOutput = OperationOutput<DisassociateMembershipOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateMembershipOutputError>
}

public struct DisassociateMembershipInputQueryItemMiddleware: Middleware {
    public let id: String = "DisassociateMembershipInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateMembershipInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateMembershipOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisassociateMembershipInput>
    public typealias MOutput = OperationOutput<DisassociateMembershipOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateMembershipOutputError>
}

public struct DisassociateMembershipInputBodyMiddleware: Middleware {
    public let id: String = "DisassociateMembershipInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateMembershipInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateMembershipOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DisassociateMembershipInput>
    public typealias MOutput = OperationOutput<DisassociateMembershipOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateMembershipOutputError>
}

extension DisassociateMembershipInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case graphArn = "GraphArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let graphArn = graphArn {
            try encodeContainer.encode(graphArn, forKey: .graphArn)
        }
    }
}