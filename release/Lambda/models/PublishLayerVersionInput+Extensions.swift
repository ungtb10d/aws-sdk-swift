// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PublishLayerVersionInputHeadersMiddleware: Middleware {
    public let id: String = "PublishLayerVersionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PublishLayerVersionInput>,
                  next: H) -> Swift.Result<OperationOutput<PublishLayerVersionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PublishLayerVersionInput>
    public typealias MOutput = OperationOutput<PublishLayerVersionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PublishLayerVersionOutputError>
}

public struct PublishLayerVersionInputQueryItemMiddleware: Middleware {
    public let id: String = "PublishLayerVersionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PublishLayerVersionInput>,
                  next: H) -> Swift.Result<OperationOutput<PublishLayerVersionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PublishLayerVersionInput>
    public typealias MOutput = OperationOutput<PublishLayerVersionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PublishLayerVersionOutputError>
}

public struct PublishLayerVersionInputBodyMiddleware: Middleware {
    public let id: String = "PublishLayerVersionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PublishLayerVersionInput>,
                  next: H) -> Swift.Result<OperationOutput<PublishLayerVersionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<PublishLayerVersionInput>
    public typealias MOutput = OperationOutput<PublishLayerVersionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PublishLayerVersionOutputError>
}

extension PublishLayerVersionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case compatibleRuntimes = "CompatibleRuntimes"
        case content = "Content"
        case description = "Description"
        case licenseInfo = "LicenseInfo"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let compatibleRuntimes = compatibleRuntimes {
            var compatibleRuntimesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .compatibleRuntimes)
            for compatibleruntimes0 in compatibleRuntimes {
                try compatibleRuntimesContainer.encode(compatibleruntimes0.rawValue)
            }
        }
        if let content = content {
            try encodeContainer.encode(content, forKey: .content)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let licenseInfo = licenseInfo {
            try encodeContainer.encode(licenseInfo, forKey: .licenseInfo)
        }
    }
}