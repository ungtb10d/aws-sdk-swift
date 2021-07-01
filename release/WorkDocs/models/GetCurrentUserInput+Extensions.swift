// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetCurrentUserInputHeadersMiddleware: Middleware {
    public let id: String = "GetCurrentUserInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetCurrentUserInput>,
                  next: H) -> Swift.Result<OperationOutput<GetCurrentUserOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let authenticationToken = input.operationInput.authenticationToken {
            input.builder.withHeader(name: "Authentication", value: String(authenticationToken))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetCurrentUserInput>
    public typealias MOutput = OperationOutput<GetCurrentUserOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetCurrentUserOutputError>
}

public struct GetCurrentUserInputQueryItemMiddleware: Middleware {
    public let id: String = "GetCurrentUserInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetCurrentUserInput>,
                  next: H) -> Swift.Result<OperationOutput<GetCurrentUserOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetCurrentUserInput>
    public typealias MOutput = OperationOutput<GetCurrentUserOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetCurrentUserOutputError>
}

extension GetCurrentUserInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}