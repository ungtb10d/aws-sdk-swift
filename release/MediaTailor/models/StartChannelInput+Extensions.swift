// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StartChannelInputHeadersMiddleware: Middleware {
    public let id: String = "StartChannelInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartChannelInput>,
                  next: H) -> Swift.Result<OperationOutput<StartChannelOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartChannelInput>
    public typealias MOutput = OperationOutput<StartChannelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartChannelOutputError>
}

public struct StartChannelInputQueryItemMiddleware: Middleware {
    public let id: String = "StartChannelInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartChannelInput>,
                  next: H) -> Swift.Result<OperationOutput<StartChannelOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartChannelInput>
    public typealias MOutput = OperationOutput<StartChannelOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartChannelOutputError>
}

extension StartChannelInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}