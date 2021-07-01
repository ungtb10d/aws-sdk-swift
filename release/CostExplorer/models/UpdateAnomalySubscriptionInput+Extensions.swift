// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateAnomalySubscriptionInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateAnomalySubscriptionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateAnomalySubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateAnomalySubscriptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateAnomalySubscriptionInput>
    public typealias MOutput = OperationOutput<UpdateAnomalySubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateAnomalySubscriptionOutputError>
}

public struct UpdateAnomalySubscriptionInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateAnomalySubscriptionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateAnomalySubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateAnomalySubscriptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateAnomalySubscriptionInput>
    public typealias MOutput = OperationOutput<UpdateAnomalySubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateAnomalySubscriptionOutputError>
}

public struct UpdateAnomalySubscriptionInputBodyMiddleware: Middleware {
    public let id: String = "UpdateAnomalySubscriptionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateAnomalySubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateAnomalySubscriptionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateAnomalySubscriptionInput>
    public typealias MOutput = OperationOutput<UpdateAnomalySubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateAnomalySubscriptionOutputError>
}

extension UpdateAnomalySubscriptionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case frequency = "Frequency"
        case monitorArnList = "MonitorArnList"
        case subscribers = "Subscribers"
        case subscriptionArn = "SubscriptionArn"
        case subscriptionName = "SubscriptionName"
        case threshold = "Threshold"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let frequency = frequency {
            try encodeContainer.encode(frequency.rawValue, forKey: .frequency)
        }
        if let monitorArnList = monitorArnList {
            var monitorArnListContainer = encodeContainer.nestedUnkeyedContainer(forKey: .monitorArnList)
            for monitorarnlist0 in monitorArnList {
                try monitorArnListContainer.encode(monitorarnlist0)
            }
        }
        if let subscribers = subscribers {
            var subscribersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .subscribers)
            for subscribers0 in subscribers {
                try subscribersContainer.encode(subscribers0)
            }
        }
        if let subscriptionArn = subscriptionArn {
            try encodeContainer.encode(subscriptionArn, forKey: .subscriptionArn)
        }
        if let subscriptionName = subscriptionName {
            try encodeContainer.encode(subscriptionName, forKey: .subscriptionName)
        }
        if let threshold = threshold {
            try encodeContainer.encode(threshold, forKey: .threshold)
        }
    }
}