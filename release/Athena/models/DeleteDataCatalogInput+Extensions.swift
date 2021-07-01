// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteDataCatalogInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteDataCatalogInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteDataCatalogInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteDataCatalogOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteDataCatalogInput>
    public typealias MOutput = OperationOutput<DeleteDataCatalogOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteDataCatalogOutputError>
}

public struct DeleteDataCatalogInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteDataCatalogInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteDataCatalogInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteDataCatalogOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteDataCatalogInput>
    public typealias MOutput = OperationOutput<DeleteDataCatalogOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteDataCatalogOutputError>
}

public struct DeleteDataCatalogInputBodyMiddleware: Middleware {
    public let id: String = "DeleteDataCatalogInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteDataCatalogInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteDataCatalogOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteDataCatalogInput>
    public typealias MOutput = OperationOutput<DeleteDataCatalogOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteDataCatalogOutputError>
}

extension DeleteDataCatalogInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
    }
}