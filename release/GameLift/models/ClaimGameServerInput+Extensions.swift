// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ClaimGameServerInputHeadersMiddleware: Middleware {
    public let id: String = "ClaimGameServerInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ClaimGameServerInput>,
                  next: H) -> Swift.Result<OperationOutput<ClaimGameServerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ClaimGameServerInput>
    public typealias MOutput = OperationOutput<ClaimGameServerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ClaimGameServerOutputError>
}

public struct ClaimGameServerInputQueryItemMiddleware: Middleware {
    public let id: String = "ClaimGameServerInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ClaimGameServerInput>,
                  next: H) -> Swift.Result<OperationOutput<ClaimGameServerOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ClaimGameServerInput>
    public typealias MOutput = OperationOutput<ClaimGameServerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ClaimGameServerOutputError>
}

public struct ClaimGameServerInputBodyMiddleware: Middleware {
    public let id: String = "ClaimGameServerInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ClaimGameServerInput>,
                  next: H) -> Swift.Result<OperationOutput<ClaimGameServerOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ClaimGameServerInput>
    public typealias MOutput = OperationOutput<ClaimGameServerOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ClaimGameServerOutputError>
}

extension ClaimGameServerInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case gameServerData = "GameServerData"
        case gameServerGroupName = "GameServerGroupName"
        case gameServerId = "GameServerId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let gameServerData = gameServerData {
            try encodeContainer.encode(gameServerData, forKey: .gameServerData)
        }
        if let gameServerGroupName = gameServerGroupName {
            try encodeContainer.encode(gameServerGroupName, forKey: .gameServerGroupName)
        }
        if let gameServerId = gameServerId {
            try encodeContainer.encode(gameServerId, forKey: .gameServerId)
        }
    }
}