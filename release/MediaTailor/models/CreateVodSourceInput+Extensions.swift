// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateVodSourceInputHeadersMiddleware: Middleware {
    public let id: String = "CreateVodSourceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateVodSourceInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateVodSourceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateVodSourceInput>
    public typealias MOutput = OperationOutput<CreateVodSourceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateVodSourceOutputError>
}

public struct CreateVodSourceInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateVodSourceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateVodSourceInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateVodSourceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateVodSourceInput>
    public typealias MOutput = OperationOutput<CreateVodSourceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateVodSourceOutputError>
}

public struct CreateVodSourceInputBodyMiddleware: Middleware {
    public let id: String = "CreateVodSourceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateVodSourceInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateVodSourceOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateVodSourceInput>
    public typealias MOutput = OperationOutput<CreateVodSourceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateVodSourceOutputError>
}

extension CreateVodSourceInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case httpPackageConfigurations = "HttpPackageConfigurations"
        case tags = "tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let httpPackageConfigurations = httpPackageConfigurations {
            var httpPackageConfigurationsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .httpPackageConfigurations)
            for httppackageconfigurations0 in httpPackageConfigurations {
                try httpPackageConfigurationsContainer.encode(httppackageconfigurations0)
            }
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, __mapof__string0) in tags {
                try tagsContainer.encode(__mapof__string0, forKey: Key(stringValue: dictKey0))
            }
        }
    }
}