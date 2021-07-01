// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteRegistrationCodeInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteRegistrationCodeInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteRegistrationCodeInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteRegistrationCodeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteRegistrationCodeInput>
    public typealias MOutput = OperationOutput<DeleteRegistrationCodeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteRegistrationCodeOutputError>
}

public struct DeleteRegistrationCodeInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteRegistrationCodeInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteRegistrationCodeInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteRegistrationCodeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteRegistrationCodeInput>
    public typealias MOutput = OperationOutput<DeleteRegistrationCodeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteRegistrationCodeOutputError>
}

extension DeleteRegistrationCodeInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}