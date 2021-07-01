// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetFunctionDefinitionInputHeadersMiddleware: Middleware {
    public let id: String = "GetFunctionDefinitionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetFunctionDefinitionInput>,
                  next: H) -> Swift.Result<OperationOutput<GetFunctionDefinitionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetFunctionDefinitionInput>
    public typealias MOutput = OperationOutput<GetFunctionDefinitionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetFunctionDefinitionOutputError>
}

public struct GetFunctionDefinitionInputQueryItemMiddleware: Middleware {
    public let id: String = "GetFunctionDefinitionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetFunctionDefinitionInput>,
                  next: H) -> Swift.Result<OperationOutput<GetFunctionDefinitionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetFunctionDefinitionInput>
    public typealias MOutput = OperationOutput<GetFunctionDefinitionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetFunctionDefinitionOutputError>
}

extension GetFunctionDefinitionInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}