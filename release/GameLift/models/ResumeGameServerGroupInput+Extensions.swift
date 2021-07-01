// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ResumeGameServerGroupInputHeadersMiddleware: Middleware {
    public let id: String = "ResumeGameServerGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ResumeGameServerGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<ResumeGameServerGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ResumeGameServerGroupInput>
    public typealias MOutput = OperationOutput<ResumeGameServerGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ResumeGameServerGroupOutputError>
}

public struct ResumeGameServerGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "ResumeGameServerGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ResumeGameServerGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<ResumeGameServerGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ResumeGameServerGroupInput>
    public typealias MOutput = OperationOutput<ResumeGameServerGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ResumeGameServerGroupOutputError>
}

public struct ResumeGameServerGroupInputBodyMiddleware: Middleware {
    public let id: String = "ResumeGameServerGroupInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ResumeGameServerGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<ResumeGameServerGroupOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ResumeGameServerGroupInput>
    public typealias MOutput = OperationOutput<ResumeGameServerGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ResumeGameServerGroupOutputError>
}

extension ResumeGameServerGroupInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case gameServerGroupName = "GameServerGroupName"
        case resumeActions = "ResumeActions"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let gameServerGroupName = gameServerGroupName {
            try encodeContainer.encode(gameServerGroupName, forKey: .gameServerGroupName)
        }
        if let resumeActions = resumeActions {
            var resumeActionsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .resumeActions)
            for gameservergroupactions0 in resumeActions {
                try resumeActionsContainer.encode(gameservergroupactions0.rawValue)
            }
        }
    }
}