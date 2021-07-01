// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateRegexPatternSetInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateRegexPatternSetInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateRegexPatternSetInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateRegexPatternSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateRegexPatternSetInput>
    public typealias MOutput = OperationOutput<UpdateRegexPatternSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateRegexPatternSetOutputError>
}

public struct UpdateRegexPatternSetInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateRegexPatternSetInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateRegexPatternSetInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateRegexPatternSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateRegexPatternSetInput>
    public typealias MOutput = OperationOutput<UpdateRegexPatternSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateRegexPatternSetOutputError>
}

public struct UpdateRegexPatternSetInputBodyMiddleware: Middleware {
    public let id: String = "UpdateRegexPatternSetInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateRegexPatternSetInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateRegexPatternSetOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateRegexPatternSetInput>
    public typealias MOutput = OperationOutput<UpdateRegexPatternSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateRegexPatternSetOutputError>
}

extension UpdateRegexPatternSetInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case id = "Id"
        case lockToken = "LockToken"
        case name = "Name"
        case regularExpressionList = "RegularExpressionList"
        case scope = "Scope"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let lockToken = lockToken {
            try encodeContainer.encode(lockToken, forKey: .lockToken)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let regularExpressionList = regularExpressionList {
            var regularExpressionListContainer = encodeContainer.nestedUnkeyedContainer(forKey: .regularExpressionList)
            for regularexpressionlist0 in regularExpressionList {
                try regularExpressionListContainer.encode(regularexpressionlist0)
            }
        }
        if let scope = scope {
            try encodeContainer.encode(scope.rawValue, forKey: .scope)
        }
    }
}