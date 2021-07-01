// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeScheduledAuditInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeScheduledAuditInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeScheduledAuditInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeScheduledAuditOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeScheduledAuditInput>
    public typealias MOutput = OperationOutput<DescribeScheduledAuditOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeScheduledAuditOutputError>
}

public struct DescribeScheduledAuditInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeScheduledAuditInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeScheduledAuditInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeScheduledAuditOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeScheduledAuditInput>
    public typealias MOutput = OperationOutput<DescribeScheduledAuditOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeScheduledAuditOutputError>
}

extension DescribeScheduledAuditInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}