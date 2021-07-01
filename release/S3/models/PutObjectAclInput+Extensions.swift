// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutObjectAclInputHeadersMiddleware: Middleware {
    public let id: String = "PutObjectAclInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutObjectAclInput>,
                  next: H) -> Swift.Result<OperationOutput<PutObjectAclOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let aCL = input.operationInput.aCL {
            input.builder.withHeader(name: "x-amz-acl", value: String(aCL.rawValue))
        }
        if let contentMD5 = input.operationInput.contentMD5 {
            input.builder.withHeader(name: "Content-MD5", value: String(contentMD5))
        }
        if let expectedBucketOwner = input.operationInput.expectedBucketOwner {
            input.builder.withHeader(name: "x-amz-expected-bucket-owner", value: String(expectedBucketOwner))
        }
        if let grantFullControl = input.operationInput.grantFullControl {
            input.builder.withHeader(name: "x-amz-grant-full-control", value: String(grantFullControl))
        }
        if let grantRead = input.operationInput.grantRead {
            input.builder.withHeader(name: "x-amz-grant-read", value: String(grantRead))
        }
        if let grantReadACP = input.operationInput.grantReadACP {
            input.builder.withHeader(name: "x-amz-grant-read-acp", value: String(grantReadACP))
        }
        if let grantWrite = input.operationInput.grantWrite {
            input.builder.withHeader(name: "x-amz-grant-write", value: String(grantWrite))
        }
        if let grantWriteACP = input.operationInput.grantWriteACP {
            input.builder.withHeader(name: "x-amz-grant-write-acp", value: String(grantWriteACP))
        }
        if let requestPayer = input.operationInput.requestPayer {
            input.builder.withHeader(name: "x-amz-request-payer", value: String(requestPayer.rawValue))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutObjectAclInput>
    public typealias MOutput = OperationOutput<PutObjectAclOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutObjectAclOutputError>
}

public struct PutObjectAclInputQueryItemMiddleware: Middleware {
    public let id: String = "PutObjectAclInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutObjectAclInput>,
                  next: H) -> Swift.Result<OperationOutput<PutObjectAclOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        input.builder.withQueryItem(URLQueryItem(name: "acl", value: nil))
        if let versionId = input.operationInput.versionId {
            let versionIdQueryItem = URLQueryItem(name: "versionId".urlPercentEncoding(), value: String(versionId).urlPercentEncoding())
            input.builder.withQueryItem(versionIdQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutObjectAclInput>
    public typealias MOutput = OperationOutput<PutObjectAclOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutObjectAclOutputError>
}

public struct PutObjectAclInputBodyMiddleware: Middleware {
    public let id: String = "PutObjectAclInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutObjectAclInput>,
                  next: H) -> Swift.Result<OperationOutput<PutObjectAclOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let accessControlPolicy = input.operationInput.accessControlPolicy {
            do {
                let encoder = context.getEncoder()
                let data = try encoder.encode(accessControlPolicy)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            } catch let err {
                return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
            }
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutObjectAclInput>
    public typealias MOutput = OperationOutput<PutObjectAclOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutObjectAclOutputError>
}

extension PutObjectAclInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case accessControlPolicy = "AccessControlPolicy"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: Key("xmlns"))
        }
        if let accessControlPolicy = accessControlPolicy {
            try container.encode(accessControlPolicy, forKey: Key("AccessControlPolicy"))
        }
    }
}