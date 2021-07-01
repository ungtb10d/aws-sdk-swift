// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeResourcePolicyInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeResourcePolicyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeResourcePolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeResourcePolicyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeResourcePolicyInput>
    public typealias MOutput = OperationOutput<DescribeResourcePolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeResourcePolicyOutputError>
}

public struct DescribeResourcePolicyInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeResourcePolicyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeResourcePolicyInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeResourcePolicyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeResourcePolicyInput>
    public typealias MOutput = OperationOutput<DescribeResourcePolicyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeResourcePolicyOutputError>
}

extension DescribeResourcePolicyInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}