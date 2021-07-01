// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct EnableProactiveEngagementInputHeadersMiddleware: Middleware {
    public let id: String = "EnableProactiveEngagementInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<EnableProactiveEngagementInput>,
                  next: H) -> Swift.Result<OperationOutput<EnableProactiveEngagementOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<EnableProactiveEngagementInput>
    public typealias MOutput = OperationOutput<EnableProactiveEngagementOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<EnableProactiveEngagementOutputError>
}

public struct EnableProactiveEngagementInputQueryItemMiddleware: Middleware {
    public let id: String = "EnableProactiveEngagementInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<EnableProactiveEngagementInput>,
                  next: H) -> Swift.Result<OperationOutput<EnableProactiveEngagementOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<EnableProactiveEngagementInput>
    public typealias MOutput = OperationOutput<EnableProactiveEngagementOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<EnableProactiveEngagementOutputError>
}

extension EnableProactiveEngagementInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}