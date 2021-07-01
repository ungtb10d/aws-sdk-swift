// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteProtectionInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteProtectionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteProtectionInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteProtectionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteProtectionInput>
    public typealias MOutput = OperationOutput<DeleteProtectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteProtectionOutputError>
}

public struct DeleteProtectionInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteProtectionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteProtectionInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteProtectionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteProtectionInput>
    public typealias MOutput = OperationOutput<DeleteProtectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteProtectionOutputError>
}

public struct DeleteProtectionInputBodyMiddleware: Middleware {
    public let id: String = "DeleteProtectionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteProtectionInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteProtectionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteProtectionInput>
    public typealias MOutput = OperationOutput<DeleteProtectionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteProtectionOutputError>
}

extension DeleteProtectionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case protectionId = "ProtectionId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let protectionId = protectionId {
            try encodeContainer.encode(protectionId, forKey: .protectionId)
        }
    }
}