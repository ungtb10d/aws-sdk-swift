// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS Identity and Access Management Roles Anywhere provides a secure way for your workloads such as servers, containers, and applications running outside of AWS to obtain Temporary AWS credentials. Your workloads can use the same IAM policies and roles that you have configured with native AWS applications to access AWS resources. Using IAM Roles Anywhere will eliminate the need to manage long term credentials for workloads running outside of AWS. To use IAM Roles Anywhere customer workloads will need to use X.509 certificates issued by their Certificate Authority (CA) . The Certificate Authority (CA) needs to be registered with IAM Roles Anywhere as a trust anchor to establish trust between customer PKI and IAM Roles Anywhere. Customers who do not manage their own PKI system can use AWS Certificate Manager Private Certificate Authority (ACM PCA) to create a Certificate Authority and use that to establish trust with IAM Roles Anywhere This guide describes the IAM rolesanywhere operations that you can call programmatically. For general information about IAM Roles Anywhere see [https://docs.aws.amazon.com/](https://docs.aws.amazon.com/)
public protocol RolesAnywhereClientProtocol {
    /// Creates a profile. A profile is configuration resource to list the roles that RolesAnywhere service is trusted to assume. In addition, by applying a profile you can intersect permissions with IAM managed policies. Required permissions: rolesanywhere:CreateProfile.
    func createProfile(input: CreateProfileInput) async throws -> CreateProfileOutputResponse
    /// Creates a trust anchor. You establish trust between IAM Roles Anywhere and your certificate authority (CA) by configuring a trust anchor. A Trust Anchor is defined either as a reference to a AWS Certificate Manager Private Certificate Authority (ACM PCA), or by uploading a Certificate Authority (CA) certificate. Your AWS workloads can authenticate with the trust anchor using certificates issued by the trusted Certificate Authority (CA) in exchange for temporary AWS credentials. Required permissions: rolesanywhere:CreateTrustAnchor.
    func createTrustAnchor(input: CreateTrustAnchorInput) async throws -> CreateTrustAnchorOutputResponse
    /// Deletes a certificate revocation list (CRL). Required permissions: rolesanywhere:DeleteCrl.
    func deleteCrl(input: DeleteCrlInput) async throws -> DeleteCrlOutputResponse
    /// Deletes a profile. Required permissions: rolesanywhere:DeleteProfile.
    func deleteProfile(input: DeleteProfileInput) async throws -> DeleteProfileOutputResponse
    /// Deletes a trust anchor. Required permissions: rolesanywhere:DeleteTrustAnchor.
    func deleteTrustAnchor(input: DeleteTrustAnchorInput) async throws -> DeleteTrustAnchorOutputResponse
    /// Disables a certificate revocation list (CRL). Required permissions: rolesanywhere:DisableCrl.
    func disableCrl(input: DisableCrlInput) async throws -> DisableCrlOutputResponse
    /// Disables a profile. When disabled, [CreateSession](https://docs.aws.amazon.com/rolesanywhere/latest/APIReference/API_CreateSession.html) requests with this profile fail. Required permissions: rolesanywhere:DisableProfile.
    func disableProfile(input: DisableProfileInput) async throws -> DisableProfileOutputResponse
    /// Disables a trust anchor. When disabled, [CreateSession](https://docs.aws.amazon.com/rolesanywhere/latest/APIReference/API_CreateSession.html) requests specifying this trust anchor are unauthorized. Required permissions: rolesanywhere:DisableTrustAnchor.
    func disableTrustAnchor(input: DisableTrustAnchorInput) async throws -> DisableTrustAnchorOutputResponse
    /// Enables a certificate revocation list (CRL). When enabled, certificates stored in the CRL are unauthorized to receive session credentials. Required permissions: rolesanywhere:EnableCrl.
    func enableCrl(input: EnableCrlInput) async throws -> EnableCrlOutputResponse
    /// Enables the roles in a profile to receive session credentials in [CreateSession](https://docs.aws.amazon.com/rolesanywhere/latest/APIReference/API_CreateSession.html). Required permissions: rolesanywhere:EnableProfile.
    func enableProfile(input: EnableProfileInput) async throws -> EnableProfileOutputResponse
    /// Enables a trust anchor. When enabled, certificates in the trust anchor chain are authorized for trust validation. Required permissions: rolesanywhere:EnableTrustAnchor.
    func enableTrustAnchor(input: EnableTrustAnchorInput) async throws -> EnableTrustAnchorOutputResponse
    /// Gets a certificate revocation list (CRL). Required permissions: rolesanywhere:GetCrl.
    func getCrl(input: GetCrlInput) async throws -> GetCrlOutputResponse
    /// Gets a profile. Required permissions: rolesanywhere:GetProfile.
    func getProfile(input: GetProfileInput) async throws -> GetProfileOutputResponse
    /// Gets a Subject. A Subject associates a certificate identity with authentication attempts by CreateSession. The Subject resources stores audit information such as status of the last authentication attempt, the certificate data used in the attempt, and the last time the associated identity attempted authentication. Required permissions: rolesanywhere:GetSubject.
    func getSubject(input: GetSubjectInput) async throws -> GetSubjectOutputResponse
    /// Gets a trust anchor. Required permissions: rolesanywhere:GetTrustAnchor.
    func getTrustAnchor(input: GetTrustAnchorInput) async throws -> GetTrustAnchorOutputResponse
    /// Imports the certificate revocation list (CRL). CRl is a list of certificates that have been revoked by the issuing certificate Authority (CA). IAM Roles Anywhere validates against the crl list before issuing credentials. Required permissions: rolesanywhere:ImportCrl.
    func importCrl(input: ImportCrlInput) async throws -> ImportCrlOutputResponse
    /// Lists all Crls in the authenticated account and Amazon Web Services Region. Required permissions: rolesanywhere:ListCrls.
    func listCrls(input: ListCrlsInput) async throws -> ListCrlsOutputResponse
    /// Lists all profiles in the authenticated account and Amazon Web Services Region. Required permissions: rolesanywhere:ListProfiles.
    func listProfiles(input: ListProfilesInput) async throws -> ListProfilesOutputResponse
    /// Lists the subjects in the authenticated account and Amazon Web Services Region. Required permissions: rolesanywhere:ListSubjects.
    func listSubjects(input: ListSubjectsInput) async throws -> ListSubjectsOutputResponse
    /// Lists the tags attached to the resource. Required permissions: rolesanywhere:ListTagsForResource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Lists the trust anchors in the authenticated account and Amazon Web Services Region. Required permissions: rolesanywhere:ListTrustAnchors.
    func listTrustAnchors(input: ListTrustAnchorsInput) async throws -> ListTrustAnchorsOutputResponse
    /// Attaches tags to a resource. Required permissions: rolesanywhere:TagResource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes tags from the resource. Required permissions: rolesanywhere:UntagResource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the certificate revocation list (CRL). CRl is a list of certificates that have been revoked by the issuing certificate Authority (CA). IAM Roles Anywhere validates against the crl list before issuing credentials. Required permissions: rolesanywhere:UpdateCrl.
    func updateCrl(input: UpdateCrlInput) async throws -> UpdateCrlOutputResponse
    /// Updates the profile. A profile is configuration resource to list the roles that RolesAnywhere service is trusted to assume. In addition, by applying a profile you can scope-down permissions with IAM managed policies. Required permissions: rolesanywhere:UpdateProfile.
    func updateProfile(input: UpdateProfileInput) async throws -> UpdateProfileOutputResponse
    /// Updates the trust anchor.You establish trust between IAM Roles Anywhere and your certificate authority (CA) by configuring a trust anchor. A Trust Anchor is defined either as a reference to a AWS Certificate Manager Private Certificate Authority (ACM PCA), or by uploading a Certificate Authority (CA) certificate. Your AWS workloads can authenticate with the trust anchor using certificates issued by the trusted Certificate Authority (CA) in exchange for temporary AWS credentials. Required permissions: rolesanywhere:UpdateTrustAnchor.
    func updateTrustAnchor(input: UpdateTrustAnchorInput) async throws -> UpdateTrustAnchorOutputResponse
}

public enum RolesAnywhereClientTypes {}