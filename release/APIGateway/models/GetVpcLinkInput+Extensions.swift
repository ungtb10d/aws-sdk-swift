// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetVpcLinkInputHeadersMiddleware: Middleware {
    public let id: String = "GetVpcLinkInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetVpcLinkInput>,
                  next: H) -> Swift.Result<OperationOutput<GetVpcLinkOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetVpcLinkInput>
    public typealias MOutput = OperationOutput<GetVpcLinkOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetVpcLinkOutputError>
}

public struct GetVpcLinkInputQueryItemMiddleware: Middleware {
    public let id: String = "GetVpcLinkInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetVpcLinkInput>,
                  next: H) -> Swift.Result<OperationOutput<GetVpcLinkOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetVpcLinkInput>
    public typealias MOutput = OperationOutput<GetVpcLinkOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetVpcLinkOutputError>
}

extension GetVpcLinkInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}