// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetGlobalSettingsInputHeadersMiddleware: Middleware {
    public let id: String = "GetGlobalSettingsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetGlobalSettingsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetGlobalSettingsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetGlobalSettingsInput>
    public typealias MOutput = OperationOutput<GetGlobalSettingsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetGlobalSettingsOutputError>
}

public struct GetGlobalSettingsInputQueryItemMiddleware: Middleware {
    public let id: String = "GetGlobalSettingsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetGlobalSettingsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetGlobalSettingsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetGlobalSettingsInput>
    public typealias MOutput = OperationOutput<GetGlobalSettingsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetGlobalSettingsOutputError>
}

extension GetGlobalSettingsInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}