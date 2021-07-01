// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListClustersInputHeadersMiddleware: Middleware {
    public let id: String = "ListClustersInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListClustersInput>,
                  next: H) -> Swift.Result<OperationOutput<ListClustersOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListClustersInput>
    public typealias MOutput = OperationOutput<ListClustersOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListClustersOutputError>
}

public struct ListClustersInputQueryItemMiddleware: Middleware {
    public let id: String = "ListClustersInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListClustersInput>,
                  next: H) -> Swift.Result<OperationOutput<ListClustersOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let maxResults = input.operationInput.maxResults {
            let maxResultsQueryItem = URLQueryItem(name: "maxResults".urlPercentEncoding(), value: String(maxResults).urlPercentEncoding())
            input.builder.withQueryItem(maxResultsQueryItem)
        }
        if let nextToken = input.operationInput.nextToken {
            let nextTokenQueryItem = URLQueryItem(name: "nextToken".urlPercentEncoding(), value: String(nextToken).urlPercentEncoding())
            input.builder.withQueryItem(nextTokenQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListClustersInput>
    public typealias MOutput = OperationOutput<ListClustersOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListClustersOutputError>
}

extension ListClustersInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}