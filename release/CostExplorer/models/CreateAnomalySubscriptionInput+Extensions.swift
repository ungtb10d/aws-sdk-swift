// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateAnomalySubscriptionInputHeadersMiddleware: Middleware {
    public let id: String = "CreateAnomalySubscriptionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateAnomalySubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateAnomalySubscriptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateAnomalySubscriptionInput>
    public typealias MOutput = OperationOutput<CreateAnomalySubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateAnomalySubscriptionOutputError>
}

public struct CreateAnomalySubscriptionInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateAnomalySubscriptionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateAnomalySubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateAnomalySubscriptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateAnomalySubscriptionInput>
    public typealias MOutput = OperationOutput<CreateAnomalySubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateAnomalySubscriptionOutputError>
}

public struct CreateAnomalySubscriptionInputBodyMiddleware: Middleware {
    public let id: String = "CreateAnomalySubscriptionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateAnomalySubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateAnomalySubscriptionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateAnomalySubscriptionInput>
    public typealias MOutput = OperationOutput<CreateAnomalySubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateAnomalySubscriptionOutputError>
}

extension CreateAnomalySubscriptionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case anomalySubscription = "AnomalySubscription"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let anomalySubscription = anomalySubscription {
            try encodeContainer.encode(anomalySubscription, forKey: .anomalySubscription)
        }
    }
}