// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ModifyDBInstanceInputHeadersMiddleware: Middleware {
    public let id: String = "ModifyDBInstanceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyDBInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyDBInstanceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ModifyDBInstanceInput>
    public typealias MOutput = OperationOutput<ModifyDBInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyDBInstanceOutputError>
}

public struct ModifyDBInstanceInputQueryItemMiddleware: Middleware {
    public let id: String = "ModifyDBInstanceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyDBInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyDBInstanceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ModifyDBInstanceInput>
    public typealias MOutput = OperationOutput<ModifyDBInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyDBInstanceOutputError>
}

public struct ModifyDBInstanceInputBodyMiddleware: Middleware {
    public let id: String = "ModifyDBInstanceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyDBInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyDBInstanceOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ModifyDBInstanceInput>
    public typealias MOutput = OperationOutput<ModifyDBInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyDBInstanceOutputError>
}

extension ModifyDBInstanceInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if applyImmediately != false {
            try container.encode(applyImmediately, forKey: Key("ApplyImmediately"))
        }
        if let autoMinorVersionUpgrade = autoMinorVersionUpgrade {
            try container.encode(autoMinorVersionUpgrade, forKey: Key("AutoMinorVersionUpgrade"))
        }
        if let cACertificateIdentifier = cACertificateIdentifier {
            try container.encode(cACertificateIdentifier, forKey: Key("CACertificateIdentifier"))
        }
        if let dBInstanceClass = dBInstanceClass {
            try container.encode(dBInstanceClass, forKey: Key("DBInstanceClass"))
        }
        if let dBInstanceIdentifier = dBInstanceIdentifier {
            try container.encode(dBInstanceIdentifier, forKey: Key("DBInstanceIdentifier"))
        }
        if let newDBInstanceIdentifier = newDBInstanceIdentifier {
            try container.encode(newDBInstanceIdentifier, forKey: Key("NewDBInstanceIdentifier"))
        }
        if let preferredMaintenanceWindow = preferredMaintenanceWindow {
            try container.encode(preferredMaintenanceWindow, forKey: Key("PreferredMaintenanceWindow"))
        }
        if let promotionTier = promotionTier {
            try container.encode(promotionTier, forKey: Key("PromotionTier"))
        }
        try container.encode("ModifyDBInstance", forKey:Key("Action"))
        try container.encode("2014-10-31", forKey:Key("Version"))
    }
}