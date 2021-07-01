// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RebootWorkspacesInputHeadersMiddleware: Middleware {
    public let id: String = "RebootWorkspacesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RebootWorkspacesInput>,
                  next: H) -> Swift.Result<OperationOutput<RebootWorkspacesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RebootWorkspacesInput>
    public typealias MOutput = OperationOutput<RebootWorkspacesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RebootWorkspacesOutputError>
}

public struct RebootWorkspacesInputQueryItemMiddleware: Middleware {
    public let id: String = "RebootWorkspacesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RebootWorkspacesInput>,
                  next: H) -> Swift.Result<OperationOutput<RebootWorkspacesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RebootWorkspacesInput>
    public typealias MOutput = OperationOutput<RebootWorkspacesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RebootWorkspacesOutputError>
}

public struct RebootWorkspacesInputBodyMiddleware: Middleware {
    public let id: String = "RebootWorkspacesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RebootWorkspacesInput>,
                  next: H) -> Swift.Result<OperationOutput<RebootWorkspacesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<RebootWorkspacesInput>
    public typealias MOutput = OperationOutput<RebootWorkspacesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RebootWorkspacesOutputError>
}

extension RebootWorkspacesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case rebootWorkspaceRequests = "RebootWorkspaceRequests"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let rebootWorkspaceRequests = rebootWorkspaceRequests {
            var rebootWorkspaceRequestsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .rebootWorkspaceRequests)
            for rebootworkspacerequests0 in rebootWorkspaceRequests {
                try rebootWorkspaceRequestsContainer.encode(rebootworkspacerequests0)
            }
        }
    }
}