// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListStudioSessionMappingsInputHeadersMiddleware: Middleware {
    public let id: String = "ListStudioSessionMappingsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListStudioSessionMappingsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListStudioSessionMappingsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListStudioSessionMappingsInput>
    public typealias MOutput = OperationOutput<ListStudioSessionMappingsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListStudioSessionMappingsOutputError>
}

public struct ListStudioSessionMappingsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListStudioSessionMappingsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListStudioSessionMappingsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListStudioSessionMappingsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListStudioSessionMappingsInput>
    public typealias MOutput = OperationOutput<ListStudioSessionMappingsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListStudioSessionMappingsOutputError>
}

public struct ListStudioSessionMappingsInputBodyMiddleware: Middleware {
    public let id: String = "ListStudioSessionMappingsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListStudioSessionMappingsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListStudioSessionMappingsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListStudioSessionMappingsInput>
    public typealias MOutput = OperationOutput<ListStudioSessionMappingsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListStudioSessionMappingsOutputError>
}

extension ListStudioSessionMappingsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case identityType = "IdentityType"
        case marker = "Marker"
        case studioId = "StudioId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let identityType = identityType {
            try encodeContainer.encode(identityType.rawValue, forKey: .identityType)
        }
        if let marker = marker {
            try encodeContainer.encode(marker, forKey: .marker)
        }
        if let studioId = studioId {
            try encodeContainer.encode(studioId, forKey: .studioId)
        }
    }
}