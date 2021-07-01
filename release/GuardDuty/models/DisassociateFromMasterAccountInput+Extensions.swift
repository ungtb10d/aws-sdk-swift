// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DisassociateFromMasterAccountInputHeadersMiddleware: Middleware {
    public let id: String = "DisassociateFromMasterAccountInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateFromMasterAccountInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateFromMasterAccountOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisassociateFromMasterAccountInput>
    public typealias MOutput = OperationOutput<DisassociateFromMasterAccountOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateFromMasterAccountOutputError>
}

public struct DisassociateFromMasterAccountInputQueryItemMiddleware: Middleware {
    public let id: String = "DisassociateFromMasterAccountInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateFromMasterAccountInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateFromMasterAccountOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisassociateFromMasterAccountInput>
    public typealias MOutput = OperationOutput<DisassociateFromMasterAccountOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateFromMasterAccountOutputError>
}

extension DisassociateFromMasterAccountInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}