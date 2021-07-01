// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListElasticsearchVersionsInputHeadersMiddleware: Middleware {
    public let id: String = "ListElasticsearchVersionsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListElasticsearchVersionsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListElasticsearchVersionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListElasticsearchVersionsInput>
    public typealias MOutput = OperationOutput<ListElasticsearchVersionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListElasticsearchVersionsOutputError>
}

public struct ListElasticsearchVersionsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListElasticsearchVersionsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListElasticsearchVersionsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListElasticsearchVersionsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListElasticsearchVersionsInput>
    public typealias MOutput = OperationOutput<ListElasticsearchVersionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListElasticsearchVersionsOutputError>
}

extension ListElasticsearchVersionsInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}