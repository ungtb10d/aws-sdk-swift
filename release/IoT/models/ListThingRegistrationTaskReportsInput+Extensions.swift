// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListThingRegistrationTaskReportsInputHeadersMiddleware: Middleware {
    public let id: String = "ListThingRegistrationTaskReportsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListThingRegistrationTaskReportsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListThingRegistrationTaskReportsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListThingRegistrationTaskReportsInput>
    public typealias MOutput = OperationOutput<ListThingRegistrationTaskReportsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListThingRegistrationTaskReportsOutputError>
}

public struct ListThingRegistrationTaskReportsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListThingRegistrationTaskReportsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListThingRegistrationTaskReportsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListThingRegistrationTaskReportsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let reportType = input.operationInput.reportType {
            let reportTypeQueryItem = URLQueryItem(name: "reportType".urlPercentEncoding(), value: String(reportType.rawValue).urlPercentEncoding())
            input.builder.withQueryItem(reportTypeQueryItem)
        }
        if let nextToken = input.operationInput.nextToken {
            let nextTokenQueryItem = URLQueryItem(name: "nextToken".urlPercentEncoding(), value: String(nextToken).urlPercentEncoding())
            input.builder.withQueryItem(nextTokenQueryItem)
        }
        if let maxResults = input.operationInput.maxResults {
            let maxResultsQueryItem = URLQueryItem(name: "maxResults".urlPercentEncoding(), value: String(maxResults).urlPercentEncoding())
            input.builder.withQueryItem(maxResultsQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListThingRegistrationTaskReportsInput>
    public typealias MOutput = OperationOutput<ListThingRegistrationTaskReportsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListThingRegistrationTaskReportsOutputError>
}

extension ListThingRegistrationTaskReportsInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}