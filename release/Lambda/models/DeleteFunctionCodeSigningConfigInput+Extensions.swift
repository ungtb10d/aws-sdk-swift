// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteFunctionCodeSigningConfigInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteFunctionCodeSigningConfigInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteFunctionCodeSigningConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteFunctionCodeSigningConfigOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteFunctionCodeSigningConfigInput>
    public typealias MOutput = OperationOutput<DeleteFunctionCodeSigningConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteFunctionCodeSigningConfigOutputError>
}

public struct DeleteFunctionCodeSigningConfigInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteFunctionCodeSigningConfigInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteFunctionCodeSigningConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteFunctionCodeSigningConfigOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteFunctionCodeSigningConfigInput>
    public typealias MOutput = OperationOutput<DeleteFunctionCodeSigningConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteFunctionCodeSigningConfigOutputError>
}

extension DeleteFunctionCodeSigningConfigInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}