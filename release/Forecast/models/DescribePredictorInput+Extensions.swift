// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribePredictorInputHeadersMiddleware: Middleware {
    public let id: String = "DescribePredictorInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribePredictorInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribePredictorOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribePredictorInput>
    public typealias MOutput = OperationOutput<DescribePredictorOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribePredictorOutputError>
}

public struct DescribePredictorInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribePredictorInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribePredictorInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribePredictorOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribePredictorInput>
    public typealias MOutput = OperationOutput<DescribePredictorOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribePredictorOutputError>
}

public struct DescribePredictorInputBodyMiddleware: Middleware {
    public let id: String = "DescribePredictorInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribePredictorInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribePredictorOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribePredictorInput>
    public typealias MOutput = OperationOutput<DescribePredictorOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribePredictorOutputError>
}

extension DescribePredictorInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case predictorArn = "PredictorArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let predictorArn = predictorArn {
            try encodeContainer.encode(predictorArn, forKey: .predictorArn)
        }
    }
}