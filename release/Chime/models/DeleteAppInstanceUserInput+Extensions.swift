// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteAppInstanceUserInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteAppInstanceUserInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteAppInstanceUserInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteAppInstanceUserOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteAppInstanceUserInput>
    public typealias MOutput = OperationOutput<DeleteAppInstanceUserOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteAppInstanceUserOutputError>
}

public struct DeleteAppInstanceUserInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteAppInstanceUserInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteAppInstanceUserInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteAppInstanceUserOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteAppInstanceUserInput>
    public typealias MOutput = OperationOutput<DeleteAppInstanceUserOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteAppInstanceUserOutputError>
}

extension DeleteAppInstanceUserInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}