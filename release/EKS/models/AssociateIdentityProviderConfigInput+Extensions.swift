// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AssociateIdentityProviderConfigInputHeadersMiddleware: Middleware {
    public let id: String = "AssociateIdentityProviderConfigInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateIdentityProviderConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateIdentityProviderConfigOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssociateIdentityProviderConfigInput>
    public typealias MOutput = OperationOutput<AssociateIdentityProviderConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateIdentityProviderConfigOutputError>
}

public struct AssociateIdentityProviderConfigInputQueryItemMiddleware: Middleware {
    public let id: String = "AssociateIdentityProviderConfigInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateIdentityProviderConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateIdentityProviderConfigOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssociateIdentityProviderConfigInput>
    public typealias MOutput = OperationOutput<AssociateIdentityProviderConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateIdentityProviderConfigOutputError>
}

public struct AssociateIdentityProviderConfigInputBodyMiddleware: Middleware {
    public let id: String = "AssociateIdentityProviderConfigInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateIdentityProviderConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateIdentityProviderConfigOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AssociateIdentityProviderConfigInput>
    public typealias MOutput = OperationOutput<AssociateIdentityProviderConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateIdentityProviderConfigOutputError>
}

extension AssociateIdentityProviderConfigInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case clientRequestToken
        case oidc
        case tags
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let clientRequestToken = clientRequestToken {
            try encodeContainer.encode(clientRequestToken, forKey: .clientRequestToken)
        }
        if let oidc = oidc {
            try encodeContainer.encode(oidc, forKey: .oidc)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, tagmap0) in tags {
                try tagsContainer.encode(tagmap0, forKey: Key(stringValue: dictKey0))
            }
        }
    }
}