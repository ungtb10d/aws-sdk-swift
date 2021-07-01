// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StopJobRunInputHeadersMiddleware: Middleware {
    public let id: String = "StopJobRunInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopJobRunInput>,
                  next: H) -> Swift.Result<OperationOutput<StopJobRunOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopJobRunInput>
    public typealias MOutput = OperationOutput<StopJobRunOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopJobRunOutputError>
}

public struct StopJobRunInputQueryItemMiddleware: Middleware {
    public let id: String = "StopJobRunInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopJobRunInput>,
                  next: H) -> Swift.Result<OperationOutput<StopJobRunOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopJobRunInput>
    public typealias MOutput = OperationOutput<StopJobRunOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopJobRunOutputError>
}

extension StopJobRunInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}