// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdatePatchBaselineInput: Equatable {
    /// <p>A set of rules used to include patches in the baseline.</p>
    public let approvalRules: PatchRuleGroup?
    /// <p>A list of explicitly approved patches for the baseline.</p>
    ///          <p>For information about accepted formats for lists of approved patches and rejected patches,
    ///                         see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html">About
    ///                         package name formats for approved and rejected patch lists</a> in the <i>AWS Systems Manager User Guide</i>.</p>
    public let approvedPatches: [String]?
    /// <p>Assigns a new compliance severity level to an existing patch baseline.</p>
    public let approvedPatchesComplianceLevel: PatchComplianceLevel?
    /// <p>Indicates whether the list of approved patches includes non-security updates that should be
    ///    applied to the instances. The default value is 'false'. Applies to Linux instances only.</p>
    public let approvedPatchesEnableNonSecurity: Bool
    /// <p>The ID of the patch baseline to update.</p>
    public let baselineId: String?
    /// <p>A description of the patch baseline.</p>
    public let description: String?
    /// <p>A set of global filters used to include patches in the baseline.</p>
    public let globalFilters: PatchFilterGroup?
    /// <p>The name of the patch baseline.</p>
    public let name: String?
    /// <p>A list of explicitly rejected patches for the baseline.</p>
    ///          <p>For information about accepted formats for lists of approved patches and rejected patches,
    ///                         see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html">About
    ///                         package name formats for approved and rejected patch lists</a> in the <i>AWS Systems Manager User Guide</i>.</p>
    public let rejectedPatches: [String]?
    /// <p>The action for Patch Manager to take on patches included in the RejectedPackages
    ///    list.</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <b>ALLOW_AS_DEPENDENCY</b>: A package in the Rejected patches
    ///      list is installed only if it is a dependency of another package. It is considered compliant
    ///      with the patch baseline, and its status is reported as <i>InstalledOther</i>.
    ///      This is the default action if no option is specified.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>BLOCK</b>: Packages in the RejectedPatches list, and packages
    ///      that include them as dependencies, are not installed under any circumstances. If a package was
    ///      installed before it was added to the Rejected patches list, it is considered non-compliant with
    ///      the patch baseline, and its status is reported as
    ///      <i>InstalledRejected</i>.</p>
    ///             </li>
    ///          </ul>
    public let rejectedPatchesAction: PatchAction?
    /// <p>If True, then all fields that are required by the CreatePatchBaseline action are also
    ///    required for this API request. Optional fields that are not specified are set to null.</p>
    public let replace: Bool
    /// <p>Information about the patches to use to update the instances, including target operating
    ///    systems and source repositories. Applies to Linux instances only.</p>
    public let sources: [PatchSource]?

    public init (
        approvalRules: PatchRuleGroup? = nil,
        approvedPatches: [String]? = nil,
        approvedPatchesComplianceLevel: PatchComplianceLevel? = nil,
        approvedPatchesEnableNonSecurity: Bool = false,
        baselineId: String? = nil,
        description: String? = nil,
        globalFilters: PatchFilterGroup? = nil,
        name: String? = nil,
        rejectedPatches: [String]? = nil,
        rejectedPatchesAction: PatchAction? = nil,
        replace: Bool = false,
        sources: [PatchSource]? = nil
    )
    {
        self.approvalRules = approvalRules
        self.approvedPatches = approvedPatches
        self.approvedPatchesComplianceLevel = approvedPatchesComplianceLevel
        self.approvedPatchesEnableNonSecurity = approvedPatchesEnableNonSecurity
        self.baselineId = baselineId
        self.description = description
        self.globalFilters = globalFilters
        self.name = name
        self.rejectedPatches = rejectedPatches
        self.rejectedPatchesAction = rejectedPatchesAction
        self.replace = replace
        self.sources = sources
    }
}

extension UpdatePatchBaselineInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdatePatchBaselineInput(approvalRules: \(String(describing: approvalRules)), approvedPatches: \(String(describing: approvedPatches)), approvedPatchesComplianceLevel: \(String(describing: approvedPatchesComplianceLevel)), approvedPatchesEnableNonSecurity: \(String(describing: approvedPatchesEnableNonSecurity)), baselineId: \(String(describing: baselineId)), description: \(String(describing: description)), globalFilters: \(String(describing: globalFilters)), name: \(String(describing: name)), rejectedPatches: \(String(describing: rejectedPatches)), rejectedPatchesAction: \(String(describing: rejectedPatchesAction)), replace: \(String(describing: replace)), sources: \(String(describing: sources)))"}
}