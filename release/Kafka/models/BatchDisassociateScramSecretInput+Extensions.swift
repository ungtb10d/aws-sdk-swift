// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct BatchDisassociateScramSecretInputHeadersMiddleware: Middleware {
    public let id: String = "BatchDisassociateScramSecretInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<BatchDisassociateScramSecretInput>,
                  next: H) -> Swift.Result<OperationOutput<BatchDisassociateScramSecretOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<BatchDisassociateScramSecretInput>
    public typealias MOutput = OperationOutput<BatchDisassociateScramSecretOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<BatchDisassociateScramSecretOutputError>
}

public struct BatchDisassociateScramSecretInputQueryItemMiddleware: Middleware {
    public let id: String = "BatchDisassociateScramSecretInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<BatchDisassociateScramSecretInput>,
                  next: H) -> Swift.Result<OperationOutput<BatchDisassociateScramSecretOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<BatchDisassociateScramSecretInput>
    public typealias MOutput = OperationOutput<BatchDisassociateScramSecretOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<BatchDisassociateScramSecretOutputError>
}

public struct BatchDisassociateScramSecretInputBodyMiddleware: Middleware {
    public let id: String = "BatchDisassociateScramSecretInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<BatchDisassociateScramSecretInput>,
                  next: H) -> Swift.Result<OperationOutput<BatchDisassociateScramSecretOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<BatchDisassociateScramSecretInput>
    public typealias MOutput = OperationOutput<BatchDisassociateScramSecretOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<BatchDisassociateScramSecretOutputError>
}

extension BatchDisassociateScramSecretInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case secretArnList = "secretArnList"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let secretArnList = secretArnList {
            var secretArnListContainer = encodeContainer.nestedUnkeyedContainer(forKey: .secretArnList)
            for __listof__string0 in secretArnList {
                try secretArnListContainer.encode(__listof__string0)
            }
        }
    }
}