// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribePermissionSetProvisioningStatusInputHeadersMiddleware: Middleware {
    public let id: String = "DescribePermissionSetProvisioningStatusInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribePermissionSetProvisioningStatusInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribePermissionSetProvisioningStatusOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribePermissionSetProvisioningStatusInput>
    public typealias MOutput = OperationOutput<DescribePermissionSetProvisioningStatusOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribePermissionSetProvisioningStatusOutputError>
}

public struct DescribePermissionSetProvisioningStatusInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribePermissionSetProvisioningStatusInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribePermissionSetProvisioningStatusInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribePermissionSetProvisioningStatusOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribePermissionSetProvisioningStatusInput>
    public typealias MOutput = OperationOutput<DescribePermissionSetProvisioningStatusOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribePermissionSetProvisioningStatusOutputError>
}

public struct DescribePermissionSetProvisioningStatusInputBodyMiddleware: Middleware {
    public let id: String = "DescribePermissionSetProvisioningStatusInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribePermissionSetProvisioningStatusInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribePermissionSetProvisioningStatusOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribePermissionSetProvisioningStatusInput>
    public typealias MOutput = OperationOutput<DescribePermissionSetProvisioningStatusOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribePermissionSetProvisioningStatusOutputError>
}

extension DescribePermissionSetProvisioningStatusInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case instanceArn = "InstanceArn"
        case provisionPermissionSetRequestId = "ProvisionPermissionSetRequestId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let instanceArn = instanceArn {
            try encodeContainer.encode(instanceArn, forKey: .instanceArn)
        }
        if let provisionPermissionSetRequestId = provisionPermissionSetRequestId {
            try encodeContainer.encode(provisionPermissionSetRequestId, forKey: .provisionPermissionSetRequestId)
        }
    }
}