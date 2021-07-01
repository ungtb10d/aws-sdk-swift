// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetAnswerInputHeadersMiddleware: Middleware {
    public let id: String = "GetAnswerInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAnswerInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAnswerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetAnswerInput>
    public typealias MOutput = OperationOutput<GetAnswerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAnswerOutputError>
}

public struct GetAnswerInputQueryItemMiddleware: Middleware {
    public let id: String = "GetAnswerInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAnswerInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAnswerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        let milestoneNumberQueryItem = URLQueryItem(name: "MilestoneNumber".urlPercentEncoding(), value: String(input.operationInput.milestoneNumber).urlPercentEncoding())
        input.builder.withQueryItem(milestoneNumberQueryItem)
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetAnswerInput>
    public typealias MOutput = OperationOutput<GetAnswerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAnswerOutputError>
}

extension GetAnswerInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}