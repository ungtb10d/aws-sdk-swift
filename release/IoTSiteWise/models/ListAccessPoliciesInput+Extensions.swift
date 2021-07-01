// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListAccessPoliciesInputHeadersMiddleware: Middleware {
    public let id: String = "ListAccessPoliciesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListAccessPoliciesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListAccessPoliciesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListAccessPoliciesInput>
    public typealias MOutput = OperationOutput<ListAccessPoliciesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListAccessPoliciesOutputError>
}

public struct ListAccessPoliciesInputQueryItemMiddleware: Middleware {
    public let id: String = "ListAccessPoliciesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListAccessPoliciesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListAccessPoliciesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let resourceId = input.operationInput.resourceId {
            let resourceIdQueryItem = URLQueryItem(name: "resourceId".urlPercentEncoding(), value: String(resourceId).urlPercentEncoding())
            input.builder.withQueryItem(resourceIdQueryItem)
        }
        if let identityType = input.operationInput.identityType {
            let identityTypeQueryItem = URLQueryItem(name: "identityType".urlPercentEncoding(), value: String(identityType.rawValue).urlPercentEncoding())
            input.builder.withQueryItem(identityTypeQueryItem)
        }
        if let identityId = input.operationInput.identityId {
            let identityIdQueryItem = URLQueryItem(name: "identityId".urlPercentEncoding(), value: String(identityId).urlPercentEncoding())
            input.builder.withQueryItem(identityIdQueryItem)
        }
        if let nextToken = input.operationInput.nextToken {
            let nextTokenQueryItem = URLQueryItem(name: "nextToken".urlPercentEncoding(), value: String(nextToken).urlPercentEncoding())
            input.builder.withQueryItem(nextTokenQueryItem)
        }
        if let maxResults = input.operationInput.maxResults {
            let maxResultsQueryItem = URLQueryItem(name: "maxResults".urlPercentEncoding(), value: String(maxResults).urlPercentEncoding())
            input.builder.withQueryItem(maxResultsQueryItem)
        }
        if let iamArn = input.operationInput.iamArn {
            let iamArnQueryItem = URLQueryItem(name: "iamArn".urlPercentEncoding(), value: String(iamArn).urlPercentEncoding())
            input.builder.withQueryItem(iamArnQueryItem)
        }
        if let resourceType = input.operationInput.resourceType {
            let resourceTypeQueryItem = URLQueryItem(name: "resourceType".urlPercentEncoding(), value: String(resourceType.rawValue).urlPercentEncoding())
            input.builder.withQueryItem(resourceTypeQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListAccessPoliciesInput>
    public typealias MOutput = OperationOutput<ListAccessPoliciesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListAccessPoliciesOutputError>
}

extension ListAccessPoliciesInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}