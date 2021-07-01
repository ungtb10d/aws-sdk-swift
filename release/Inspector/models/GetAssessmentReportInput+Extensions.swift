// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetAssessmentReportInputHeadersMiddleware: Middleware {
    public let id: String = "GetAssessmentReportInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAssessmentReportInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAssessmentReportOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetAssessmentReportInput>
    public typealias MOutput = OperationOutput<GetAssessmentReportOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAssessmentReportOutputError>
}

public struct GetAssessmentReportInputQueryItemMiddleware: Middleware {
    public let id: String = "GetAssessmentReportInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAssessmentReportInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAssessmentReportOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetAssessmentReportInput>
    public typealias MOutput = OperationOutput<GetAssessmentReportOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAssessmentReportOutputError>
}

public struct GetAssessmentReportInputBodyMiddleware: Middleware {
    public let id: String = "GetAssessmentReportInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAssessmentReportInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAssessmentReportOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetAssessmentReportInput>
    public typealias MOutput = OperationOutput<GetAssessmentReportOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAssessmentReportOutputError>
}

extension GetAssessmentReportInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case assessmentRunArn
        case reportFileFormat
        case reportType
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let assessmentRunArn = assessmentRunArn {
            try encodeContainer.encode(assessmentRunArn, forKey: .assessmentRunArn)
        }
        if let reportFileFormat = reportFileFormat {
            try encodeContainer.encode(reportFileFormat.rawValue, forKey: .reportFileFormat)
        }
        if let reportType = reportType {
            try encodeContainer.encode(reportType.rawValue, forKey: .reportType)
        }
    }
}