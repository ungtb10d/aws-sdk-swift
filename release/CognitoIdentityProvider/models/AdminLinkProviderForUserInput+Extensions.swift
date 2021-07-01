// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AdminLinkProviderForUserInputHeadersMiddleware: Middleware {
    public let id: String = "AdminLinkProviderForUserInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AdminLinkProviderForUserInput>,
                  next: H) -> Swift.Result<OperationOutput<AdminLinkProviderForUserOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AdminLinkProviderForUserInput>
    public typealias MOutput = OperationOutput<AdminLinkProviderForUserOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AdminLinkProviderForUserOutputError>
}

public struct AdminLinkProviderForUserInputQueryItemMiddleware: Middleware {
    public let id: String = "AdminLinkProviderForUserInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AdminLinkProviderForUserInput>,
                  next: H) -> Swift.Result<OperationOutput<AdminLinkProviderForUserOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AdminLinkProviderForUserInput>
    public typealias MOutput = OperationOutput<AdminLinkProviderForUserOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AdminLinkProviderForUserOutputError>
}

public struct AdminLinkProviderForUserInputBodyMiddleware: Middleware {
    public let id: String = "AdminLinkProviderForUserInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AdminLinkProviderForUserInput>,
                  next: H) -> Swift.Result<OperationOutput<AdminLinkProviderForUserOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AdminLinkProviderForUserInput>
    public typealias MOutput = OperationOutput<AdminLinkProviderForUserOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AdminLinkProviderForUserOutputError>
}

extension AdminLinkProviderForUserInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case destinationUser = "DestinationUser"
        case sourceUser = "SourceUser"
        case userPoolId = "UserPoolId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let destinationUser = destinationUser {
            try encodeContainer.encode(destinationUser, forKey: .destinationUser)
        }
        if let sourceUser = sourceUser {
            try encodeContainer.encode(sourceUser, forKey: .sourceUser)
        }
        if let userPoolId = userPoolId {
            try encodeContainer.encode(userPoolId, forKey: .userPoolId)
        }
    }
}