// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateLaunchProfileInputHeadersMiddleware: Middleware {
    public let id: String = "CreateLaunchProfileInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateLaunchProfileInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateLaunchProfileOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let clientToken = input.operationInput.clientToken {
            input.builder.withHeader(name: "X-Amz-Client-Token", value: String(clientToken))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateLaunchProfileInput>
    public typealias MOutput = OperationOutput<CreateLaunchProfileOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateLaunchProfileOutputError>
}

public struct CreateLaunchProfileInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateLaunchProfileInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateLaunchProfileInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateLaunchProfileOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateLaunchProfileInput>
    public typealias MOutput = OperationOutput<CreateLaunchProfileOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateLaunchProfileOutputError>
}

public struct CreateLaunchProfileInputBodyMiddleware: Middleware {
    public let id: String = "CreateLaunchProfileInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateLaunchProfileInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateLaunchProfileOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateLaunchProfileInput>
    public typealias MOutput = OperationOutput<CreateLaunchProfileOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateLaunchProfileOutputError>
}

extension CreateLaunchProfileInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case description = "description"
        case ec2SubnetIds = "ec2SubnetIds"
        case launchProfileProtocolVersions = "launchProfileProtocolVersions"
        case name = "name"
        case streamConfiguration = "streamConfiguration"
        case studioComponentIds = "studioComponentIds"
        case tags = "tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let ec2SubnetIds = ec2SubnetIds {
            var ec2SubnetIdsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .ec2SubnetIds)
            for ec2subnetidlist0 in ec2SubnetIds {
                try ec2SubnetIdsContainer.encode(ec2subnetidlist0)
            }
        }
        if let launchProfileProtocolVersions = launchProfileProtocolVersions {
            var launchProfileProtocolVersionsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .launchProfileProtocolVersions)
            for launchprofileprotocolversionlist0 in launchProfileProtocolVersions {
                try launchProfileProtocolVersionsContainer.encode(launchprofileprotocolversionlist0)
            }
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let streamConfiguration = streamConfiguration {
            try encodeContainer.encode(streamConfiguration, forKey: .streamConfiguration)
        }
        if let studioComponentIds = studioComponentIds {
            var studioComponentIdsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .studioComponentIds)
            for launchprofilestudiocomponentidlist0 in studioComponentIds {
                try studioComponentIdsContainer.encode(launchprofilestudiocomponentidlist0)
            }
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, tags0) in tags {
                try tagsContainer.encode(tags0, forKey: Key(stringValue: dictKey0))
            }
        }
    }
}