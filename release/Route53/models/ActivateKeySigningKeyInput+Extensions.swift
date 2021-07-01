// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ActivateKeySigningKeyInputHeadersMiddleware: Middleware {
    public let id: String = "ActivateKeySigningKeyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ActivateKeySigningKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<ActivateKeySigningKeyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ActivateKeySigningKeyInput>
    public typealias MOutput = OperationOutput<ActivateKeySigningKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ActivateKeySigningKeyOutputError>
}

public struct ActivateKeySigningKeyInputQueryItemMiddleware: Middleware {
    public let id: String = "ActivateKeySigningKeyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ActivateKeySigningKeyInput>,
                  next: H) -> Swift.Result<OperationOutput<ActivateKeySigningKeyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ActivateKeySigningKeyInput>
    public typealias MOutput = OperationOutput<ActivateKeySigningKeyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ActivateKeySigningKeyOutputError>
}

extension ActivateKeySigningKeyInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}