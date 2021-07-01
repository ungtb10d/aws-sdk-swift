// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RejectInputDeviceTransferInputHeadersMiddleware: Middleware {
    public let id: String = "RejectInputDeviceTransferInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RejectInputDeviceTransferInput>,
                  next: H) -> Swift.Result<OperationOutput<RejectInputDeviceTransferOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RejectInputDeviceTransferInput>
    public typealias MOutput = OperationOutput<RejectInputDeviceTransferOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RejectInputDeviceTransferOutputError>
}

public struct RejectInputDeviceTransferInputQueryItemMiddleware: Middleware {
    public let id: String = "RejectInputDeviceTransferInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RejectInputDeviceTransferInput>,
                  next: H) -> Swift.Result<OperationOutput<RejectInputDeviceTransferOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RejectInputDeviceTransferInput>
    public typealias MOutput = OperationOutput<RejectInputDeviceTransferOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RejectInputDeviceTransferOutputError>
}

extension RejectInputDeviceTransferInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}