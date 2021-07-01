// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateLicenseManagerReportGeneratorInputHeadersMiddleware: Middleware {
    public let id: String = "CreateLicenseManagerReportGeneratorInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateLicenseManagerReportGeneratorInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateLicenseManagerReportGeneratorOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateLicenseManagerReportGeneratorInput>
    public typealias MOutput = OperationOutput<CreateLicenseManagerReportGeneratorOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateLicenseManagerReportGeneratorOutputError>
}

public struct CreateLicenseManagerReportGeneratorInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateLicenseManagerReportGeneratorInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateLicenseManagerReportGeneratorInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateLicenseManagerReportGeneratorOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateLicenseManagerReportGeneratorInput>
    public typealias MOutput = OperationOutput<CreateLicenseManagerReportGeneratorOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateLicenseManagerReportGeneratorOutputError>
}

public struct CreateLicenseManagerReportGeneratorInputBodyMiddleware: Middleware {
    public let id: String = "CreateLicenseManagerReportGeneratorInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateLicenseManagerReportGeneratorInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateLicenseManagerReportGeneratorOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateLicenseManagerReportGeneratorInput>
    public typealias MOutput = OperationOutput<CreateLicenseManagerReportGeneratorOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateLicenseManagerReportGeneratorOutputError>
}

extension CreateLicenseManagerReportGeneratorInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case description = "Description"
        case reportContext = "ReportContext"
        case reportFrequency = "ReportFrequency"
        case reportGeneratorName = "ReportGeneratorName"
        case tags = "Tags"
        case type = "Type"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let clientToken = clientToken {
            try encodeContainer.encode(clientToken, forKey: .clientToken)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let reportContext = reportContext {
            try encodeContainer.encode(reportContext, forKey: .reportContext)
        }
        if let reportFrequency = reportFrequency {
            try encodeContainer.encode(reportFrequency, forKey: .reportFrequency)
        }
        if let reportGeneratorName = reportGeneratorName {
            try encodeContainer.encode(reportGeneratorName, forKey: .reportGeneratorName)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for taglist0 in tags {
                try tagsContainer.encode(taglist0)
            }
        }
        if let type = type {
            var typeContainer = encodeContainer.nestedUnkeyedContainer(forKey: .type)
            for reporttypelist0 in type {
                try typeContainer.encode(reporttypelist0.rawValue)
            }
        }
    }
}