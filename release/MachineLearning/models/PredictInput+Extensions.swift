// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PredictInputHeadersMiddleware: Middleware {
    public let id: String = "PredictInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PredictInput>,
                  next: H) -> Swift.Result<OperationOutput<PredictOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PredictInput>
    public typealias MOutput = OperationOutput<PredictOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PredictOutputError>
}

public struct PredictInputQueryItemMiddleware: Middleware {
    public let id: String = "PredictInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PredictInput>,
                  next: H) -> Swift.Result<OperationOutput<PredictOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PredictInput>
    public typealias MOutput = OperationOutput<PredictOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PredictOutputError>
}

public struct PredictInputBodyMiddleware: Middleware {
    public let id: String = "PredictInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PredictInput>,
                  next: H) -> Swift.Result<OperationOutput<PredictOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<PredictInput>
    public typealias MOutput = OperationOutput<PredictOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PredictOutputError>
}

extension PredictInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case mLModelId = "MLModelId"
        case predictEndpoint = "PredictEndpoint"
        case record = "Record"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let mLModelId = mLModelId {
            try encodeContainer.encode(mLModelId, forKey: .mLModelId)
        }
        if let predictEndpoint = predictEndpoint {
            try encodeContainer.encode(predictEndpoint, forKey: .predictEndpoint)
        }
        if let record = record {
            var recordContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .record)
            for (dictKey0, record0) in record {
                try recordContainer.encode(record0, forKey: Key(stringValue: dictKey0))
            }
        }
    }
}