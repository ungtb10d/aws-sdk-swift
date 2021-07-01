// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteIntegrationInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteIntegrationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteIntegrationInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteIntegrationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteIntegrationInput>
    public typealias MOutput = OperationOutput<DeleteIntegrationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteIntegrationOutputError>
}

public struct DeleteIntegrationInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteIntegrationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteIntegrationInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteIntegrationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteIntegrationInput>
    public typealias MOutput = OperationOutput<DeleteIntegrationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteIntegrationOutputError>
}

extension DeleteIntegrationInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}