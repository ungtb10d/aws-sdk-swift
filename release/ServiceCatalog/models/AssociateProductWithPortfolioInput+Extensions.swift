// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AssociateProductWithPortfolioInputHeadersMiddleware: Middleware {
    public let id: String = "AssociateProductWithPortfolioInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateProductWithPortfolioInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateProductWithPortfolioOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssociateProductWithPortfolioInput>
    public typealias MOutput = OperationOutput<AssociateProductWithPortfolioOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateProductWithPortfolioOutputError>
}

public struct AssociateProductWithPortfolioInputQueryItemMiddleware: Middleware {
    public let id: String = "AssociateProductWithPortfolioInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateProductWithPortfolioInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateProductWithPortfolioOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssociateProductWithPortfolioInput>
    public typealias MOutput = OperationOutput<AssociateProductWithPortfolioOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateProductWithPortfolioOutputError>
}

public struct AssociateProductWithPortfolioInputBodyMiddleware: Middleware {
    public let id: String = "AssociateProductWithPortfolioInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateProductWithPortfolioInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateProductWithPortfolioOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AssociateProductWithPortfolioInput>
    public typealias MOutput = OperationOutput<AssociateProductWithPortfolioOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateProductWithPortfolioOutputError>
}

extension AssociateProductWithPortfolioInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case acceptLanguage = "AcceptLanguage"
        case portfolioId = "PortfolioId"
        case productId = "ProductId"
        case sourcePortfolioId = "SourcePortfolioId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let acceptLanguage = acceptLanguage {
            try encodeContainer.encode(acceptLanguage, forKey: .acceptLanguage)
        }
        if let portfolioId = portfolioId {
            try encodeContainer.encode(portfolioId, forKey: .portfolioId)
        }
        if let productId = productId {
            try encodeContainer.encode(productId, forKey: .productId)
        }
        if let sourcePortfolioId = sourcePortfolioId {
            try encodeContainer.encode(sourcePortfolioId, forKey: .sourcePortfolioId)
        }
    }
}