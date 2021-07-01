// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteNotificationSubscriptionInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteNotificationSubscriptionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteNotificationSubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteNotificationSubscriptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteNotificationSubscriptionInput>
    public typealias MOutput = OperationOutput<DeleteNotificationSubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteNotificationSubscriptionOutputError>
}

public struct DeleteNotificationSubscriptionInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteNotificationSubscriptionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteNotificationSubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteNotificationSubscriptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteNotificationSubscriptionInput>
    public typealias MOutput = OperationOutput<DeleteNotificationSubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteNotificationSubscriptionOutputError>
}

extension DeleteNotificationSubscriptionInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}