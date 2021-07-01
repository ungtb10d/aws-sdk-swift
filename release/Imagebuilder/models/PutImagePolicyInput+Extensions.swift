// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutImagePolicyInputHeadersMiddleware: Middleware {
    public let id: String = "PutImagePolicyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutImagePolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<PutImagePolicyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutImagePolicyInput>
    public typealias MOutput = OperationOutput<PutImagePolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutImagePolicyOutputError>
}

public struct PutImagePolicyInputQueryItemMiddleware: Middleware {
    public let id: String = "PutImagePolicyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutImagePolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<PutImagePolicyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutImagePolicyInput>
    public typealias MOutput = OperationOutput<PutImagePolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutImagePolicyOutputError>
}

public struct PutImagePolicyInputBodyMiddleware: Middleware {
    public let id: String = "PutImagePolicyInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutImagePolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<PutImagePolicyOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<PutImagePolicyInput>
    public typealias MOutput = OperationOutput<PutImagePolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutImagePolicyOutputError>
}

extension PutImagePolicyInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case imageArn
        case policy
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let imageArn = imageArn {
            try encodeContainer.encode(imageArn, forKey: .imageArn)
        }
        if let policy = policy {
            try encodeContainer.encode(policy, forKey: .policy)
        }
    }
}