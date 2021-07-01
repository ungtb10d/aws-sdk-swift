// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeHoursOfOperationInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeHoursOfOperationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeHoursOfOperationInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeHoursOfOperationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeHoursOfOperationInput>
    public typealias MOutput = OperationOutput<DescribeHoursOfOperationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeHoursOfOperationOutputError>
}

public struct DescribeHoursOfOperationInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeHoursOfOperationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeHoursOfOperationInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeHoursOfOperationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeHoursOfOperationInput>
    public typealias MOutput = OperationOutput<DescribeHoursOfOperationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeHoursOfOperationOutputError>
}

extension DescribeHoursOfOperationInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}