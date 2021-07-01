// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteDBSubnetGroupInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteDBSubnetGroupInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteDBSubnetGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteDBSubnetGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteDBSubnetGroupInput>
    public typealias MOutput = OperationOutput<DeleteDBSubnetGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteDBSubnetGroupOutputError>
}

public struct DeleteDBSubnetGroupInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteDBSubnetGroupInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteDBSubnetGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteDBSubnetGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteDBSubnetGroupInput>
    public typealias MOutput = OperationOutput<DeleteDBSubnetGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteDBSubnetGroupOutputError>
}

public struct DeleteDBSubnetGroupInputBodyMiddleware: Middleware {
    public let id: String = "DeleteDBSubnetGroupInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteDBSubnetGroupInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteDBSubnetGroupOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            let encoder = context.getEncoder()
            let data = try encoder.encode(input.operationInput)
            let body = HttpBody.data(data)
            input.builder.withBody(body)
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteDBSubnetGroupInput>
    public typealias MOutput = OperationOutput<DeleteDBSubnetGroupOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteDBSubnetGroupOutputError>
}

extension DeleteDBSubnetGroupInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let dBSubnetGroupName = dBSubnetGroupName {
            try container.encode(dBSubnetGroupName, forKey: Key("DBSubnetGroupName"))
        }
        try container.encode("DeleteDBSubnetGroup", forKey:Key("Action"))
        try container.encode("2014-10-31", forKey:Key("Version"))
    }
}