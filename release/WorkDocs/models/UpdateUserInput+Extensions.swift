// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateUserInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateUserInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateUserInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateUserOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let authenticationToken = input.operationInput.authenticationToken {
            input.builder.withHeader(name: "Authentication", value: String(authenticationToken))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateUserInput>
    public typealias MOutput = OperationOutput<UpdateUserOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateUserOutputError>
}

public struct UpdateUserInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateUserInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateUserInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateUserOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateUserInput>
    public typealias MOutput = OperationOutput<UpdateUserOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateUserOutputError>
}

public struct UpdateUserInputBodyMiddleware: Middleware {
    public let id: String = "UpdateUserInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateUserInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateUserOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateUserInput>
    public typealias MOutput = OperationOutput<UpdateUserOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateUserOutputError>
}

extension UpdateUserInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case givenName = "GivenName"
        case grantPoweruserPrivileges = "GrantPoweruserPrivileges"
        case locale = "Locale"
        case storageRule = "StorageRule"
        case surname = "Surname"
        case timeZoneId = "TimeZoneId"
        case type = "Type"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let givenName = givenName {
            try encodeContainer.encode(givenName, forKey: .givenName)
        }
        if let grantPoweruserPrivileges = grantPoweruserPrivileges {
            try encodeContainer.encode(grantPoweruserPrivileges.rawValue, forKey: .grantPoweruserPrivileges)
        }
        if let locale = locale {
            try encodeContainer.encode(locale.rawValue, forKey: .locale)
        }
        if let storageRule = storageRule {
            try encodeContainer.encode(storageRule, forKey: .storageRule)
        }
        if let surname = surname {
            try encodeContainer.encode(surname, forKey: .surname)
        }
        if let timeZoneId = timeZoneId {
            try encodeContainer.encode(timeZoneId, forKey: .timeZoneId)
        }
        if let type = type {
            try encodeContainer.encode(type.rawValue, forKey: .type)
        }
    }
}