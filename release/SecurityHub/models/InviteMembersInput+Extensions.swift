// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct InviteMembersInputHeadersMiddleware: Middleware {
    public let id: String = "InviteMembersInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<InviteMembersInput>,
                  next: H) -> Swift.Result<OperationOutput<InviteMembersOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<InviteMembersInput>
    public typealias MOutput = OperationOutput<InviteMembersOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<InviteMembersOutputError>
}

public struct InviteMembersInputQueryItemMiddleware: Middleware {
    public let id: String = "InviteMembersInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<InviteMembersInput>,
                  next: H) -> Swift.Result<OperationOutput<InviteMembersOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<InviteMembersInput>
    public typealias MOutput = OperationOutput<InviteMembersOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<InviteMembersOutputError>
}

public struct InviteMembersInputBodyMiddleware: Middleware {
    public let id: String = "InviteMembersInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<InviteMembersInput>,
                  next: H) -> Swift.Result<OperationOutput<InviteMembersOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<InviteMembersInput>
    public typealias MOutput = OperationOutput<InviteMembersOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<InviteMembersOutputError>
}

extension InviteMembersInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case accountIds = "AccountIds"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let accountIds = accountIds {
            var accountIdsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .accountIds)
            for accountidlist0 in accountIds {
                try accountIdsContainer.encode(accountidlist0)
            }
        }
    }
}