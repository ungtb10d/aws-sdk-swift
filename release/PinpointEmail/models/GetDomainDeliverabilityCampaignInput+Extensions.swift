// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetDomainDeliverabilityCampaignInputHeadersMiddleware: Middleware {
    public let id: String = "GetDomainDeliverabilityCampaignInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDomainDeliverabilityCampaignInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDomainDeliverabilityCampaignOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetDomainDeliverabilityCampaignInput>
    public typealias MOutput = OperationOutput<GetDomainDeliverabilityCampaignOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDomainDeliverabilityCampaignOutputError>
}

public struct GetDomainDeliverabilityCampaignInputQueryItemMiddleware: Middleware {
    public let id: String = "GetDomainDeliverabilityCampaignInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDomainDeliverabilityCampaignInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDomainDeliverabilityCampaignOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetDomainDeliverabilityCampaignInput>
    public typealias MOutput = OperationOutput<GetDomainDeliverabilityCampaignOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDomainDeliverabilityCampaignOutputError>
}

extension GetDomainDeliverabilityCampaignInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}