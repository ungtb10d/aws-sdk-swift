// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateImagePermissionsInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateImagePermissionsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateImagePermissionsInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateImagePermissionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateImagePermissionsInput>
    public typealias MOutput = OperationOutput<UpdateImagePermissionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateImagePermissionsOutputError>
}

public struct UpdateImagePermissionsInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateImagePermissionsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateImagePermissionsInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateImagePermissionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateImagePermissionsInput>
    public typealias MOutput = OperationOutput<UpdateImagePermissionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateImagePermissionsOutputError>
}

public struct UpdateImagePermissionsInputBodyMiddleware: Middleware {
    public let id: String = "UpdateImagePermissionsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateImagePermissionsInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateImagePermissionsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateImagePermissionsInput>
    public typealias MOutput = OperationOutput<UpdateImagePermissionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateImagePermissionsOutputError>
}

extension UpdateImagePermissionsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case imagePermissions = "ImagePermissions"
        case name = "Name"
        case sharedAccountId = "SharedAccountId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let imagePermissions = imagePermissions {
            try encodeContainer.encode(imagePermissions, forKey: .imagePermissions)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let sharedAccountId = sharedAccountId {
            try encodeContainer.encode(sharedAccountId, forKey: .sharedAccountId)
        }
    }
}