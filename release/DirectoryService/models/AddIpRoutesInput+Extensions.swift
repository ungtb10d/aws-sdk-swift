// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AddIpRoutesInputHeadersMiddleware: Middleware {
    public let id: String = "AddIpRoutesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AddIpRoutesInput>,
                  next: H) -> Swift.Result<OperationOutput<AddIpRoutesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AddIpRoutesInput>
    public typealias MOutput = OperationOutput<AddIpRoutesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AddIpRoutesOutputError>
}

public struct AddIpRoutesInputQueryItemMiddleware: Middleware {
    public let id: String = "AddIpRoutesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AddIpRoutesInput>,
                  next: H) -> Swift.Result<OperationOutput<AddIpRoutesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AddIpRoutesInput>
    public typealias MOutput = OperationOutput<AddIpRoutesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AddIpRoutesOutputError>
}

public struct AddIpRoutesInputBodyMiddleware: Middleware {
    public let id: String = "AddIpRoutesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AddIpRoutesInput>,
                  next: H) -> Swift.Result<OperationOutput<AddIpRoutesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AddIpRoutesInput>
    public typealias MOutput = OperationOutput<AddIpRoutesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AddIpRoutesOutputError>
}

extension AddIpRoutesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case directoryId = "DirectoryId"
        case ipRoutes = "IpRoutes"
        case updateSecurityGroupForDirectoryControllers = "UpdateSecurityGroupForDirectoryControllers"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let directoryId = directoryId {
            try encodeContainer.encode(directoryId, forKey: .directoryId)
        }
        if let ipRoutes = ipRoutes {
            var ipRoutesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .ipRoutes)
            for iproutes0 in ipRoutes {
                try ipRoutesContainer.encode(iproutes0)
            }
        }
        if updateSecurityGroupForDirectoryControllers != false {
            try encodeContainer.encode(updateSecurityGroupForDirectoryControllers, forKey: .updateSecurityGroupForDirectoryControllers)
        }
    }
}