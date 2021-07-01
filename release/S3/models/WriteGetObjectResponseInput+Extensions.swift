// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct WriteGetObjectResponseInputHeadersMiddleware: Middleware {
    public let id: String = "WriteGetObjectResponseInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<WriteGetObjectResponseInput>,
                  next: H) -> Swift.Result<OperationOutput<WriteGetObjectResponseOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let acceptRanges = input.operationInput.acceptRanges {
            input.builder.withHeader(name: "x-amz-fwd-header-accept-ranges", value: String(acceptRanges))
        }
        input.builder.withHeader(name: "x-amz-fwd-header-x-amz-server-side-encryption-bucket-key-enabled", value: String(input.operationInput.bucketKeyEnabled))
        if let cacheControl = input.operationInput.cacheControl {
            input.builder.withHeader(name: "x-amz-fwd-header-Cache-Control", value: String(cacheControl))
        }
        if let contentDisposition = input.operationInput.contentDisposition {
            input.builder.withHeader(name: "x-amz-fwd-header-Content-Disposition", value: String(contentDisposition))
        }
        if let contentEncoding = input.operationInput.contentEncoding {
            input.builder.withHeader(name: "x-amz-fwd-header-Content-Encoding", value: String(contentEncoding))
        }
        if let contentLanguage = input.operationInput.contentLanguage {
            input.builder.withHeader(name: "x-amz-fwd-header-Content-Language", value: String(contentLanguage))
        }
        input.builder.withHeader(name: "Content-Length", value: String(input.operationInput.contentLength))
        if let contentRange = input.operationInput.contentRange {
            input.builder.withHeader(name: "x-amz-fwd-header-Content-Range", value: String(contentRange))
        }
        if let contentType = input.operationInput.contentType {
            input.builder.withHeader(name: "x-amz-fwd-header-Content-Type", value: String(contentType))
        }
        input.builder.withHeader(name: "x-amz-fwd-header-x-amz-delete-marker", value: String(input.operationInput.deleteMarker))
        if let eTag = input.operationInput.eTag {
            input.builder.withHeader(name: "x-amz-fwd-header-ETag", value: String(eTag))
        }
        if let errorCode = input.operationInput.errorCode {
            input.builder.withHeader(name: "x-amz-fwd-error-code", value: String(errorCode))
        }
        if let errorMessage = input.operationInput.errorMessage {
            input.builder.withHeader(name: "x-amz-fwd-error-message", value: String(errorMessage))
        }
        if let expiration = input.operationInput.expiration {
            input.builder.withHeader(name: "x-amz-fwd-header-x-amz-expiration", value: String(expiration))
        }
        if let expires = input.operationInput.expires {
            input.builder.withHeader(name: "x-amz-fwd-header-Expires", value: String(expires.rfc5322()))
        }
        if let lastModified = input.operationInput.lastModified {
            input.builder.withHeader(name: "x-amz-fwd-header-Last-Modified", value: String(lastModified.rfc5322()))
        }
        input.builder.withHeader(name: "x-amz-fwd-header-x-amz-missing-meta", value: String(input.operationInput.missingMeta))
        if let objectLockLegalHoldStatus = input.operationInput.objectLockLegalHoldStatus {
            input.builder.withHeader(name: "x-amz-fwd-header-x-amz-object-lock-legal-hold", value: String(objectLockLegalHoldStatus.rawValue))
        }
        if let objectLockMode = input.operationInput.objectLockMode {
            input.builder.withHeader(name: "x-amz-fwd-header-x-amz-object-lock-mode", value: String(objectLockMode.rawValue))
        }
        if let objectLockRetainUntilDate = input.operationInput.objectLockRetainUntilDate {
            input.builder.withHeader(name: "x-amz-fwd-header-x-amz-object-lock-retain-until-date", value: String(objectLockRetainUntilDate.iso8601WithoutFractionalSeconds()))
        }
        input.builder.withHeader(name: "x-amz-fwd-header-x-amz-mp-parts-count", value: String(input.operationInput.partsCount))
        if let replicationStatus = input.operationInput.replicationStatus {
            input.builder.withHeader(name: "x-amz-fwd-header-x-amz-replication-status", value: String(replicationStatus.rawValue))
        }
        if let requestCharged = input.operationInput.requestCharged {
            input.builder.withHeader(name: "x-amz-fwd-header-x-amz-request-charged", value: String(requestCharged.rawValue))
        }
        if let requestRoute = input.operationInput.requestRoute {
            input.builder.withHeader(name: "x-amz-request-route", value: String(requestRoute))
        }
        if let requestToken = input.operationInput.requestToken {
            input.builder.withHeader(name: "x-amz-request-token", value: String(requestToken))
        }
        if let restore = input.operationInput.restore {
            input.builder.withHeader(name: "x-amz-fwd-header-x-amz-restore", value: String(restore))
        }
        if let sSECustomerAlgorithm = input.operationInput.sSECustomerAlgorithm {
            input.builder.withHeader(name: "x-amz-fwd-header-x-amz-server-side-encryption-customer-algorithm", value: String(sSECustomerAlgorithm))
        }
        if let sSECustomerKeyMD5 = input.operationInput.sSECustomerKeyMD5 {
            input.builder.withHeader(name: "x-amz-fwd-header-x-amz-server-side-encryption-customer-key-MD5", value: String(sSECustomerKeyMD5))
        }
        if let sSEKMSKeyId = input.operationInput.sSEKMSKeyId {
            input.builder.withHeader(name: "x-amz-fwd-header-x-amz-server-side-encryption-aws-kms-key-id", value: String(sSEKMSKeyId))
        }
        if let serverSideEncryption = input.operationInput.serverSideEncryption {
            input.builder.withHeader(name: "x-amz-fwd-header-x-amz-server-side-encryption", value: String(serverSideEncryption.rawValue))
        }
        input.builder.withHeader(name: "x-amz-fwd-status", value: String(input.operationInput.statusCode))
        if let storageClass = input.operationInput.storageClass {
            input.builder.withHeader(name: "x-amz-fwd-header-x-amz-storage-class", value: String(storageClass.rawValue))
        }
        input.builder.withHeader(name: "x-amz-fwd-header-x-amz-tagging-count", value: String(input.operationInput.tagCount))
        if let versionId = input.operationInput.versionId {
            input.builder.withHeader(name: "x-amz-fwd-header-x-amz-version-id", value: String(versionId))
        }
        if let metadata = input.operationInput.metadata {
            for (prefixHeaderMapKey, prefixHeaderMapValue) in metadata {
                input.builder.withHeader(name: "x-amz-meta-\(prefixHeaderMapKey)", value: String(prefixHeaderMapValue))
            }
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<WriteGetObjectResponseInput>
    public typealias MOutput = OperationOutput<WriteGetObjectResponseOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<WriteGetObjectResponseOutputError>
}

public struct WriteGetObjectResponseInputQueryItemMiddleware: Middleware {
    public let id: String = "WriteGetObjectResponseInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<WriteGetObjectResponseInput>,
                  next: H) -> Swift.Result<OperationOutput<WriteGetObjectResponseOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        input.builder.withQueryItem(URLQueryItem(name: "x-id", value: "WriteGetObjectResponse"))
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<WriteGetObjectResponseInput>
    public typealias MOutput = OperationOutput<WriteGetObjectResponseOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<WriteGetObjectResponseOutputError>
}

public struct WriteGetObjectResponseInputBodyMiddleware: Middleware {
    public let id: String = "WriteGetObjectResponseInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<WriteGetObjectResponseInput>,
                  next: H) -> Swift.Result<OperationOutput<WriteGetObjectResponseOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let body = input.operationInput.body {
            let data = body
            let body = HttpBody.data(data)
            input.builder.withBody(body)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<WriteGetObjectResponseInput>
    public typealias MOutput = OperationOutput<WriteGetObjectResponseOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<WriteGetObjectResponseOutputError>
}

extension WriteGetObjectResponseInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case body = "Body"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: Key("xmlns"))
        }
        if let body = body {
            try container.encode(body, forKey: Key("body"))
        }
    }
}