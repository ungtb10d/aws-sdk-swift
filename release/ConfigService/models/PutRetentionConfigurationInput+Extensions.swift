// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutRetentionConfigurationInputHeadersMiddleware: Middleware {
    public let id: String = "PutRetentionConfigurationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutRetentionConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<PutRetentionConfigurationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutRetentionConfigurationInput>
    public typealias MOutput = OperationOutput<PutRetentionConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutRetentionConfigurationOutputError>
}

public struct PutRetentionConfigurationInputQueryItemMiddleware: Middleware {
    public let id: String = "PutRetentionConfigurationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutRetentionConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<PutRetentionConfigurationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutRetentionConfigurationInput>
    public typealias MOutput = OperationOutput<PutRetentionConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutRetentionConfigurationOutputError>
}

public struct PutRetentionConfigurationInputBodyMiddleware: Middleware {
    public let id: String = "PutRetentionConfigurationInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutRetentionConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<PutRetentionConfigurationOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<PutRetentionConfigurationInput>
    public typealias MOutput = OperationOutput<PutRetentionConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutRetentionConfigurationOutputError>
}

extension PutRetentionConfigurationInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case retentionPeriodInDays = "RetentionPeriodInDays"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if retentionPeriodInDays != 0 {
            try encodeContainer.encode(retentionPeriodInDays, forKey: .retentionPeriodInDays)
        }
    }
}