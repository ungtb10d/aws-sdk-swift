// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteChannelBanInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteChannelBanInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteChannelBanInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteChannelBanOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let chimeBearer = input.operationInput.chimeBearer {
            input.builder.withHeader(name: "x-amz-chime-bearer", value: String(chimeBearer))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteChannelBanInput>
    public typealias MOutput = OperationOutput<DeleteChannelBanOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteChannelBanOutputError>
}

public struct DeleteChannelBanInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteChannelBanInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteChannelBanInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteChannelBanOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteChannelBanInput>
    public typealias MOutput = OperationOutput<DeleteChannelBanOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteChannelBanOutputError>
}

extension DeleteChannelBanInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}