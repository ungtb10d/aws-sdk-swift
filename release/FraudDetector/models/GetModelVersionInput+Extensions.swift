// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetModelVersionInputHeadersMiddleware: Middleware {
    public let id: String = "GetModelVersionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetModelVersionInput>,
                  next: H) -> Swift.Result<OperationOutput<GetModelVersionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetModelVersionInput>
    public typealias MOutput = OperationOutput<GetModelVersionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetModelVersionOutputError>
}

public struct GetModelVersionInputQueryItemMiddleware: Middleware {
    public let id: String = "GetModelVersionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetModelVersionInput>,
                  next: H) -> Swift.Result<OperationOutput<GetModelVersionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetModelVersionInput>
    public typealias MOutput = OperationOutput<GetModelVersionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetModelVersionOutputError>
}

public struct GetModelVersionInputBodyMiddleware: Middleware {
    public let id: String = "GetModelVersionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetModelVersionInput>,
                  next: H) -> Swift.Result<OperationOutput<GetModelVersionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetModelVersionInput>
    public typealias MOutput = OperationOutput<GetModelVersionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetModelVersionOutputError>
}

extension GetModelVersionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case modelId
        case modelType
        case modelVersionNumber
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let modelId = modelId {
            try encodeContainer.encode(modelId, forKey: .modelId)
        }
        if let modelType = modelType {
            try encodeContainer.encode(modelType.rawValue, forKey: .modelType)
        }
        if let modelVersionNumber = modelVersionNumber {
            try encodeContainer.encode(modelVersionNumber, forKey: .modelVersionNumber)
        }
    }
}