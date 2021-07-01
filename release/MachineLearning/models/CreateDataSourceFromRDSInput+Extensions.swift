// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateDataSourceFromRDSInputHeadersMiddleware: Middleware {
    public let id: String = "CreateDataSourceFromRDSInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateDataSourceFromRDSInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateDataSourceFromRDSOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateDataSourceFromRDSInput>
    public typealias MOutput = OperationOutput<CreateDataSourceFromRDSOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateDataSourceFromRDSOutputError>
}

public struct CreateDataSourceFromRDSInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateDataSourceFromRDSInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateDataSourceFromRDSInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateDataSourceFromRDSOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateDataSourceFromRDSInput>
    public typealias MOutput = OperationOutput<CreateDataSourceFromRDSOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateDataSourceFromRDSOutputError>
}

public struct CreateDataSourceFromRDSInputBodyMiddleware: Middleware {
    public let id: String = "CreateDataSourceFromRDSInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateDataSourceFromRDSInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateDataSourceFromRDSOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateDataSourceFromRDSInput>
    public typealias MOutput = OperationOutput<CreateDataSourceFromRDSOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateDataSourceFromRDSOutputError>
}

extension CreateDataSourceFromRDSInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case computeStatistics = "ComputeStatistics"
        case dataSourceId = "DataSourceId"
        case dataSourceName = "DataSourceName"
        case rDSData = "RDSData"
        case roleARN = "RoleARN"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if computeStatistics != false {
            try encodeContainer.encode(computeStatistics, forKey: .computeStatistics)
        }
        if let dataSourceId = dataSourceId {
            try encodeContainer.encode(dataSourceId, forKey: .dataSourceId)
        }
        if let dataSourceName = dataSourceName {
            try encodeContainer.encode(dataSourceName, forKey: .dataSourceName)
        }
        if let rDSData = rDSData {
            try encodeContainer.encode(rDSData, forKey: .rDSData)
        }
        if let roleARN = roleARN {
            try encodeContainer.encode(roleARN, forKey: .roleARN)
        }
    }
}