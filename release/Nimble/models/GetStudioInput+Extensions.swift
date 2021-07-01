// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetStudioInputHeadersMiddleware: Middleware {
    public let id: String = "GetStudioInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetStudioInput>,
                  next: H) -> Swift.Result<OperationOutput<GetStudioOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetStudioInput>
    public typealias MOutput = OperationOutput<GetStudioOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetStudioOutputError>
}

public struct GetStudioInputQueryItemMiddleware: Middleware {
    public let id: String = "GetStudioInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetStudioInput>,
                  next: H) -> Swift.Result<OperationOutput<GetStudioOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetStudioInput>
    public typealias MOutput = OperationOutput<GetStudioOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetStudioOutputError>
}

extension GetStudioInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}