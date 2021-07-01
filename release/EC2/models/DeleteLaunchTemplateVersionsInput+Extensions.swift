// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteLaunchTemplateVersionsInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteLaunchTemplateVersionsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteLaunchTemplateVersionsInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteLaunchTemplateVersionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteLaunchTemplateVersionsInput>
    public typealias MOutput = OperationOutput<DeleteLaunchTemplateVersionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteLaunchTemplateVersionsOutputError>
}

public struct DeleteLaunchTemplateVersionsInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteLaunchTemplateVersionsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteLaunchTemplateVersionsInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteLaunchTemplateVersionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteLaunchTemplateVersionsInput>
    public typealias MOutput = OperationOutput<DeleteLaunchTemplateVersionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteLaunchTemplateVersionsOutputError>
}

public struct DeleteLaunchTemplateVersionsInputBodyMiddleware: Middleware {
    public let id: String = "DeleteLaunchTemplateVersionsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteLaunchTemplateVersionsInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteLaunchTemplateVersionsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteLaunchTemplateVersionsInput>
    public typealias MOutput = OperationOutput<DeleteLaunchTemplateVersionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteLaunchTemplateVersionsOutputError>
}

extension DeleteLaunchTemplateVersionsInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if let launchTemplateId = launchTemplateId {
            try container.encode(launchTemplateId, forKey: Key("LaunchTemplateId"))
        }
        if let launchTemplateName = launchTemplateName {
            try container.encode(launchTemplateName, forKey: Key("LaunchTemplateName"))
        }
        if let versions = versions {
            if !versions.isEmpty {
                for (index0, string0) in versions.enumerated() {
                    var versionsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("LaunchTemplateVersion.\(index0.advanced(by: 1))"))
                    try versionsContainer0.encode(string0, forKey: Key(""))
                }
            }
        }
        try container.encode("DeleteLaunchTemplateVersions", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}