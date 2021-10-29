# CodeStarClientProtocol

AWS CodeStar This is the API reference for AWS CodeStar. This reference provides descriptions of the operations and data types for the AWS CodeStar API along with usage examples. You can use the AWS CodeStar API to work with: Projects and their resources, by calling the following:

``` swift
public protocol CodeStarClientProtocol 
```

  - DeleteProject, which deletes a project.

  - DescribeProject, which lists the attributes of a project.

  - ListProjects, which lists all projects associated with your AWS account.

  - ListResources, which lists the resources associated with a project.

  - ListTagsForProject, which lists the tags associated with a project.

  - TagProject, which adds tags to a project.

  - UntagProject, which removes tags from a project.

  - UpdateProject, which updates the attributes of a project.

Teams and team members, by calling the following:

  - AssociateTeamMember, which adds an IAM user to the team for a project.

  - DisassociateTeamMember, which removes an IAM user from the team for a project.

  - ListTeamMembers, which lists all the IAM users in the team for a project, including their roles and attributes.

  - UpdateTeamMember, which updates a team member's attributes in a project.

Users, by calling the following:

  - CreateUserProfile, which creates a user profile that contains data associated with the user across all projects.

  - DeleteUserProfile, which deletes all user profile information across all projects.

  - DescribeUserProfile, which describes the profile of a user.

  - ListUserProfiles, which lists all user profiles.

  - UpdateUserProfile, which updates the profile for a user.

## Requirements

### associateTeamMember(input:completion:)

Adds an IAM user to the team for an AWS CodeStar project.

``` swift
func associateTeamMember(input: AssociateTeamMemberInput, completion: @escaping (ClientRuntime.SdkResult<AssociateTeamMemberOutputResponse, AssociateTeamMemberOutputError>) -> Void)
```

### createProject(input:completion:)

Creates a project, including project resources. This action creates a project based on a submitted project request. A set of source code files and a toolchain template file can be included with the project request. If these are not provided, an empty project is created.

``` swift
func createProject(input: CreateProjectInput, completion: @escaping (ClientRuntime.SdkResult<CreateProjectOutputResponse, CreateProjectOutputError>) -> Void)
```

### createUserProfile(input:completion:)

Creates a profile for a user that includes user preferences, such as the display name and email address assocciated with the user, in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar.

``` swift
func createUserProfile(input: CreateUserProfileInput, completion: @escaping (ClientRuntime.SdkResult<CreateUserProfileOutputResponse, CreateUserProfileOutputError>) -> Void)
```

### deleteProject(input:completion:)

Deletes a project, including project resources. Does not delete users associated with the project, but does delete the IAM roles that allowed access to the project.

``` swift
func deleteProject(input: DeleteProjectInput, completion: @escaping (ClientRuntime.SdkResult<DeleteProjectOutputResponse, DeleteProjectOutputError>) -> Void)
```

### deleteUserProfile(input:completion:)

Deletes a user profile in AWS CodeStar, including all personal preference data associated with that profile, such as display name and email address. It does not delete the history of that user, for example the history of commits made by that user.

``` swift
func deleteUserProfile(input: DeleteUserProfileInput, completion: @escaping (ClientRuntime.SdkResult<DeleteUserProfileOutputResponse, DeleteUserProfileOutputError>) -> Void)
```

### describeProject(input:completion:)

Describes a project and its resources.

``` swift
func describeProject(input: DescribeProjectInput, completion: @escaping (ClientRuntime.SdkResult<DescribeProjectOutputResponse, DescribeProjectOutputError>) -> Void)
```

### describeUserProfile(input:completion:)

Describes a user in AWS CodeStar and the user attributes across all projects.

``` swift
func describeUserProfile(input: DescribeUserProfileInput, completion: @escaping (ClientRuntime.SdkResult<DescribeUserProfileOutputResponse, DescribeUserProfileOutputError>) -> Void)
```

### disassociateTeamMember(input:completion:)

Removes a user from a project. Removing a user from a project also removes the IAM policies from that user that allowed access to the project and its resources. Disassociating a team member does not remove that user's profile from AWS CodeStar. It does not remove the user from IAM.

``` swift
func disassociateTeamMember(input: DisassociateTeamMemberInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateTeamMemberOutputResponse, DisassociateTeamMemberOutputError>) -> Void)
```

### listProjects(input:completion:)

Lists all projects in AWS CodeStar associated with your AWS account.

``` swift
func listProjects(input: ListProjectsInput, completion: @escaping (ClientRuntime.SdkResult<ListProjectsOutputResponse, ListProjectsOutputError>) -> Void)
```

### listResources(input:completion:)

Lists resources associated with a project in AWS CodeStar.

``` swift
func listResources(input: ListResourcesInput, completion: @escaping (ClientRuntime.SdkResult<ListResourcesOutputResponse, ListResourcesOutputError>) -> Void)
```

### listTagsForProject(input:completion:)

Gets the tags for a project.

``` swift
func listTagsForProject(input: ListTagsForProjectInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForProjectOutputResponse, ListTagsForProjectOutputError>) -> Void)
```

### listTeamMembers(input:completion:)

Lists all team members associated with a project.

``` swift
func listTeamMembers(input: ListTeamMembersInput, completion: @escaping (ClientRuntime.SdkResult<ListTeamMembersOutputResponse, ListTeamMembersOutputError>) -> Void)
```

### listUserProfiles(input:completion:)

Lists all the user profiles configured for your AWS account in AWS CodeStar.

``` swift
func listUserProfiles(input: ListUserProfilesInput, completion: @escaping (ClientRuntime.SdkResult<ListUserProfilesOutputResponse, ListUserProfilesOutputError>) -> Void)
```

### tagProject(input:completion:)

Adds tags to a project.

``` swift
func tagProject(input: TagProjectInput, completion: @escaping (ClientRuntime.SdkResult<TagProjectOutputResponse, TagProjectOutputError>) -> Void)
```

### untagProject(input:completion:)

Removes tags from a project.

``` swift
func untagProject(input: UntagProjectInput, completion: @escaping (ClientRuntime.SdkResult<UntagProjectOutputResponse, UntagProjectOutputError>) -> Void)
```

### updateProject(input:completion:)

Updates a project in AWS CodeStar.

``` swift
func updateProject(input: UpdateProjectInput, completion: @escaping (ClientRuntime.SdkResult<UpdateProjectOutputResponse, UpdateProjectOutputError>) -> Void)
```

### updateTeamMember(input:completion:)

Updates a team member's attributes in an AWS CodeStar project. For example, you can change a team member's role in the project, or change whether they have remote access to project resources.

``` swift
func updateTeamMember(input: UpdateTeamMemberInput, completion: @escaping (ClientRuntime.SdkResult<UpdateTeamMemberOutputResponse, UpdateTeamMemberOutputError>) -> Void)
```

### updateUserProfile(input:completion:)

Updates a user's profile in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar.

``` swift
func updateUserProfile(input: UpdateUserProfileInput, completion: @escaping (ClientRuntime.SdkResult<UpdateUserProfileOutputResponse, UpdateUserProfileOutputError>) -> Void)
```