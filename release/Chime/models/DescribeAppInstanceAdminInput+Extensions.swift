// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeAppInstanceAdminInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeAppInstanceAdminInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeAppInstanceAdminInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeAppInstanceAdminOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeAppInstanceAdminInput>
    public typealias MOutput = OperationOutput<DescribeAppInstanceAdminOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeAppInstanceAdminOutputError>
}

public struct DescribeAppInstanceAdminInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeAppInstanceAdminInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeAppInstanceAdminInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeAppInstanceAdminOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeAppInstanceAdminInput>
    public typealias MOutput = OperationOutput<DescribeAppInstanceAdminOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeAppInstanceAdminOutputError>
}

extension DescribeAppInstanceAdminInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}