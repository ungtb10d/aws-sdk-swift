// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ScheduleKeyDeletionInputHeadersMiddleware: Middleware {
    public let id: String = "ScheduleKeyDeletionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ScheduleKeyDeletionInput>,
                  next: H) -> Swift.Result<OperationOutput<ScheduleKeyDeletionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ScheduleKeyDeletionInput>
    public typealias MOutput = OperationOutput<ScheduleKeyDeletionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ScheduleKeyDeletionOutputError>
}

public struct ScheduleKeyDeletionInputQueryItemMiddleware: Middleware {
    public let id: String = "ScheduleKeyDeletionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ScheduleKeyDeletionInput>,
                  next: H) -> Swift.Result<OperationOutput<ScheduleKeyDeletionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ScheduleKeyDeletionInput>
    public typealias MOutput = OperationOutput<ScheduleKeyDeletionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ScheduleKeyDeletionOutputError>
}

public struct ScheduleKeyDeletionInputBodyMiddleware: Middleware {
    public let id: String = "ScheduleKeyDeletionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ScheduleKeyDeletionInput>,
                  next: H) -> Swift.Result<OperationOutput<ScheduleKeyDeletionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ScheduleKeyDeletionInput>
    public typealias MOutput = OperationOutput<ScheduleKeyDeletionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ScheduleKeyDeletionOutputError>
}

extension ScheduleKeyDeletionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case keyId = "KeyId"
        case pendingWindowInDays = "PendingWindowInDays"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let keyId = keyId {
            try encodeContainer.encode(keyId, forKey: .keyId)
        }
        if let pendingWindowInDays = pendingWindowInDays {
            try encodeContainer.encode(pendingWindowInDays, forKey: .pendingWindowInDays)
        }
    }
}