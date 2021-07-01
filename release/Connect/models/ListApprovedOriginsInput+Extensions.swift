// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListApprovedOriginsInputHeadersMiddleware: Middleware {
    public let id: String = "ListApprovedOriginsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListApprovedOriginsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListApprovedOriginsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListApprovedOriginsInput>
    public typealias MOutput = OperationOutput<ListApprovedOriginsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListApprovedOriginsOutputError>
}

public struct ListApprovedOriginsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListApprovedOriginsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListApprovedOriginsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListApprovedOriginsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let nextToken = input.operationInput.nextToken {
            let nextTokenQueryItem = URLQueryItem(name: "nextToken".urlPercentEncoding(), value: String(nextToken).urlPercentEncoding())
            input.builder.withQueryItem(nextTokenQueryItem)
        }
        let maxResultsQueryItem = URLQueryItem(name: "maxResults".urlPercentEncoding(), value: String(input.operationInput.maxResults).urlPercentEncoding())
        input.builder.withQueryItem(maxResultsQueryItem)
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListApprovedOriginsInput>
    public typealias MOutput = OperationOutput<ListApprovedOriginsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListApprovedOriginsOutputError>
}

extension ListApprovedOriginsInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}