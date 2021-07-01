// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StopMultiplexInputHeadersMiddleware: Middleware {
    public let id: String = "StopMultiplexInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopMultiplexInput>,
                  next: H) -> Swift.Result<OperationOutput<StopMultiplexOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopMultiplexInput>
    public typealias MOutput = OperationOutput<StopMultiplexOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopMultiplexOutputError>
}

public struct StopMultiplexInputQueryItemMiddleware: Middleware {
    public let id: String = "StopMultiplexInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopMultiplexInput>,
                  next: H) -> Swift.Result<OperationOutput<StopMultiplexOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopMultiplexInput>
    public typealias MOutput = OperationOutput<StopMultiplexOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopMultiplexOutputError>
}

extension StopMultiplexInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}