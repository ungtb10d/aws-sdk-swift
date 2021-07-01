// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>An object that contains details about when a principal in the reported AWS Organizations entity
///          last attempted to access an AWS service. A principal can be an IAM user, an IAM role,
///          or the AWS account root user within the reported Organizations entity.</p>
///          <p>This data type is a response element in the <a>GetOrganizationsAccessReport</a> operation.</p>
public struct AccessDetail: Equatable {
    /// <p>The path of the Organizations entity (root, organizational unit, or account) from which an
    ///          authenticated principal last attempted to access the service. AWS does not report
    ///          unauthenticated requests.</p>
    ///          <p>This field is null if no principals (IAM users, IAM roles, or root users) in the
    ///          reported Organizations entity attempted to access the service within the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period">reporting period</a>.</p>
    public let entityPath: String?
    /// <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time
    ///             format</a>, when an authenticated principal most recently attempted to access the
    ///          service. AWS does not report unauthenticated requests.</p>
    ///          <p>This field is null if no principals in the reported Organizations entity attempted to access the
    ///          service within the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period">reporting period</a>.</p>
    public let lastAuthenticatedTime: Date?
    /// <p>The Region where the last service access attempt occurred.</p>
    ///          <p>This field is null if no principals in the reported Organizations entity attempted to access the
    ///          service within the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period">reporting period</a>.</p>
    public let region: String?
    /// <p>The name of the service in which access was attempted.</p>
    public let serviceName: String?
    /// <p>The namespace of the service in which access was attempted.</p>
    ///          <p>To learn the service namespace of a service, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html">Actions, resources, and condition keys for AWS services</a> in the
    ///             <i>Service Authorization Reference</i>. Choose the name of the service to
    ///          view details for that service. In the first paragraph, find the service prefix. For
    ///          example, <code>(service prefix: a4b)</code>. For more information about service namespaces,
    ///          see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">AWS
    ///             service namespaces</a> in the <i>AWS General Reference</i>.</p>
    public let serviceNamespace: String?
    /// <p>The number of accounts with authenticated principals (root users, IAM users, and IAM
    ///          roles) that attempted to access the service in the reporting period.</p>
    public let totalAuthenticatedEntities: Int?

    public init (
        entityPath: String? = nil,
        lastAuthenticatedTime: Date? = nil,
        region: String? = nil,
        serviceName: String? = nil,
        serviceNamespace: String? = nil,
        totalAuthenticatedEntities: Int? = nil
    )
    {
        self.entityPath = entityPath
        self.lastAuthenticatedTime = lastAuthenticatedTime
        self.region = region
        self.serviceName = serviceName
        self.serviceNamespace = serviceNamespace
        self.totalAuthenticatedEntities = totalAuthenticatedEntities
    }
}

extension AccessDetail: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AccessDetail(entityPath: \(String(describing: entityPath)), lastAuthenticatedTime: \(String(describing: lastAuthenticatedTime)), region: \(String(describing: region)), serviceName: \(String(describing: serviceName)), serviceNamespace: \(String(describing: serviceNamespace)), totalAuthenticatedEntities: \(String(describing: totalAuthenticatedEntities)))"}
}