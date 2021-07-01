// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateLaunchConfigurationInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateLaunchConfigurationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateLaunchConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateLaunchConfigurationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateLaunchConfigurationInput>
    public typealias MOutput = OperationOutput<UpdateLaunchConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateLaunchConfigurationOutputError>
}

public struct UpdateLaunchConfigurationInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateLaunchConfigurationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateLaunchConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateLaunchConfigurationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateLaunchConfigurationInput>
    public typealias MOutput = OperationOutput<UpdateLaunchConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateLaunchConfigurationOutputError>
}

public struct UpdateLaunchConfigurationInputBodyMiddleware: Middleware {
    public let id: String = "UpdateLaunchConfigurationInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateLaunchConfigurationInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateLaunchConfigurationOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateLaunchConfigurationInput>
    public typealias MOutput = OperationOutput<UpdateLaunchConfigurationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateLaunchConfigurationOutputError>
}

extension UpdateLaunchConfigurationInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case copyPrivateIp
        case copyTags
        case launchDisposition
        case licensing
        case name
        case sourceServerID
        case targetInstanceTypeRightSizingMethod
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let copyPrivateIp = copyPrivateIp {
            try encodeContainer.encode(copyPrivateIp, forKey: .copyPrivateIp)
        }
        if let copyTags = copyTags {
            try encodeContainer.encode(copyTags, forKey: .copyTags)
        }
        if let launchDisposition = launchDisposition {
            try encodeContainer.encode(launchDisposition.rawValue, forKey: .launchDisposition)
        }
        if let licensing = licensing {
            try encodeContainer.encode(licensing, forKey: .licensing)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let sourceServerID = sourceServerID {
            try encodeContainer.encode(sourceServerID, forKey: .sourceServerID)
        }
        if let targetInstanceTypeRightSizingMethod = targetInstanceTypeRightSizingMethod {
            try encodeContainer.encode(targetInstanceTypeRightSizingMethod.rawValue, forKey: .targetInstanceTypeRightSizingMethod)
        }
    }
}