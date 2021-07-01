// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteMonitoringSubscriptionInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteMonitoringSubscriptionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteMonitoringSubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteMonitoringSubscriptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteMonitoringSubscriptionInput>
    public typealias MOutput = OperationOutput<DeleteMonitoringSubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteMonitoringSubscriptionOutputError>
}

public struct DeleteMonitoringSubscriptionInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteMonitoringSubscriptionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteMonitoringSubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteMonitoringSubscriptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteMonitoringSubscriptionInput>
    public typealias MOutput = OperationOutput<DeleteMonitoringSubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteMonitoringSubscriptionOutputError>
}

extension DeleteMonitoringSubscriptionInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}