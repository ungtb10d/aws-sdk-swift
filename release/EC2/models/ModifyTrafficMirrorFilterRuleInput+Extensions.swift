// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ModifyTrafficMirrorFilterRuleInputHeadersMiddleware: Middleware {
    public let id: String = "ModifyTrafficMirrorFilterRuleInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyTrafficMirrorFilterRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyTrafficMirrorFilterRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ModifyTrafficMirrorFilterRuleInput>
    public typealias MOutput = OperationOutput<ModifyTrafficMirrorFilterRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyTrafficMirrorFilterRuleOutputError>
}

public struct ModifyTrafficMirrorFilterRuleInputQueryItemMiddleware: Middleware {
    public let id: String = "ModifyTrafficMirrorFilterRuleInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyTrafficMirrorFilterRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyTrafficMirrorFilterRuleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ModifyTrafficMirrorFilterRuleInput>
    public typealias MOutput = OperationOutput<ModifyTrafficMirrorFilterRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyTrafficMirrorFilterRuleOutputError>
}

public struct ModifyTrafficMirrorFilterRuleInputBodyMiddleware: Middleware {
    public let id: String = "ModifyTrafficMirrorFilterRuleInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyTrafficMirrorFilterRuleInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyTrafficMirrorFilterRuleOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ModifyTrafficMirrorFilterRuleInput>
    public typealias MOutput = OperationOutput<ModifyTrafficMirrorFilterRuleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyTrafficMirrorFilterRuleOutputError>
}

extension ModifyTrafficMirrorFilterRuleInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let description = description {
            try container.encode(description, forKey: Key("Description"))
        }
        if let destinationCidrBlock = destinationCidrBlock {
            try container.encode(destinationCidrBlock, forKey: Key("DestinationCidrBlock"))
        }
        if let destinationPortRange = destinationPortRange {
            try container.encode(destinationPortRange, forKey: Key("DestinationPortRange"))
        }
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if `protocol` != 0 {
            try container.encode(`protocol`, forKey: Key("Protocol"))
        }
        if let removeFields = removeFields {
            if !removeFields.isEmpty {
                for (index0, trafficmirrorfilterrulefield0) in removeFields.enumerated() {
                    var removeFieldsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("RemoveField.\(index0.advanced(by: 1))"))
                    try removeFieldsContainer0.encode(trafficmirrorfilterrulefield0, forKey: Key(""))
                }
            }
        }
        if let ruleAction = ruleAction {
            try container.encode(ruleAction, forKey: Key("RuleAction"))
        }
        if ruleNumber != 0 {
            try container.encode(ruleNumber, forKey: Key("RuleNumber"))
        }
        if let sourceCidrBlock = sourceCidrBlock {
            try container.encode(sourceCidrBlock, forKey: Key("SourceCidrBlock"))
        }
        if let sourcePortRange = sourcePortRange {
            try container.encode(sourcePortRange, forKey: Key("SourcePortRange"))
        }
        if let trafficDirection = trafficDirection {
            try container.encode(trafficDirection, forKey: Key("TrafficDirection"))
        }
        if let trafficMirrorFilterRuleId = trafficMirrorFilterRuleId {
            try container.encode(trafficMirrorFilterRuleId, forKey: Key("TrafficMirrorFilterRuleId"))
        }
        try container.encode("ModifyTrafficMirrorFilterRule", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}