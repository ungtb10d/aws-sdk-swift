// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DisassociateDeviceFromRoomInputHeadersMiddleware: Middleware {
    public let id: String = "DisassociateDeviceFromRoomInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateDeviceFromRoomInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateDeviceFromRoomOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisassociateDeviceFromRoomInput>
    public typealias MOutput = OperationOutput<DisassociateDeviceFromRoomOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateDeviceFromRoomOutputError>
}

public struct DisassociateDeviceFromRoomInputQueryItemMiddleware: Middleware {
    public let id: String = "DisassociateDeviceFromRoomInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateDeviceFromRoomInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateDeviceFromRoomOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisassociateDeviceFromRoomInput>
    public typealias MOutput = OperationOutput<DisassociateDeviceFromRoomOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateDeviceFromRoomOutputError>
}

public struct DisassociateDeviceFromRoomInputBodyMiddleware: Middleware {
    public let id: String = "DisassociateDeviceFromRoomInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateDeviceFromRoomInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateDeviceFromRoomOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DisassociateDeviceFromRoomInput>
    public typealias MOutput = OperationOutput<DisassociateDeviceFromRoomOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateDeviceFromRoomOutputError>
}

extension DisassociateDeviceFromRoomInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case deviceArn = "DeviceArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let deviceArn = deviceArn {
            try encodeContainer.encode(deviceArn, forKey: .deviceArn)
        }
    }
}