// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListSecurityProfilesInputHeadersMiddleware: Middleware {
    public let id: String = "ListSecurityProfilesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListSecurityProfilesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListSecurityProfilesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListSecurityProfilesInput>
    public typealias MOutput = OperationOutput<ListSecurityProfilesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListSecurityProfilesOutputError>
}

public struct ListSecurityProfilesInputQueryItemMiddleware: Middleware {
    public let id: String = "ListSecurityProfilesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListSecurityProfilesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListSecurityProfilesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let metricName = input.operationInput.metricName {
            let metricNameQueryItem = URLQueryItem(name: "metricName".urlPercentEncoding(), value: String(metricName).urlPercentEncoding())
            input.builder.withQueryItem(metricNameQueryItem)
        }
        if let nextToken = input.operationInput.nextToken {
            let nextTokenQueryItem = URLQueryItem(name: "nextToken".urlPercentEncoding(), value: String(nextToken).urlPercentEncoding())
            input.builder.withQueryItem(nextTokenQueryItem)
        }
        if let maxResults = input.operationInput.maxResults {
            let maxResultsQueryItem = URLQueryItem(name: "maxResults".urlPercentEncoding(), value: String(maxResults).urlPercentEncoding())
            input.builder.withQueryItem(maxResultsQueryItem)
        }
        if let dimensionName = input.operationInput.dimensionName {
            let dimensionNameQueryItem = URLQueryItem(name: "dimensionName".urlPercentEncoding(), value: String(dimensionName).urlPercentEncoding())
            input.builder.withQueryItem(dimensionNameQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListSecurityProfilesInput>
    public typealias MOutput = OperationOutput<ListSecurityProfilesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListSecurityProfilesOutputError>
}

extension ListSecurityProfilesInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}