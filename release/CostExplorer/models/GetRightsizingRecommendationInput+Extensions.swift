// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetRightsizingRecommendationInputHeadersMiddleware: Middleware {
    public let id: String = "GetRightsizingRecommendationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetRightsizingRecommendationInput>,
                  next: H) -> Swift.Result<OperationOutput<GetRightsizingRecommendationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetRightsizingRecommendationInput>
    public typealias MOutput = OperationOutput<GetRightsizingRecommendationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetRightsizingRecommendationOutputError>
}

public struct GetRightsizingRecommendationInputQueryItemMiddleware: Middleware {
    public let id: String = "GetRightsizingRecommendationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetRightsizingRecommendationInput>,
                  next: H) -> Swift.Result<OperationOutput<GetRightsizingRecommendationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetRightsizingRecommendationInput>
    public typealias MOutput = OperationOutput<GetRightsizingRecommendationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetRightsizingRecommendationOutputError>
}

public struct GetRightsizingRecommendationInputBodyMiddleware: Middleware {
    public let id: String = "GetRightsizingRecommendationInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetRightsizingRecommendationInput>,
                  next: H) -> Swift.Result<OperationOutput<GetRightsizingRecommendationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            if try !input.operationInput.allPropertiesAreNull() {
                let encoder = context.getEncoder()
                let data = try encoder.encode(input.operationInput)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            }
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetRightsizingRecommendationInput>
    public typealias MOutput = OperationOutput<GetRightsizingRecommendationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetRightsizingRecommendationOutputError>
}

extension GetRightsizingRecommendationInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case configuration = "Configuration"
        case filter = "Filter"
        case nextPageToken = "NextPageToken"
        case pageSize = "PageSize"
        case service = "Service"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let configuration = configuration {
            try encodeContainer.encode(configuration, forKey: .configuration)
        }
        if let filter = filter {
            try encodeContainer.encode(filter, forKey: .filter)
        }
        if let nextPageToken = nextPageToken {
            try encodeContainer.encode(nextPageToken, forKey: .nextPageToken)
        }
        if pageSize != 0 {
            try encodeContainer.encode(pageSize, forKey: .pageSize)
        }
        if let service = service {
            try encodeContainer.encode(service, forKey: .service)
        }
    }
}