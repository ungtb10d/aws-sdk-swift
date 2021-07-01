// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListChannelsInputHeadersMiddleware: Middleware {
    public let id: String = "ListChannelsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListChannelsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListChannelsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListChannelsInput>
    public typealias MOutput = OperationOutput<ListChannelsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListChannelsOutputError>
}

public struct ListChannelsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListChannelsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListChannelsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListChannelsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListChannelsInput>
    public typealias MOutput = OperationOutput<ListChannelsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListChannelsOutputError>
}

extension ListChannelsInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}