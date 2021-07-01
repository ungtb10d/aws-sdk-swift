// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteProfilingGroupInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteProfilingGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteProfilingGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteProfilingGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteProfilingGroupInput>
    public typealias MOutput = OperationOutput<DeleteProfilingGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteProfilingGroupOutputError>
}

public struct DeleteProfilingGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteProfilingGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteProfilingGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteProfilingGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteProfilingGroupInput>
    public typealias MOutput = OperationOutput<DeleteProfilingGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteProfilingGroupOutputError>
}

extension DeleteProfilingGroupInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}