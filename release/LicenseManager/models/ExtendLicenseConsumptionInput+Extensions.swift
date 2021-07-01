// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ExtendLicenseConsumptionInputHeadersMiddleware: Middleware {
    public let id: String = "ExtendLicenseConsumptionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ExtendLicenseConsumptionInput>,
                  next: H) -> Swift.Result<OperationOutput<ExtendLicenseConsumptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ExtendLicenseConsumptionInput>
    public typealias MOutput = OperationOutput<ExtendLicenseConsumptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ExtendLicenseConsumptionOutputError>
}

public struct ExtendLicenseConsumptionInputQueryItemMiddleware: Middleware {
    public let id: String = "ExtendLicenseConsumptionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ExtendLicenseConsumptionInput>,
                  next: H) -> Swift.Result<OperationOutput<ExtendLicenseConsumptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ExtendLicenseConsumptionInput>
    public typealias MOutput = OperationOutput<ExtendLicenseConsumptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ExtendLicenseConsumptionOutputError>
}

public struct ExtendLicenseConsumptionInputBodyMiddleware: Middleware {
    public let id: String = "ExtendLicenseConsumptionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ExtendLicenseConsumptionInput>,
                  next: H) -> Swift.Result<OperationOutput<ExtendLicenseConsumptionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ExtendLicenseConsumptionInput>
    public typealias MOutput = OperationOutput<ExtendLicenseConsumptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ExtendLicenseConsumptionOutputError>
}

extension ExtendLicenseConsumptionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case licenseConsumptionToken = "LicenseConsumptionToken"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if dryRun != false {
            try encodeContainer.encode(dryRun, forKey: .dryRun)
        }
        if let licenseConsumptionToken = licenseConsumptionToken {
            try encodeContainer.encode(licenseConsumptionToken, forKey: .licenseConsumptionToken)
        }
    }
}