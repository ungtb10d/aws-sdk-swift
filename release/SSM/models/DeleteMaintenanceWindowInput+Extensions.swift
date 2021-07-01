// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteMaintenanceWindowInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteMaintenanceWindowInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteMaintenanceWindowInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteMaintenanceWindowOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteMaintenanceWindowInput>
    public typealias MOutput = OperationOutput<DeleteMaintenanceWindowOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteMaintenanceWindowOutputError>
}

public struct DeleteMaintenanceWindowInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteMaintenanceWindowInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteMaintenanceWindowInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteMaintenanceWindowOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteMaintenanceWindowInput>
    public typealias MOutput = OperationOutput<DeleteMaintenanceWindowOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteMaintenanceWindowOutputError>
}

public struct DeleteMaintenanceWindowInputBodyMiddleware: Middleware {
    public let id: String = "DeleteMaintenanceWindowInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteMaintenanceWindowInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteMaintenanceWindowOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteMaintenanceWindowInput>
    public typealias MOutput = OperationOutput<DeleteMaintenanceWindowOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteMaintenanceWindowOutputError>
}

extension DeleteMaintenanceWindowInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case windowId = "WindowId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let windowId = windowId {
            try encodeContainer.encode(windowId, forKey: .windowId)
        }
    }
}