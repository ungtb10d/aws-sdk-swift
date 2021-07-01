// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteGlobalNetworkInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteGlobalNetworkInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteGlobalNetworkInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteGlobalNetworkOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteGlobalNetworkInput>
    public typealias MOutput = OperationOutput<DeleteGlobalNetworkOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteGlobalNetworkOutputError>
}

public struct DeleteGlobalNetworkInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteGlobalNetworkInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteGlobalNetworkInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteGlobalNetworkOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteGlobalNetworkInput>
    public typealias MOutput = OperationOutput<DeleteGlobalNetworkOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteGlobalNetworkOutputError>
}

extension DeleteGlobalNetworkInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}