// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetAccountAuthorizationDetailsInputHeadersMiddleware: Middleware {
    public let id: String = "GetAccountAuthorizationDetailsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAccountAuthorizationDetailsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAccountAuthorizationDetailsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetAccountAuthorizationDetailsInput>
    public typealias MOutput = OperationOutput<GetAccountAuthorizationDetailsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAccountAuthorizationDetailsOutputError>
}

public struct GetAccountAuthorizationDetailsInputQueryItemMiddleware: Middleware {
    public let id: String = "GetAccountAuthorizationDetailsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAccountAuthorizationDetailsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAccountAuthorizationDetailsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetAccountAuthorizationDetailsInput>
    public typealias MOutput = OperationOutput<GetAccountAuthorizationDetailsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAccountAuthorizationDetailsOutputError>
}

public struct GetAccountAuthorizationDetailsInputBodyMiddleware: Middleware {
    public let id: String = "GetAccountAuthorizationDetailsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAccountAuthorizationDetailsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAccountAuthorizationDetailsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            let encoder = context.getEncoder()
            let data = try encoder.encode(input.operationInput)
            let body = HttpBody.data(data)
            input.builder.withBody(body)
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetAccountAuthorizationDetailsInput>
    public typealias MOutput = OperationOutput<GetAccountAuthorizationDetailsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAccountAuthorizationDetailsOutputError>
}

extension GetAccountAuthorizationDetailsInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let filter = filter {
            var filterContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("Filter"))
            for (index0, entitytype0) in filter.enumerated() {
                try filterContainer.encode(entitytype0, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
        if let marker = marker {
            try container.encode(marker, forKey: Key("Marker"))
        }
        if let maxItems = maxItems {
            try container.encode(maxItems, forKey: Key("MaxItems"))
        }
        try container.encode("GetAccountAuthorizationDetails", forKey:Key("Action"))
        try container.encode("2010-05-08", forKey:Key("Version"))
    }
}