USE [master]
GO
/****** Object:  Database [SeeYourTravel]    Script Date: 8/24/2015 8:26:36 AM ******/
CREATE DATABASE [SeeYourTravel]
GO
ALTER DATABASE [SeeYourTravel] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SeeYourTravel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SeeYourTravel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SeeYourTravel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SeeYourTravel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SeeYourTravel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SeeYourTravel] SET ARITHABORT OFF 
GO
ALTER DATABASE [SeeYourTravel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SeeYourTravel] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SeeYourTravel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SeeYourTravel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SeeYourTravel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SeeYourTravel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SeeYourTravel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SeeYourTravel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SeeYourTravel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SeeYourTravel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SeeYourTravel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SeeYourTravel] SET AUTO_UPDATE_STATISTICS_ASYNC ON 
GO
ALTER DATABASE [SeeYourTravel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SeeYourTravel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SeeYourTravel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SeeYourTravel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SeeYourTravel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SeeYourTravel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SeeYourTravel] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SeeYourTravel] SET  MULTI_USER 
GO
ALTER DATABASE [SeeYourTravel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SeeYourTravel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SeeYourTravel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SeeYourTravel] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SeeYourTravel]
GO
/****** Object:  User [SeeYourTravel]    Script Date: 8/24/2015 8:26:38 AM ******/
CREATE USER [SeeYourTravel] FOR LOGIN [SeeYourTravel] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [gd_execprocs]    Script Date: 8/24/2015 8:26:39 AM ******/
CREATE ROLE [gd_execprocs]
GO
/****** Object:  DatabaseRole [aspnet_WebEvent_FullAccess]    Script Date: 8/24/2015 8:26:40 AM ******/
CREATE ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_ReportingAccess]    Script Date: 8/24/2015 8:26:40 AM ******/
CREATE ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_FullAccess]    Script Date: 8/24/2015 8:26:40 AM ******/
CREATE ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_BasicAccess]    Script Date: 8/24/2015 8:26:41 AM ******/
CREATE ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_ReportingAccess]    Script Date: 8/24/2015 8:26:41 AM ******/
CREATE ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_FullAccess]    Script Date: 8/24/2015 8:26:41 AM ******/
CREATE ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_BasicAccess]    Script Date: 8/24/2015 8:26:42 AM ******/
CREATE ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_ReportingAccess]    Script Date: 8/24/2015 8:26:42 AM ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_FullAccess]    Script Date: 8/24/2015 8:26:42 AM ******/
CREATE ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_BasicAccess]    Script Date: 8/24/2015 8:26:43 AM ******/
CREATE ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_ReportingAccess]    Script Date: 8/24/2015 8:26:43 AM ******/
CREATE ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_FullAccess]    Script Date: 8/24/2015 8:26:43 AM ******/
CREATE ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_BasicAccess]    Script Date: 8/24/2015 8:26:44 AM ******/
CREATE ROLE [aspnet_Membership_BasicAccess]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [SeeYourTravel]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [SeeYourTravel]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SeeYourTravel]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [SeeYourTravel]
GO
ALTER ROLE [aspnet_Roles_BasicAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Roles_ReportingAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Profile_BasicAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Profile_ReportingAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_BasicAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_ReportingAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Membership_BasicAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
ALTER ROLE [aspnet_Membership_ReportingAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 8/24/2015 8:26:47 AM ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 8/24/2015 8:26:48 AM ******/
CREATE SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 8/24/2015 8:26:48 AM ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 8/24/2015 8:26:48 AM ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 8/24/2015 8:26:49 AM ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 8/24/2015 8:26:49 AM ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 8/24/2015 8:26:49 AM ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 8/24/2015 8:26:50 AM ******/
CREATE SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 8/24/2015 8:26:50 AM ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 8/24/2015 8:26:50 AM ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 8/24/2015 8:26:51 AM ******/
CREATE SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 8/24/2015 8:26:51 AM ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 8/24/2015 8:26:51 AM ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  FullTextCatalog [SeeYourTravel]    Script Date: 8/24/2015 8:26:52 AM ******/
CREATE FULLTEXT CATALOG [SeeYourTravel]WITH ACCENT_SENSITIVITY = ON
AS DEFAULT

GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  StoredProcedure [dbo].[GetFriendsLocations]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetFriendsLocations] 
	@UserID uniqueidentifier 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	select u.UserID, u.UserName, ul.Lat, ul.Lng, ul.[Time] from UserLocation ul
	inner join [User] u on ul.UserID = u.UserID
	where ul.Time = 
	(select max(ul2.[Time]) from UserLocation ul2 where ul2.UserID = ul.UserID )
END


GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_User_UserID]  DEFAULT (newid()),
	[UserName] [nvarchar](100) NOT NULL,
	[UserPassword] [nvarchar](100) NOT NULL,
	[FacebookId] [nvarchar](100) NULL,
	[Disabled] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLocation]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLocation](
	[UserLocationID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_UserLocation_UserLocationID]  DEFAULT (newid()),
	[UserID] [uniqueidentifier] NOT NULL,
	[Lat] [float] NOT NULL,
	[Lng] [float] NOT NULL,
	[Time] [datetime] NOT NULL CONSTRAINT [DF_UserLocation_Time]  DEFAULT (getdate()),
 CONSTRAINT [PK_UserLocation] PRIMARY KEY CLUSTERED 
(
	[UserLocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogin](
	[UserLoginID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_UserLogin_UserLoginID]  DEFAULT (newid()),
	[UserID] [uniqueidentifier] NOT NULL,
	[Time] [datetime] NOT NULL,
	[LoginType] [nvarchar](50) NOT NULL,
	[CallerIp] [nvarchar](max) NULL,
	[CallerAgent] [nvarchar](max) NULL,
	[CalledUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserLogin] PRIMARY KEY CLUSTERED 
(
	[UserLoginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserRoleID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[RoleID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 8/24/2015 8:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Applications_Index]    Script Date: 8/24/2015 8:26:52 AM ******/
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications]
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Membership_index]    Script Date: 8/24/2015 8:26:52 AM ******/
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership]
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Paths_index]    Script Date: 8/24/2015 8:26:52 AM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths]
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_PersonalizationPerUser_index1]    Script Date: 8/24/2015 8:26:52 AM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser]
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Roles_index1]    Script Date: 8/24/2015 8:26:52 AM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles]
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Users_Index]    Script Date: 8/24/2015 8:26:52 AM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users]
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
GO
INSERT [dbo].[User] ([UserID], [UserName], [UserPassword], [FacebookId], [Disabled]) VALUES (N'3d70c1c0-e191-4837-9fa7-3398c928efaf', N'Helen Tishchenko', N'2cdedf73-fac8-465e-ad18-68f8233a3a1b', N'889032304522286', 0)
GO
INSERT [dbo].[User] ([UserID], [UserName], [UserPassword], [FacebookId], [Disabled]) VALUES (N'91097101-658d-44f9-a534-4484209c8179', N'b', N'b', NULL, 0)
GO
INSERT [dbo].[User] ([UserID], [UserName], [UserPassword], [FacebookId], [Disabled]) VALUES (N'b057798c-6167-485c-b0c1-a40704faaad7', N'Oleksandr Turevskiy', N'5e91657c-1a5e-4719-b9fa-2e2f50176767', N'1152399981440766', 0)
GO
INSERT [dbo].[User] ([UserID], [UserName], [UserPassword], [FacebookId], [Disabled]) VALUES (N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', N'admin', N'manisfree', NULL, 0)
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2617d85f-9f51-4daf-a9f9-001e3a916aa3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:50:39.490' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'777bf451-765c-4dc5-b065-00750d522e87', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:17:18.700' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8e4f6a78-d929-444b-8799-007aaf83bafb', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:40:55.830' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'befce77a-3c25-4202-b3ef-009f22fd1882', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 09:02:20.993' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'01c722cb-ca28-4fda-bd48-00fc0fbab36e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:07:53.437' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'90598c0e-67a8-407e-bdac-012a0be210ea', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:49:45.183' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c5b87880-1749-4e35-a6e0-013bc76e5c53', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:13:23.973' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'45480da5-2c81-415c-b929-01877b8835ce', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-23 22:17:50.543' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8282873c-40e9-4b51-b4bb-0194eeb7b898', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:37:58.960' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f61e05a0-d4cf-4f24-ab8c-019bd133bef6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:44:28.280' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'cb6f715a-2ef1-4863-8109-01b6a3fec546', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:14:29.403' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'05906541-34cd-4fc3-8019-01eafa71afb7', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:21:17.793' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd1f167e1-d461-402c-8f6e-020cec585587', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:40:38.043' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'42beac1c-0d04-4f62-ae0b-02398ac1f5a7', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:48:47.717' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'029d8852-9086-41f8-bd55-02435ad49fda', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:39:47.160' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3eaefba6-4de9-4294-8ed6-028008f17228', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:02:13.310' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'88c3dd82-5337-4f65-8c78-028a7fcb4a2b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:37:56.880' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'785b9fe2-18ac-4aa5-812c-02cd41cbd463', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591642, 30.490200200000004, CAST(N'2015-08-21 14:51:02.140' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b671bf02-6be5-41a1-89ef-03071a716e16', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 08:47:16.850' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6c91db36-5d0c-4641-b799-030c900c1072', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:32:27.037' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'90b48d6a-03c6-473e-be15-031d8c9208c6', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:56:22.073' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b171c83d-9767-444f-aa89-033c7ac0a531', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:12:01.357' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ab4532a6-a4b3-4395-ac0a-03587aa3d1fc', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:12:11.787' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'59987afd-c0b0-475a-9522-036ca95a98d6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:42:10.453' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'401788c2-677b-4c0d-9510-037154b0b182', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 19:59:30.900' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'26aafb63-8153-4f22-bb5c-03aea7dba5ed', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430931558620649, 30.53956520446598, CAST(N'2015-08-20 21:45:10.360' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8c7becf6-eefb-448f-87e8-03dd4e02ba28', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:16:40.490' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'54d4a88e-278f-4421-9811-04085ef3f1eb', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:23:02.197' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'32dc0d3c-4db0-4e97-a8ff-0411aa7e803f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:57:59.800' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'360431fa-ea8e-42e6-978a-042227b6cddf', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:44:24.883' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'85a68bd9-5a5d-4811-9ef1-0441b764fb58', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:28:11.707' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ed7482c0-21ff-4e11-9ea5-047a4d3e1041', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:05:38.403' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'018c34cf-e552-4da0-b650-04bbe0138b4c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:07:03.060' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'107ae397-5aad-402c-a53e-04de12c66f30', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:31:49.567' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'38652677-b44d-4ce2-9699-05401409077d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591963, 30.490165899999997, CAST(N'2015-08-06 15:15:07.333' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c5b710e9-3925-4725-bfc3-0541b628b2a4', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:14:45.913' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd6fa0ef1-9913-44c4-b554-054fac87adf9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:51:05.233' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c0188c07-7f35-411d-b87f-057fd34a67d3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591796, 30.4901876, CAST(N'2015-08-21 14:43:17.627' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'124b620e-8d7d-4c8b-80ab-0597a959f673', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:52:59.703' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'db946713-47f4-4828-aba5-05a88af6c615', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:45:07.217' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a25da21b-6cdf-4882-9aa8-05befb1ff937', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:14:12.377' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ae2f62b8-ea3d-4af1-96b9-0613193a981f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.432065520435572, 30.540551841259003, CAST(N'2015-08-04 10:27:56.237' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'aca69cb8-7f3b-492d-99a6-0620619ae182', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459181699999995, 30.490212399999994, CAST(N'2015-08-06 14:50:02.537' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0a103fd0-6a40-4c0f-8093-0625b75be80d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.431060737442763, 30.539293487297282, CAST(N'2015-08-20 21:45:49.677' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a2e8563e-fdf2-4071-bf09-0633cf512081', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:31:05.657' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9c756a50-97f4-4b9e-9d5b-063940a8a948', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:47:46.040' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd977155c-4491-4a36-b497-068bb1ba6db6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:11:45.207' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'41294849-1497-4519-b8c1-069b540994d7', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:48:06.123' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bc9d6069-34fa-48ad-83e7-06c9dc374b7a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:29:58.733' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'94b00cf3-001b-4f16-9b4b-06cec522e994', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:31:19.490' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0dbe5486-4541-4fa1-951d-07404d25c443', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:48:25.263' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bb28094b-0d8a-465e-8002-074b9bc89bff', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:57:07.893' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'099bc996-d535-4e67-b9ca-077b677533a4', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:49:36.457' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'730d5b5e-4483-4c53-9569-079bee77fcf4', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:40:13.857' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'42f5cd56-d5a8-47a5-a1e4-07f39a59cef8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:25:58.447' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4388840c-44fe-4a22-9c80-08156d744c43', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:35:13.047' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c252ae1b-4ee3-4158-9e2e-082d7f305047', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:25:58.887' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1368719c-e041-4dc6-a982-08412e303b19', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:09:49.683' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'601d89f8-1153-4bdc-b42f-087d38e4b5e6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:45:10.320' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ae1db4e7-e478-427f-b816-088c104618f6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:29:04.157' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9880cbfe-8f5d-4585-b3ab-08afc1c5a475', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:34:26.290' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6395b8b7-eb97-424a-b836-08b89d63df7b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:10:28.617' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a3f676e5-86ea-47d3-87cb-08c45e5f8200', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:47:41.223' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'166a353b-1b82-427c-a10a-08fbd63d166e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:58:06.093' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0d46fc6b-158e-4870-9a8f-08ff4cdb2b55', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:58:02.547' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'40f62040-c85c-410b-b370-090c060bac7e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:05:36.687' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'485652a0-5486-4eed-9529-0917ad3475e7', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:30:39.097' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd7f1be3d-341c-43f4-b957-092bfe75ee50', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:49:44.343' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'220d04ae-29c6-4bdc-8b43-09448b8141d4', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:41:03.807' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c8a7d56a-a3aa-48b1-a4ed-095ade341950', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4320777580142, 30.540509512647986, CAST(N'2015-08-04 10:28:41.947' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0b5363c6-3407-4979-8b77-095c4a42bcc3', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:16:41.323' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'27cd75dc-9cb2-4379-9d47-097c606e071c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:23:43.067' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1b039cfd-e8cf-466c-9c78-09b4d58001da', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:03:30.737' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'554b04d4-16ff-4e87-9f61-09b6f8569179', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:53:17.023' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3363c6fb-b684-4dca-9054-09b723a76f81', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:12:45.463' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1c4dd2b3-c5d0-47ea-9dd7-09b860aeb180', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:19:14.927' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6b86d98f-58c7-40b0-813b-09c6c99fa94e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591796, 30.4901876, CAST(N'2015-08-21 14:46:02.700' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e3f1d5b0-2b30-4855-804a-09dc5afd6289', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:34:07.777' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'be784de8-ad73-481b-a4a7-09e02205c6da', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 17:19:02.823' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2e6733bf-2584-4175-a076-09ea0d1b2e3b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:32:10.233' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd4a6674b-e15c-4c42-a01f-0a0f15e58538', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 19:14:39.373' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'82c3db28-b35b-45d9-9822-0a51a466c839', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:02:39.740' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5c5fec6a-ba1e-4aae-882a-0a5c1d249618', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 17:41:06.580' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b0212bd2-6c13-4d56-a764-0a62f66037b1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:55:11.387' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6573f1cd-bd71-45d2-8a3d-0a73d42524dc', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:28:53.060' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'df946768-295c-4031-ae60-0a843da5931d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:03:47.170' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3250e35d-a00b-4014-aa4b-0aa7a6d37270', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:14:28.213' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e7aaeff8-2ff4-42d2-811a-0aad1930defc', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:35:16.860' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'da8a9989-affc-45e3-976d-0ab4b493fd54', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430836772134342, 30.53968967693508, CAST(N'2015-08-20 21:28:07.103' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'22572d4b-9993-4add-885b-0ab6ce2ee7d4', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:54:58.810' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4ab3c15a-b992-4ab9-8a1c-0ace43b6e202', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:33:58.613' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5c17e74c-6f28-4dca-80e8-0af0a59b284a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:41:04.493' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bb6e389b-9c19-4a3b-9347-0b7f9f84128f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:43:45.347' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bbde3831-533e-499c-ac58-0b89df92bf9d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:04:05.780' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'09d22bd1-1e27-46a4-ab89-0bcf42bf2c95', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:49:34.543' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3d4e0d96-2272-476b-ada5-0bd6b8b274f8', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:10:11.237' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'860b5574-ad8d-4274-88b5-0bdfcf4f3547', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:13:21.557' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e2f5cc15-28d9-4276-976a-0bf558a71680', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:04:53.177' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5feb197e-a814-4878-a55f-0c22c3b61100', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:30:32.213' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f8bdaacd-206f-4951-ab5d-0c2ec4cf7d32', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:45:39.643' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8e9ab64f-1bf5-4b15-8826-0c32d0209db6', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:10:28.817' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c1ebae72-c087-4866-8112-0c43f4a05bbf', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:11:29.613' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bc5fd3da-6bc6-4a99-83b1-0d144db38192', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:42:45.123' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd060a1c5-81d5-4b2c-9685-0d4cbe6dd14b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 10:03:00.820' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c03ff2e2-2692-419a-834c-0d754b7ae6f2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:12:40.830' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd0f5061c-db2a-4b34-a7c2-0d8d559acbb2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:22:27.513' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'912a830a-04e5-480a-a83a-0daa30236630', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:23:20.287' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6ed0b42f-06a2-4745-9878-0db74901bc2c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 15:54:16.433' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9127d82e-4756-4ad7-9b7c-0dbe92a39e8d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:59:59.670' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8201e75b-d972-464a-b740-0e55bb3109d3', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:20:13.917' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c7c9fa5b-e216-4483-a809-0e96aa2b7983', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:15:19.693' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7c16b488-c4bd-46a7-b6b5-0eb2126683e0', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:12:57.020' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'32f14119-a2e7-47c4-af57-0edc88c2515c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:19:22.050' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a908efb2-633b-4039-8da3-0f2fb99be33c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:00:49.487' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0ce6003b-dd0e-444c-91ca-0f4040e75708', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:15:20.343' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'46a1d281-d7fc-4406-9b75-0f5811fab92f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:10:56.007' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f7800d69-366d-4221-873f-0f82b1f2e88f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:01:13.650' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f3df6468-248d-4c5e-9483-0f8c6d03de67', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:43:14.873' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'188bd8a2-07dd-4c82-92f3-0fb5507bb13d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:00:48.193' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2ab5e1bf-e4d3-4ae0-a04a-101dd0a48eb3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:30:51.483' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'42a1f371-ddd6-43ea-83c8-10286ced1b26', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459198799999996, 30.490172399999995, CAST(N'2015-08-07 05:58:26.553' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'19470346-3eff-4658-8d38-1061aa03dca4', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.431060737442763, 30.539293487297282, CAST(N'2015-08-20 21:45:48.630' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ddd760d2-9f66-449d-bdc3-106f68074200', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:10:20.387' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2e72203e-5811-40c7-8d91-1093183fd5c8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 15:48:55.330' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7990a2fd-5f11-4c5f-b3ef-1094021b0d28', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:42:02.997' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6a6bbd47-e0e2-4f14-b39f-111bb745bc03', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 17:01:05.780' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1dce5917-396b-4477-8613-115e0bdcda77', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:53:57.523' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f8a395a0-b392-4986-a61e-11befe4d5913', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:37:24.807' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'02191ba8-a16c-429b-9abd-11d7778a354b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:11:16.707' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'53cebef2-119c-413d-9741-11d86761e4fb', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:49:46.747' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7291b78c-cabf-49c9-9ffc-11ddbd1bde3e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 19:23:21.903' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b2365113-cf16-4b3d-b09b-11ec9e008fbf', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:07:57.583' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1a619a26-a2db-4538-a87d-11fcc3a9b198', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:04:59.910' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7197abc4-9727-4b8c-9a45-128a95a5a6f4', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:53:55.637' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f4f7a6ac-af52-4012-b7f2-12cc0a4171ab', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:20:13.557' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'19e410f2-393f-409b-b0a6-12d23198c271', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 11:52:44.167' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd4c6564a-b1d3-4f23-9d25-12e91957988f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:32:14.427' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ce8f3f02-a6fe-465e-8c9d-131d40d66abe', N'3d70c1c0-e191-4837-9fa7-3398c928efaf', 50.4472817, 30.447214199999998, CAST(N'2015-08-04 10:14:24.997' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'71ec627c-48be-4ebf-b74e-134a56fd56b6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:28:47.093' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'362ac2de-6826-4f27-9639-134d1b3fe677', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:53:07.077' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'584bed2d-50af-4c8f-b6a8-134f9001dd4f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:05:52.467' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a81087f2-2ed1-4478-9331-135fbc85ed32', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:49:55.217' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ee97431b-f3fc-47ae-b97a-1374f887985f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:49:34.733' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f0858bd4-6b43-4496-b322-141f6c13093c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:31:59.870' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd4028af5-8bba-4bfc-b7a7-1437173b85f0', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:49:35.403' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ff6ab46d-6324-477e-9899-14637a210665', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:42:06.783' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'db540217-d70b-4dd9-ae8f-1494893a7b0e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:00:42.607' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd0311242-4078-4d32-91ad-14b1174adee6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:06:29.020' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9ded9694-aff1-4a00-a8dc-14b1b657681a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:12:33.057' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'882b2d82-e939-4c19-b622-14f38a10d1b3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 19:23:22.543' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5e6ae264-ce66-4095-a375-150cbcf27bde', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:07:50.377' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd2efa7e6-dbee-48b6-b91a-1512921c900e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:25:29.377' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f91195d8-1a6a-40d7-b9ed-1517ffb9d814', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:17:36.513' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3f1bc5e6-7735-454f-8f89-15220f5e6130', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:27:53.753' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'56110f1f-17d8-4fce-b5b5-155de81b73ab', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 17:41:29.700' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ff5aa084-1f8c-4604-a48d-158150c5bd99', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:28:12.573' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'347c6c32-3b6a-4ad6-9c5f-1585794de328', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 10:08:49.203' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ec1f89f7-4500-4235-91ce-158cac562fef', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:46:50.287' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'58c60272-73b2-4d12-abc6-15e10a8d1546', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:20:30.517' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6efc887a-5207-40a8-9a80-16048cd917ef', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 07:52:24.703' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'af25394b-71ce-417d-805f-160b551ff7f6', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 07:58:28.280' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6168395a-4aa1-45be-89d6-162aaa5c95c0', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:19:42.423' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'26e162b1-032a-4b5d-89e2-16ae6b286f75', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:09:33.157' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'21e1d564-6784-4557-9b7f-16bc38dfb67f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:08:59.487' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0903fbad-3e7b-44b5-b51e-16f68be6c271', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:44:59.340' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a3d13de7-049d-4abf-89b6-170269597fae', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:54:59.247' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4f6022b9-620c-40d1-82c5-17221b630ef8', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:41:23.347' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'03ee708c-3846-4582-b139-1730cf2aeb2b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:06:59.330' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9150252f-5b5e-45d5-b61c-1745e03a86ee', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 19:56:57.473' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'72987e06-aef3-463a-827c-175701d1e4ec', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:47:55.057' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c5f33d45-068f-48b8-a8ae-179ed43f5a5e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:10:00.437' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'851ddbb9-6a8f-4e70-abe1-17a9c3894e08', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:49:03.803' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'65e8b66a-66d6-4aa0-99dd-17b901858c56', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:46:08.540' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'47999889-00b7-446d-adc6-17f28527f7a8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:48:39.860' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ed194c50-6c84-45d0-99f9-182bd8720357', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:53:15.670' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b4a1bf01-ccbb-4106-9f6f-18c7b44d8b24', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591796, 30.4901876, CAST(N'2015-08-21 14:46:02.887' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5d0a68bc-b526-48e1-91ea-18cd058445ca', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:57:16.223' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a417f868-63af-401a-86a9-18d6e61cbdd2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:16:34.800' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'cd0d3895-cf09-40a6-9199-1904787de2cc', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591843, 30.490213499999996, CAST(N'2015-08-06 15:05:09.450' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0afc377a-cda8-4e11-a324-193b1f1bcbc9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:33:15.340' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e5d07fab-087e-4acf-9038-195f0b2aa3c6', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:27:12.357' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4d4c7d54-1be9-486c-b4bc-1973d0f49b5f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:37:22.847' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0dda51be-ac48-4f51-9e98-19ce3f83e917', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:56:56.093' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'000fd667-f2bf-423f-b75c-19d3c2bf15bf', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:47:24.993' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd58ccc78-2a89-4cd7-a89a-1a34bf169af3', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:36:13.543' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c8e06882-4c17-4039-9ff2-1a3d43c1d27b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:46:04.107' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'531b0a59-68dd-47f4-8480-1a5cae411c4a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:39:28.057' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'90cc54eb-3646-4965-aaa1-1ad619069e97', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:02:38.043' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'97303b91-2b16-4b60-9e7a-1b0b956bf1fb', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591796, 30.4901876, CAST(N'2015-08-21 14:43:28.517' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6cf6fddf-b11b-4e13-b1d6-1b50c47af727', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:17:29.747' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5699a77c-8c3d-45cd-943d-1ba8075f2ee7', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:47:11.600' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8e6b40d2-d5d7-4a64-a89c-1c62ab258044', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:06:55.277' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8e05f3f5-0241-44c0-bc11-1c8e2168c75b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-23 16:39:20.753' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'204eb74b-0a26-4eff-9a15-1c99ee2e8c03', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 09:14:58.887' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2c800193-bafd-401e-82ae-1cb34a322f9b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:20:26.857' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'332accd7-fb2a-4293-8189-1ce09edac6c3', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:14:18.703' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b0699bd3-c5c7-4e0b-9bec-1d421e3def4c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:32:18.663' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'34dc0c80-2c38-494b-9e99-1d899c719978', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 19:59:46.367' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8553a9c4-3b2c-4e62-a244-1dbb5cac8ff1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:56:27.000' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'71de5087-7cf1-40d8-8ea8-1dbd63d594bb', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:48:26.613' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6062eb9e-3f8f-4ff4-8e3c-1df7251974f1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:38:28.783' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'56abb358-42c0-4e59-b0b8-1e1cf1b3923c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:08:57.300' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3966b118-cdbe-43e1-a585-1e336c0e1a6f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459181699999995, 30.490212399999994, CAST(N'2015-08-06 14:53:05.890' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a441efb7-099a-4f94-bb37-1e3f307e56dd', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 14:47:15.127' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e41d7890-ca73-4430-b038-1e4e1e98257c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:13:09.250' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1d7de210-3e76-41f5-95ba-1e598a9186d0', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:01:58.673' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'26c364f7-53e4-4f40-a3e4-1e6f4c1ec088', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-22 20:54:12.143' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'feede01a-0d8b-4040-a98f-1f3f4f74bd7c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:10:55.123' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c4b1e7c4-2907-41db-8519-1f55067a5d80', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:30:56.467' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'453870b3-a6a5-4891-84a5-1f5ce6e452d2', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 14:50:48.160' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7e932073-46bb-4f81-a674-1f60a056729e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:10:56.937' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'48d5151b-1405-43b9-be23-2005d381e27d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430862352638869, 30.539765183934257, CAST(N'2015-08-17 16:33:55.430' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'43eca98a-19ad-4415-a47f-20266c84ae92', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:27:47.447' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'30ad26ad-8c9e-46d6-9681-2026a3e90c4a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:15:30.720' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'706c11e5-36d9-4998-b7f6-203f45a74b41', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:00:14.217' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'73399a0f-f667-491b-9dd8-2068a31fd3ea', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:11:22.313' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'26e83c35-bb7e-4587-be9f-206c39a8357c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:48:35.937' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'153b00fc-cd32-434e-9a33-206d092a7d13', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:46:12.330' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4d0b1b7c-2fdb-48ec-8114-2075511eadfd', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:07:48.163' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4997106e-d83f-4aa2-a520-20c9f9b50142', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:44:39.990' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'411b39ae-c546-4c76-a6f1-20dba6fba0bf', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:32:16.917' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'001c34df-4621-4837-932d-20fa33d3dd74', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:40:23.367' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e812f958-ae52-429c-87bd-211a301ce10d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:28:01.263' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b6b6db77-6c45-433d-b6dd-212fcc92229f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:50:47.807' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'43329a6a-200c-4ccd-864c-21460208a1e1', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:36:00.407' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5285c510-b6e4-40b9-9083-216d0d381046', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 09:57:23.437' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'02cee8b4-7766-4ec7-ac5e-217de58c6ac7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:07:30.160' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'88898ba5-f7bb-4e81-8d68-21e68024777a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:59:59.230' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f8e2a3c2-49d3-4e49-b383-2206d08ed3b4', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:03:16.907' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a4f07f4d-9260-468b-a5fa-2242a6b8137c', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:13:30.287' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c3d02b5f-195b-4008-92e2-2319d9c92d58', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 10:08:49.767' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e93dc966-7047-4dfe-acaa-231bea57db46', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 19:56:37.923' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'001453f4-ad15-44fb-8ccd-2366fac4d0cf', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:23:08.170' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'38bfcb70-c266-4849-adf6-237666235884', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:41:49.153' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'53fdce73-c758-4d89-9440-23e81e3ee5f2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:49:32.013' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bf90d9b6-ebc3-4462-a963-23f39ef95e3e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:07:13.870' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'12c3921b-1bd8-4178-bf03-240b04361075', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 17:47:10.997' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f37ea592-091f-4a9d-9d43-2415a25291e4', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459181699999995, 30.490212399999994, CAST(N'2015-08-06 14:53:55.173' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'dc1681c5-c1cb-4dd4-94da-241b0163645a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:05:42.803' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'584666ab-68f1-4409-b9d9-2420f819a97c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:23:20.800' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6e558588-b29a-4c77-bc3f-242195e10ea6', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:47:38.553' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6bc2a54d-f804-4ef4-8abf-24305a89f2cb', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:06:03.677' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'387d1b8f-9070-40a0-81c3-24341890cd0a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:30:48.560' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'36ea96ea-cf78-4979-9553-247aa3622454', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:41:35.860' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a776f807-2368-417d-bdaf-24b42a9f3535', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:45:04.753' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1d1cc26e-da5b-417d-acaf-24c6b9c0c0ae', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:17:33.437' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'40725235-6862-4d80-aedb-24d92f64c5eb', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:22:24.487' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'644e2a4e-1bb2-4cba-a5e4-2505bdb3d47a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:49:35.757' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8b7f9451-506c-4a36-bdd7-25692ccfe31e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591785, 30.4901725, CAST(N'2015-08-07 08:43:39.017' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b98b333b-c116-45f8-acfe-25699e652b83', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:55:45.690' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'57ebb0ec-e621-40de-9ad2-257ea1c5851a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:02:12.090' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c0fe4340-168e-4fca-bda7-25a64844f761', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:48:34.843' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3c466a4e-bf0f-4116-841e-25f82aaf4efc', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:13:24.133' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd5be7f76-0e08-4dcb-ab2d-260009d34b14', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:11:08.360' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b0984b0b-e29f-42d0-a3e8-2601e7a5ca0d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:07:28.313' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0cf67ff3-0b2d-4f72-8ad6-260aca240d91', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 16:24:27.327' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'627fe8a9-d19d-433c-bef3-263344896459', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 08:53:05.437' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9e778370-a4a2-4a8a-a11c-26874f4110ee', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:32:25.150' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd0adca6e-2b8a-4949-9bf2-26887bec6203', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:34:46.707' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'46887dce-648e-460d-ab1e-26891b85ea9c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:41:18.583' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ad11edfa-0527-4b4c-ac03-2694f6c34f41', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591843, 30.490213499999996, CAST(N'2015-08-06 15:04:51.870' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0c9c2f22-035f-4cd9-a965-26bdbcb9301b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:42:19.280' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd7a1d6e9-234c-4457-ba8a-26d6d743e17f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:04:49.603' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ec268ee6-3a65-4006-9817-26d7dce750f6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:51:20.453' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a15c8ef0-2e20-4b92-9ebe-26f4eab381e3', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 18:09:59.257' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'28dfb6ad-f361-488b-b735-26f7666c07ba', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:22:09.433' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ddb1ba7d-5410-4d4d-ba20-27a8b892fa47', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:21:57.793' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'efa15be3-6932-412d-90c2-27c00601926b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:03:08.343' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6a2b6c08-8acd-4632-8ea5-27e2cd077228', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:48:32.183' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9a41b258-d8fa-440f-95c2-28186448f189', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:32:58.067' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9d975c7b-23f5-4a43-8c85-2827f7b39886', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:47:42.387' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'492cbe45-bd74-4041-813c-28763baae6bf', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:03:22.233' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ec0def2b-d28a-435a-ac26-289d3ecd78d2', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:20:06.393' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'84cebee2-c691-4bee-9c1b-28ab4957cda3', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:11:51.583' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'58181124-22ef-45e7-9b87-29030e006a80', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:24:52.967' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'05f8817e-54a1-4e13-a509-291159e81852', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:40:04.717' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'31087945-041a-48a4-9c01-291c87a671c9', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591796, 30.4901876, CAST(N'2015-08-21 14:46:05.960' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'363177d8-f9ab-4b3c-9e02-295bf213b545', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:41:42.450' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4791d89c-e834-401f-a74a-299e9e936a7b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:59:06.767' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd6ad58aa-23e0-4bde-a823-29e68d999bd5', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-22 20:53:38.727' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5249b685-9b0a-4a71-8309-2a2c540c0b42', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:17:47.027' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'31d82f9e-d210-4fe0-8f7e-2a30e2352538', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:12:41.727' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'053db62e-212d-45fb-a459-2a78bce50ece', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:01:11.933' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'83f74bd2-3607-4e9c-af88-2a7cbee0248c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459181699999995, 30.490212399999994, CAST(N'2015-08-06 14:53:56.157' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'64e412c2-d039-40a5-9f71-2ad35646bb37', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:21:41.467' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'badc3016-eee9-440f-b5e3-2af42c6d154a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459181699999995, 30.490212399999994, CAST(N'2015-08-06 14:53:55.127' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8d20bd28-5432-4acf-9791-2b0537b56f08', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.431060737442763, 30.539293487297282, CAST(N'2015-08-20 21:48:53.843' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0c8b0b9d-28db-481c-a317-2b460bb4db08', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:47:08.157' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c3c4a66a-f0ca-4e83-b361-2b46fe44d5fe', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:09:40.910' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7bbfa9e7-638c-470c-96f1-2b5191c92185', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:46:49.537' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'575a9951-8c42-4ff5-bb5e-2b629f38fd18', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 17:59:15.323' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3b34d613-18dc-463f-83f4-2bb9231a694f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:32:01.880' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'38869c37-4996-4027-a94b-2bc01bad9a89', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:25:50.067' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2ad827ad-0a85-4f97-959a-2bcb9c1dafe2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:54:34.433' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bd786f73-e50b-4d64-8c35-2bd4627ea6ee', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:20:19.650' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f9ea0ec4-8b82-4b74-83c3-2be0a4426155', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:20:57.717' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ac1836c0-8d7e-4261-8b48-2beb20fffb9d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430966236104439, 30.539355945893625, CAST(N'2015-08-20 21:39:20.670' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a864f90b-0894-4c58-970b-2c0b87961f42', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 10:16:47.430' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'70972750-a7c3-4fac-a74c-2c0d15b3af3b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:03:44.047' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'aae468e9-7fa0-427b-941b-2c2925079b78', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:20:49.257' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b9bd601a-3e8c-4d67-b172-2ca3c2d55236', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430966236104439, 30.539355945893625, CAST(N'2015-08-20 21:30:23.940' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'69ee7aa5-28bb-4a0c-be04-2cf1c5eb1e2a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430966236104439, 30.539355945893625, CAST(N'2015-08-20 21:34:20.807' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c8d2ff09-ceb1-4a38-a8cc-2d06454ee3c7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:49:19.577' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'10f73ae1-0d10-44f5-b89e-2d570766707e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:05:33.297' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6c23206c-4e73-481a-91d8-2d7a0aa84b84', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430942884736041, 30.539553359148098, CAST(N'2015-08-19 14:35:04.763' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a9a28c7a-7084-43a3-bd03-2d83e2e59325', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:31:10.867' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'cc041653-0793-45fb-9171-2d88edeafd60', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:56:14.147' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'35e9cb91-8fb7-4529-a1dc-2db6334536a4', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:26:32.127' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fe0f06e1-1796-47ee-836e-2db903f21fb2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 11:50:58.187' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2092c6cf-0cf5-4c41-8995-2de3b793882e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:05:42.427' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd13d841e-2e2a-4733-ba33-2de785ce46d5', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:49:32.647' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'296c93e2-2478-4219-939a-2e1c0b121109', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:39:09.190' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f6d63117-4d90-4efc-84e0-2e3365084de4', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 17:01:07.830' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'dcd0837a-4f79-4e9f-a631-2e532e906640', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 08:56:24.370' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'dfd2ee42-5539-4872-9c5c-2e764f52ad85', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:14:05.567' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7cac1a0d-8817-4466-b041-2e7e2e881740', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:44:27.977' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1582fdad-fbbe-47f5-bc21-2e94d4e37c13', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4307716946641, 30.539654738146012, CAST(N'2015-08-22 20:48:55.603' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f4efc10d-e762-4e09-8837-2e9a195e70df', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:38:50.267' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1c69a88a-a8e3-4aab-a62c-2e9f58a8f81a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 16:02:58.827' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5c797f35-8111-4945-bbb1-2ea05b5108bd', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430922236139274, 30.539735108814408, CAST(N'2015-08-23 17:38:27.450' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5761d44d-f23d-40e4-a99b-2f7ecab08f3b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:29:04.557' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5da954d4-398f-4c23-953f-2f883671938e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:07:16.087' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f9203722-1942-41e7-b63d-2f887c8e5774', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 16:02:54.973' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'aadd0f52-6f06-4049-98ef-2fac3d41bd5e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:18:24.903' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ae593825-66c4-4145-8fc9-2ff0b02cfe9c', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 19:57:56.597' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'430a3b62-8065-4647-bfcf-2ff924c3a623', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:55:41.273' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2a71e6df-97f1-4ef4-8dee-3060b90d91ab', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 08:52:01.843' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e4c0ef58-eca3-4d13-9ecd-30c1fcce1aa6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:32:03.680' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd036629b-b019-49a6-95d1-30db0b8aaefa', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:46:03.420' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'86a5be15-b9cb-4ef2-bdcd-3104415a7e1c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:29:58.827' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'849e2b40-846c-4845-b2f3-3123be81f3c0', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:06:12.560' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bbdaa291-4cf8-4b54-9b0e-312a598b0f20', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:14:58.877' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'89289f3f-b0d2-41ff-af0c-316fe714892f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:52:33.843' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8b30d7d8-3071-4666-a336-3196283052ba', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.43081981925895, 30.539779220028503, CAST(N'2015-08-22 20:44:24.180' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2a7240a3-8ec6-4b62-8a49-32064ac76f16', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 15:59:17.213' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b8fb5db6-d438-41cf-a190-32659a47f9dc', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:31:29.123' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'14fb0557-2305-40e3-9c3e-326a424eda4d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 10:36:55.717' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fb11ad38-a4c5-4335-b975-3285e7790cd8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:53:32.607' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2dd20d0e-96f3-42aa-94a3-32b229d3690e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:41:43.873' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'26e20499-6d5f-4ed8-a6f2-32c38573102d', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 19:53:50.917' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'85dbfd08-da1a-4d11-9244-32dab3721873', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:27:29.227' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9fe0ddb9-f5d2-463e-8ce6-33b29fa68509', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:22:26.817' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'68476a21-68fa-4789-92f6-33c52d9e2be1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:40:47.137' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'27ce2e01-2d2c-46a2-a2fa-33e7fe0184f5', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:36:43.733' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5d6c206e-a099-4524-beb0-33fc9f96c041', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:25:57.627' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f448f150-e6c5-42d1-8598-34c617d15565', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:36:29.607' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'74148b9c-c577-401c-becb-34f4f60c2e88', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 15:00:48.227' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fb7484c5-0af5-40e6-9f37-3502aceb7642', N'3d70c1c0-e191-4837-9fa7-3398c928efaf', 50.4472817, 30.447214199999998, CAST(N'2015-08-04 10:14:21.207' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1d6fd48d-3799-46f9-ad73-3561d6995b67', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:33:49.410' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'16e17cc0-b0c0-4305-b4f7-358d4efa58bb', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:50:57.117' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'90d9b09d-1614-4136-b91a-35a82cdc49de', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 16:41:59.207' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'07c5bbcb-f492-4d3a-ae68-35c22b9e3d7d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:54:27.123' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e12e0f61-24f6-4a0a-adfb-35d1c8ca23e9', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:45:10.913' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bd973e17-d308-4866-b1c5-35f1e41bd80e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:07:05.753' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e7579014-9a34-4916-a8d2-3665e4e9161b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:25:40.917' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e3774828-b3c7-4b06-bbf5-36710d9db076', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:49:11.293' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'62fbf54b-fee7-42b7-9514-3676afc3e49d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-23 16:36:33.063' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b40dfc60-9514-4e5e-88b1-367cecee370a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-13 20:12:57.233' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'cc970214-5835-4ee3-b610-367d87078064', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:30:57.233' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'704047a6-0b52-47bf-a1ba-36863f587438', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:04:10.753' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3823c468-9e04-4017-909a-368e0c5205a2', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:25:28.837' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e545bdce-0762-4247-8df1-368e84e3f32c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:10:21.513' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b4913e1c-de7f-42cd-9d84-36d38b76b447', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:26:05.063' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'09eb1133-db13-43ef-9428-3736aed0db6b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:00:28.310' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ef3e6964-7426-400d-9d3f-373de1dbe0e5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:05:28.287' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6ae309ff-5e0f-4e1f-b3b1-3748d8395985', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:50:41.867' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'178a7bf6-0238-40c2-85f3-375a318fe663', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:42:16.777' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a8e20aa8-a977-4cc3-b03e-375b49dcce7a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:50:30.350' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'20d92f39-19fb-40ac-bdd4-375bd6c2fce5', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 11:46:18.560' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7cfe41bc-b7a8-4baf-97bc-377cdea68a89', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:16:04.523' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'dda35bbb-eaba-4a6d-a907-379975f335f5', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:52:40.740' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'cff20f3c-699a-4e95-af0f-37e5ed9e1240', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:44:49.340' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b37e86a1-cf1a-4b3f-9e50-37fff13eab78', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:21:25.450' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd2d508dc-7396-4aa4-95da-3804b16a303a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:12:28.813' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7dd086d3-3e9f-4090-bfd2-3807a073ffb7', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:43:28.703' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8650f5e1-0bf1-4b42-806f-381440c1b8bf', N'3d70c1c0-e191-4837-9fa7-3398c928efaf', 50.4472817, 30.447214199999998, CAST(N'2015-08-04 10:04:20.073' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b396a38c-9438-4f18-8afa-3824ce0c0161', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:07:55.900' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3a0e60ca-d57d-4f6d-a6c7-382c1d621195', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591888, 30.490163499999998, CAST(N'2015-08-18 15:00:07.373' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0b306f75-904c-4cd5-b960-38486c47aa30', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:42:19.533' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5c300008-5920-4da2-b6b1-389e5c1a8e6c', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:13:38.047' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'75c42c33-fc6d-444a-b031-390be54650e9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:47:10.263' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a799eac1-d14d-469e-8759-390cce5cb9b1', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:13:06.993' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7c4665e9-3601-4447-8934-392b51057b3d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:06:59.880' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'30eca77f-59a8-4559-8878-3932ef39ea44', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:31:13.830' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fee8c5dc-13ee-4793-87e8-3952663cb5a9', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 08:53:18.827' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7c7ded1d-ea38-40e1-b871-397a162acb7a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:10:30.123' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f6f1ef5b-1aa8-4aa1-ac2f-398a03911f5c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:18:33.917' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a91e5b24-a732-440f-a50d-399840e9540f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:31:28.293' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c193ef95-97d9-4125-b97b-399ec70506c9', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:05:25.693' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd4c11c52-14df-4729-bc84-39db0591219e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-22 20:54:10.550' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e93e7eaf-e5e1-4440-9de5-3a012df35e62', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:09:51.060' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4c225675-3cba-4be0-998b-3a4cb32f1679', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:53:30.370' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8f296584-c414-425a-b88e-3a66ed245e70', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:20:55.513' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c56e6711-c9d6-405d-b021-3a78ec4f1548', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:13:10.617' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'92d7540c-91f4-402f-b3bc-3a90011945ca', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 11:53:01.950' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a3739a8a-3c84-4130-b390-3aa81d5ac602', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:45:15.880' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'502b14a8-0705-4fbf-b1ff-3ac98b2074cf', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 16:02:42.500' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'79e8f5ad-d01e-495c-93d1-3af3eb8f6ad3', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:56:54.377' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'59bd3fdb-10f3-4d91-ab60-3afcc3c7332c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:23:58.337' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'31a57e4e-334f-4265-a3d4-3b18d7f5a43f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:41:01.097' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8b537ce7-457d-4dbe-87f2-3b1ff1244692', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:39:02.493' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6fba2035-b8d9-4834-b651-3b3622719146', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:34:06.503' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'091b70a2-4bd2-4f95-84d9-3b465f558b45', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591943, 30.4901787, CAST(N'2015-08-21 15:01:16.937' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8f10c4e0-3aff-4193-978f-3b5f355c2b3c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:09:09.907' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ce8f5d02-6d0c-4abf-a26c-3b9f59a04449', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 16:16:53.233' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e6afcea0-fa8f-4a2a-9c34-3bd22e918a14', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:03:35.407' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'54190083-3438-47fc-8b71-3be546f84717', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:43:50.723' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c39a1e4f-75b0-4a36-9a4b-3bfe8ef1a3bf', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:52:49.743' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0f0e2597-dc1a-473e-bb2b-3c0e79688ff0', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 08:47:17.287' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'95b0951a-5d42-4ef8-9e14-3c1ccbf94788', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:54:12.000' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'97ee597b-6629-4889-a214-3c6f91a66e05', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:52:57.947' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'736394b8-7a4e-4b5e-ab88-3c7901bf5e81', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 17:41:05.893' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b63e738b-ad8d-4e6a-98e8-3c89484e39c4', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:41:26.267' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6212dfc5-7a80-4772-97d8-3cc6433a89f1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 16:51:58.550' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b9a2d316-fbfd-40dc-964f-3cc93a6afe26', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:05:26.897' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a6374118-a04a-4391-a871-3cedbaaf3b34', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:20:06.447' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'68cee72e-7a87-4444-aa8f-3cf4559c4895', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:26:03.250' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1fc9118a-58b3-4bb2-a5a7-3d04d8aaf3ad', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:13:36.317' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd83ee33e-5b4b-433e-9ee5-3d13025ee182', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:07:44.057' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd7f264ec-bdda-4519-aa58-3d4598a1f7d6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 11:49:33.483' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'29c6223c-548b-44e7-9d65-3d69b893db03', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:58:07.797' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a08bc098-5ce7-4b06-8fe0-3d950d88fa92', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:10:16.820' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'748cc88f-42e0-4675-b338-3dbf2a81be9e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:26:40.743' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f89a957a-5b7f-48b5-9edd-3dcf3e1f49b6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:22:13.310' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9ef41c30-4d8f-4f2d-8e7b-3dd0294d361a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.431060737442763, 30.539293487297282, CAST(N'2015-08-20 21:45:10.987' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a5408f53-7308-4781-b068-3dec17f61669', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:50:43.423' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0eb75595-f69b-4cc2-a90f-3e18534ca3fd', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:09:27.573' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e07ec883-d00a-4664-add1-3e194a2cd56c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:22:12.300' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'dfaec793-1e51-475e-9d37-3e4c40975863', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:12:43.457' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5b064916-12e6-4a07-a399-3e6da97a1519', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:52:28.530' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e97ede42-a89f-432d-b10e-3e76e13729f1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:37:50.777' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'dbdf498c-ef54-48b2-afe6-3e9e1d0ae57b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591741, 30.490161399999998, CAST(N'2015-08-06 14:05:59.217' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'913f0ca1-07b9-415a-b817-3eab42a90612', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:52:56.127' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2e72a82e-18a4-4fd7-b8d1-3ecc566d54c1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430966236104439, 30.539355945893625, CAST(N'2015-08-20 21:31:16.217' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fd71cb62-cab8-4cd8-9b2f-3ecea8721e0b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:42:39.660' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ac7b146d-36db-4b3a-9c4f-3f2564199f3e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:43:01.127' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'387ab259-ac43-45ee-b9a0-3f6326f59ce3', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:33:08.527' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'35a8e78b-5e26-48d6-a4c4-3f8040a95698', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:31:10.537' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'75daa85f-829b-4443-9655-3f8a3a7df7aa', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:35:59.633' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b0f25caa-e60f-4017-abb9-3f8c2cc3ec25', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:25:36.993' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'eeff566a-ef3a-4c62-b390-3fcd82f25d8d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:38:05.440' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'28eae07c-2ccb-4307-8395-3feaf792f572', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:34:25.850' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8292bb0a-9dbd-45be-a3f0-403762bce9bc', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:19:28.877' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a2808124-1fb0-44d9-9c8d-40515a3195e3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:27:11.687' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd4fb7f40-02df-40e5-aedd-406ab5f89b92', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:12:34.723' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1ef7f709-797e-410b-93a3-406d433a95fd', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:34:14.500' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd64d2de6-8642-4639-b872-4093e279b8cc', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430966236104439, 30.539355945893625, CAST(N'2015-08-20 21:30:39.853' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f3069480-cc0c-4efc-a3fb-40ce4cb7cde2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:07:06.567' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'358bf511-10da-4be3-a298-40e01ac573b8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:29:27.407' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3b87bac1-68fa-49a6-aae1-410a8b8ec55f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:46:05.687' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2176f98b-b521-4c0a-b907-4150c07b74ec', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:46:57.583' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'dfa9d60b-1f2e-400c-8f3a-4187df9a2d17', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 16:26:58.600' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'72f03cce-1793-4e61-814c-41cd8f8c90f6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430962545625725, 30.539537840299396, CAST(N'2015-08-17 17:18:36.223' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c42636c3-19f1-4d12-9685-41df70efe565', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:31:06.547' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1517831a-fc86-4bcd-b344-41ee83761604', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:41:31.583' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'383105ea-7381-4840-917c-41eeb726303b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 16:35:20.600' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9c7e4227-a9aa-479a-b551-424b9ef7c035', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 10:36:06.520' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'644a76aa-233c-415e-b96f-42857cb4f3b6', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:42:22.947' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b98bbdf5-1888-43b2-a7df-42a4840423c9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 18:14:59.833' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f50e598f-7d2a-4b95-9cc0-42b15234e369', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-13 20:13:29.970' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a0345ec4-c1fe-4628-8aea-432d7a45b197', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:43:27.187' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'53b9d25d-a3ba-4917-82e3-434fd7dccbe6', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:56:00.177' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1b851a2d-fc45-4dba-96ca-436b2933d29d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:09:58.657' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'943f8b0c-980f-4df8-b7c3-438a88b3303d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:22:22.717' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f0195c15-7414-43a7-928f-439953f29fe2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:40:21.833' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e0c31a91-5f7a-4b08-9778-43a99f4a2c19', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:12:59.703' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5d03dcab-44a9-4b28-a54c-43b22f156131', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:12:48.787' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9ccfd697-c927-4f9c-833d-43d1d9e8a252', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459198799999996, 30.490172399999995, CAST(N'2015-08-07 05:59:42.870' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'52308777-e9a0-4f37-ace5-43e17b98840f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:51:19.450' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7dbca60b-fd35-4d93-9e57-43e7b5b17051', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:58:34.060' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1318dc08-0b3e-4fd2-8243-43fc411baca1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430966236104439, 30.539355945893625, CAST(N'2015-08-20 21:33:36.627' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2a6fc8f9-5f48-4cb7-8c8f-4403782a6a58', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:11:01.800' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ac77933f-85d7-49bb-a0b5-442249244893', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:01:59.047' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'09fafc20-eede-477c-9dfe-4439528b8b8b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 10:03:40.010' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ac8cba0d-583a-4b88-8c5b-447ae6d1e8a2', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:27:28.310' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'27e55958-c041-491e-b401-448a4fdbee22', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:05:00.680' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'539d3c6c-2737-484a-a895-44bf58beaeef', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 09:06:30.623' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1a1e2a44-b2ad-4bd6-afcf-44dc4d51a952', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:42:18.517' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1f23a519-4aa4-4bd5-a317-44f65e0182cf', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:31:38.633' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fa2936b3-027c-484a-b734-45159ceb36d5', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:11:30.637' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f042e362-187d-4c55-b9bc-4519d70b57a4', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 20:00:09.840' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6e706728-a997-4381-81d2-454e67c92650', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:03:56.817' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'59aa21d4-5255-42f3-9b4a-455da3dbed3f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:36:08.303' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'069667f2-fce3-4afd-8d1d-455de9b09cd9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:51:36.707' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4f6aa18d-f6af-40fc-8049-457f97765728', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:40:58.980' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2e08ba39-e86f-40ab-814f-4585cf6939b2', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4304442089051, 30.539253316819668, CAST(N'2015-08-17 16:23:10.127' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b4d4a040-d581-4571-bf81-45f4e034b568', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591888, 30.490163499999998, CAST(N'2015-08-18 15:00:07.577' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3aa90b08-c33b-445d-abac-46106502a56f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 07:54:57.463' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'83682fca-8fd0-4a15-80ea-46594bac6a5d', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:42:56.757' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'57591083-ff94-4a96-956a-46ca75ac7cc1', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:26:24.023' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1b90f76e-a6f1-426a-8264-46cb28664fad', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:55:12.140' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'235b5589-0179-42f1-b712-46dfecafd0eb', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:37:54.243' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'292bd1b3-27e3-499a-96a3-46f47e6d1e28', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:56:07.793' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bdd99289-1e34-48e6-8da3-46ff041a8476', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 16:24:27.373' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'625a73f0-5c57-48bb-b4ae-47131d30a697', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459181699999995, 30.490212399999994, CAST(N'2015-08-06 14:49:53.033' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'02c24cc0-55fe-4e53-bb15-473453ed9151', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:37:24.543' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'714d88a0-f40c-4500-bce3-477b4def2db6', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:50:08.010' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f04194b6-f15e-4892-8d19-478943b2518c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:59:56.147' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9c95dbd0-12d8-49d9-bc96-479cfda2c0ab', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:33:01.667' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e454af1d-aaac-4e0e-a8f4-47d3ddf5cc0e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.43081981925895, 30.539779220028503, CAST(N'2015-08-22 20:43:21.887' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9af5d1b4-3d35-44a7-b8c0-47dd17e4267b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430901875226958, 30.539702539092264, CAST(N'2015-08-23 17:33:32.220' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2314ff57-5a9c-468a-948b-47e678ee9e81', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430884123596854, 30.539756451078322, CAST(N'2015-08-17 16:13:06.353' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bde3d106-92eb-45be-893e-47ffe726eca4', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:02:57.917' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'34f043c8-f674-49f9-8e3d-48001d0dd1dc', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:54:16.020' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9acf2df1-b848-461c-bdb6-480fb99ee9fa', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:20:46.090' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'adc1430b-f3b9-4d72-b4e8-483053e8df78', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:47:02.517' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f04716fe-53ca-4a76-88e0-484062b8d147', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.431060737442763, 30.539293487297282, CAST(N'2015-08-20 21:45:44.543' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fd949dbe-6740-4df8-8b36-48b74c337177', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459181699999995, 30.490212399999994, CAST(N'2015-08-06 14:54:26.407' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'12f60e79-9c28-4994-866f-48dd3c8b6937', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:04:17.017' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2e03af5d-4639-4187-9dc0-48f5bf6f034f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:58:45.807' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0c910ec1-3369-4014-ae2f-49358d8a1e0d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:47:10.763' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd36192f3-ffaa-4a3c-b673-495d6c4bb020', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:13:30.967' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f11a62b8-1108-47af-b545-4998b10a397c', N'3d70c1c0-e191-4837-9fa7-3398c928efaf', 50.4472817, 30.447214199999998, CAST(N'2015-08-04 10:14:22.237' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f1c80df4-b8d7-4c40-86aa-49b0018b338b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:19:21.357' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'13a57702-78a5-4903-bd65-49e7e6535564', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 07:55:37.050' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'02ec9d8b-58b3-4675-9b7a-4a6a62cd9cec', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 19:59:32.403' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e0de0926-7d2c-4c17-91ae-4aa867c1e0e7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:48:08.537' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a7ddade8-9c3c-45bc-a5c4-4b129be3d957', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459171200000007, 30.490166499999997, CAST(N'2015-08-07 08:40:38.797' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'29a743d1-63a7-4717-9b0f-4b6eaff58ae4', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:51:31.900' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0a749617-7e0a-4014-9bc0-4ba0a53f8792', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:17:40.017' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'18636c16-cea0-47bb-8512-4bb1e197d19f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 07:52:24.203' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5d27ff0e-1d99-4864-ab93-4bd255c536f2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:42:39.173' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c4946dea-20ad-402d-9207-4bff63e606a0', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 17:47:12.260' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'909e0239-a14f-41ba-be6c-4c0af486fa96', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:51:05.750' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e9b13bf7-2439-4030-ab6c-4c26a86150a2', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:55:40.213' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'cf96cf77-ef99-49cd-a5f4-4c3eb583689d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:20:09.503' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'81d31c17-2ea3-4209-bb71-4c485034157e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591895, 30.490192099999998, CAST(N'2015-08-06 15:30:06.260' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2b376618-5a84-4d6b-b98a-4cbded1dee7d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:19:06.313' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'16473d87-a93a-40ca-945b-4cd093a08685', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:32:56.917' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'11da0f3d-a9ba-49cb-9bbb-4cd3937af4fe', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430862352638869, 30.539765183934257, CAST(N'2015-08-17 16:33:56.523' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2264addd-9d95-4394-98a7-4ceb71dff626', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:59:02.437' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f255ad5f-a5ac-4c61-bd1b-4d27f88b0427', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:52:35.130' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c9cf2aa3-622f-407f-85e9-4d2bd40402a5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:57:55.427' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c3067d2b-b8a2-45bf-8526-4d4fef420de6', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:50:49.387' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'99caf0c4-caa7-47dc-b970-4d78b59f668e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:49:53.487' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'451af9a9-6e41-45fb-937a-4d9199268849', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:35:48.650' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'008f55cf-6da4-4568-a9e1-4dd126f49881', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:44:29.717' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'411e35dd-42cb-4fbd-ae49-4ddbe5b52638', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:09:25.230' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c8cc65c5-1f6b-4997-9af1-4debf979ed86', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-23 16:32:46.870' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b2472977-d20e-42c6-b49d-4e11fe10b0d2', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:46:07.870' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6434577b-2e9e-4064-99e7-4e1f6d23c00f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:33:43.163' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2f805b15-48d7-400a-8666-4e2e948180fc', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:03:35.107' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0e957010-5b60-46a9-b8d9-4e400a069092', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:53:14.523' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9099ea17-8d20-40b4-a8ec-4e52ede2f340', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-13 20:00:46.937' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5a37ec4b-7275-4394-8c2a-4e9847d0d971', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:52:48.637' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b231b94a-64d9-4581-aa8c-4e9a581b81a1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:42:24.027' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd3413ec7-fd66-4dc8-b42d-4ea2a0470390', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:27:48.597' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c386d7de-851e-4050-8229-4ea63cd43d9a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:58:27.687' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'33033f5e-855a-4591-b048-4eadb2fc68b2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 11:46:30.650' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'eaa603d6-8ddc-4d30-bc2e-4eefe2664b90', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:44:58.930' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1ed7f88d-7b2b-4389-a34f-4ef09382af1e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:30:26.297' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'97eb11ff-e4d1-4b9c-a9b5-4f0af24b1e28', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:55:57.840' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'670b4d55-644c-446b-8379-4f16dbabc37b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:16:37.237' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0356c749-a3bd-4312-8097-4f5f7735eea6', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:47:54.797' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'de9a142d-fd77-40ba-9c25-50308e0ceeea', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:35:49.447' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'adea22ce-155f-4e6e-9e2a-50631df3e9b8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:47:20.530' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2bd56aed-f510-4e02-b8aa-5075ff4c457d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:24:18.417' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5a2b3108-e465-4499-a91b-507a99b434bf', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:23:13.683' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'03b78d7a-32a5-4e44-8f4d-508801e508fd', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:20:12.307' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'eef85d30-2d4a-48ba-94e9-50cc212c7b95', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:14:13.187' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b318a4af-82ee-4541-9a49-50cc97880d76', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:42:36.737' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4ecca009-3e0f-4a7c-9dd0-5104d23fc442', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 17:59:16.123' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'46745719-73db-49ad-9922-51442754a6d3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:02:16.330' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7186004d-107e-4267-a0cb-517b3fd4a706', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:40:29.747' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f939f69d-5fb7-4f3d-b8ec-517d666e37fb', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:59:15.013' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'cec48940-ec71-4462-b743-51b1f5f34d95', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:32:24.407' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ebac856f-b3fd-4aff-a457-51f1012b0b2c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430901875226958, 30.539702539092264, CAST(N'2015-08-23 17:27:32.327' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1f1ebe36-4e22-4a01-b8c0-525b781b2074', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:31:00.243' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3ffa6fc9-b344-44ca-94e6-5282fd7e2091', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:53:03.007' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2fb0f412-0359-487c-afa3-528b6b58d1d4', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:13:02.060' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6c71908e-35b8-4915-a27b-52b4bb387bf6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:49:32.910' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ac0fbeb2-3d24-4fe1-aeaf-52bc72f83ab8', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:41:07.763' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'90f04325-3a9a-4880-abab-52c71f2df7b6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:26:06.827' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'21f5d500-2710-44c2-b044-52cdc6573a90', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:44:08.320' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8461337a-7120-440f-845c-52f714067cb3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:30:25.177' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fa8d2557-1dff-4804-bce5-5338d5f4d938', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:47:05.930' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'75d09337-8084-4d52-a5fb-53622d1551f8', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:31:51.620' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd9cce91c-903b-413a-85c7-53af04521f15', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:56:40.237' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7b093969-bfb6-4bc4-bb29-53bf430f830e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:07:59.820' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0319c77f-2825-481c-927c-53e2abcda39d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:15:37.493' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'234771f7-7ff9-4352-a7f7-540221e65ffc', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:59:17.187' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9689cec8-0412-4dc8-9b32-546e84057eb9', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:44:33.673' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a4d3c9bd-8072-45b6-afe2-549b148f9261', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:27:55.450' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3e6d1934-7c40-447d-a76f-54f423ac2af2', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.43075006455183, 30.54017742164433, CAST(N'2015-08-17 16:22:38.693' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'aaf37047-b3fe-47f8-a922-55096428320c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:12:07.697' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'44581ce7-840e-46b8-a1c5-551bb5425a81', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:05:42.950' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fe1fd25f-17d6-4f43-afec-552181abe6b5', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:25:31.393' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'17828cf0-b9e0-4ba5-bc98-55308d3b6a00', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:50:56.473' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd2463167-b188-4993-8525-5579ba15c495', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:46:02.563' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'00b8cf39-5e47-4d87-bdb3-5586174a983f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:39:59.340' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f1b2f379-adf9-49c7-bf0d-55b4a71d5703', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:01:15.663' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e790ee9b-024b-41e9-8d68-55d258fe9ccd', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:53:16.717' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bd29f532-bad2-42d4-8019-55dd00bf7ccf', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:24:28.993' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ea3834c6-8776-4208-9f18-55e49afd9ee1', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:36:09.023' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8d879f80-2de3-4048-b27e-55e7297d5a70', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:41:19.267' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e5103368-5516-4db2-9524-55ff2f6b8c95', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:16:06.030' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8e37fdc7-1eb8-4a5b-b5a9-5620d0bd0b6e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:50:48.883' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'40bcd990-9d40-4a42-8af2-563797c6ba52', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:04:51.637' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2d639592-2c78-4777-b7b6-56453a65bfac', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 11:44:30.723' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6cadbced-9c82-41b1-b096-565ca6ba8e6a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:32:31.290' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0835f0a6-236d-4f76-90b3-567dab22ddbb', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591662, 30.490218799999997, CAST(N'2015-08-06 15:10:08.097' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a224126b-98b2-4266-9cb8-56a1f218ef2b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:28:02.840' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'eb8e7d05-cd98-45c8-ae2f-56ccdf7c0a1e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:30:50.070' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bf61f6e9-734f-42eb-9fb0-57215ed47ddf', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 09:15:07.317' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3ee916a5-343e-44db-9992-5727f1a16af1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:37:14.670' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2debf55a-f9ae-4463-9762-572c57b5f47f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-23 22:35:46.713' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1173a0f6-21ea-479c-9792-573549a03432', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:03:19.383' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4f9c937b-c06f-4597-b957-574184e56852', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:28:09.487' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c9173b2c-e201-45e9-a746-57a7a299fea8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:23:56.677' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5d32dda7-5e15-4b09-b9f2-57f0d0d6ad8a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:02:14.590' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'90435b0a-ff29-4482-9d59-581210500ab8', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:52:49.950' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'feef6670-7275-414c-81a9-58beb142f487', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 10:03:45.800' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'98651e9b-c55c-4c79-a888-58e1bc76df7f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:45:42.863' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f361d07a-1b46-4a5a-9c8a-59078b499a1c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:16:55.500' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8880f645-76db-4204-a09a-590ac0362acd', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4309744322269, 30.53946741929991, CAST(N'2015-08-17 18:01:32.900' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b75c0ac8-fd2f-4558-a3fb-59356c2a2e8b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:04:52.117' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0483c3a2-1caf-4dec-bc30-595ce5a6df36', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:43:30.230' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8f16809e-df88-44f6-92a9-595faf4201ee', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:30:11.707' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0caf3dd8-fc37-45e8-80fc-597d38ced703', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:30:49.567' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'187c90fd-e22e-48ae-b186-5985fea9db48', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:57:47.083' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'64e44edd-d913-4c96-a72f-59af276ec20f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:30:13.403' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'96be995e-5c24-452e-b67a-59ec0d1f5c36', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:38:52.307' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a876ee80-732c-4e31-b02b-59f62e3aec17', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:46:12.060' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'30bf89ac-f8fa-4162-acd6-5a040752e56e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:37:37.883' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c5acb354-99de-4db2-88a8-5a6f2d26a099', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:11:26.270' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fa92ee18-8733-4bd0-b28c-5a87d2e19087', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:03:41.263' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c2084f3a-4be8-4473-9696-5aa1e2695f9f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:31:07.287' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'870cd9c3-9a91-457b-8306-5ae3932b01c6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.43081981925895, 30.539779220028503, CAST(N'2015-08-22 20:43:11.230' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5fef069f-e52a-48a1-9aae-5aede24d6468', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591642, 30.490200200000004, CAST(N'2015-08-21 14:51:20.317' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4db8de4b-887e-4552-8a3a-5af1b1445b0a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:40:32.887' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0a9e1d00-63bd-4223-a2af-5b0b87fc0b68', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:27:20.850' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'029d3052-e5bb-4506-adfb-5b0de8180213', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:25:09.327' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1b71bf5e-b069-464c-ad80-5b113b9eefd5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 10:10:49.610' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'dc56a60c-e376-4045-b2d5-5b3afa92a689', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:33:48.647' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9f2dcafd-9b25-449e-90b5-5b8dfa8e81e6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:46:56.037' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'38f9f21d-4539-41e2-8935-5bad2e0d2004', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:06:10.113' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b2222a5f-4b05-4b13-82ec-5c07f1d69ab7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 18:04:59.137' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2aab6f4f-6877-4bfb-b360-5c0d72e09c4f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:51:03.480' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3de29447-aef3-4e6b-9c08-5c1d110133d4', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:00:30.860' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'cf038114-8762-42d0-8820-5c3d46ad3ab1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:11:07.630' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0fee6da1-aebb-4d99-8f19-5c6b492889f1', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:04:53.333' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ac1e3703-1faa-4e48-a1ae-5c6e62ecd0df', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 15:45:50.253' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a551156a-4749-410c-b57b-5c72e1eafcd5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:32:01.850' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2f9130b8-8a89-47d0-97ca-5ca7dea8cf74', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:30:08.217' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'220fb72e-01b9-46c9-9fe2-5d0b069e1a11', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:30:44.420' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e2fcb125-f4d7-4ac0-a012-5d286739f271', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:43:56.257' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ff3eac33-cc62-43d0-8522-5d3470a0e324', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:17:00.553' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'77a6b653-b008-4d51-ba60-5d3611cf2159', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-23 22:39:01.110' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'49facb98-4449-4cf0-a620-5d77045b2f4b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:58:54.787' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e3555dd2-771c-44b4-9695-5da337a5cda8', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:16:28.323' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'31a12f9a-c1b7-4558-8059-5da3fda3b1b8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:44:05.473' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'aef3f043-1e9d-4cd9-824c-5db7bde376c1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:17:44.707' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6eea1bf4-487a-4c20-94a3-5dd768b88843', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:44:53.750' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c871365d-288d-4158-a3a7-5de047b9a5f5', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:46:09.307' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'577f43d7-1a32-49dc-ac30-5e0491bab2c8', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:48:46.030' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e05d72f7-9a80-4321-a5b5-5e29d171270e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:15:11.407' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'047fabd0-4806-4c6f-a674-5e3df09a70d7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:30:41.740' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a6dbb5a7-e5d4-45fd-9b10-5e57c8477806', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:35:51.177' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'daaf6740-f2a3-4341-b3d1-5e7504e01f6c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:03:40.580' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ce6a9be6-26f6-4c9e-bcc9-5eb1f265f579', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591961, 30.4901811, CAST(N'2015-08-06 15:20:06.867' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9427e47d-c776-4eef-8366-5eb7e11061b3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:31:06.363' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'09fc98f2-21d4-48a5-9d22-5ec41a7370be', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 16:41:58.550' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'87566d36-aa1e-45f5-a70b-5ed84af96b2b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:45:27.357' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'292d4108-c452-42c5-91ec-5f256df8e840', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:31:01.707' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'91e45794-8fc3-414f-a42a-5f2a45f08b07', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 07:55:28.287' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'af4eb4a4-1cb4-42da-9e48-5f39b6441133', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 09:04:49.453' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b3fbbded-89a7-4cda-aec4-5fa3b7cc9863', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430846499017065, 30.539709563730533, CAST(N'2015-08-17 16:21:05.620' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'cd61c65a-ffbf-4bcd-9f40-5fadda6c6a86', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 07:57:28.797' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'367076c3-5466-41cf-905d-5fbea2a34462', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:09:51.327' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'dd44fd90-f5de-4026-bf8e-5fc15ff9cd06', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:02:54.277' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a339ed76-d555-41d3-97c3-607ce5b7ef83', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:07:42.327' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a675572d-de7a-435f-ae4f-60eb156efada', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 16:35:30.573' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'44978a43-5b86-405f-8527-6116d90f34da', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:25:37.777' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6043d72c-604b-42cd-bf76-611b715d697c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:16:09.110' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'39853393-7318-44ae-a392-616af85cc424', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:16:39.550' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'97d30e78-9fe4-4266-8f36-61dec2129a91', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:26:15.013' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a8e537a7-c287-4168-ba98-61f9ee4c582d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:46:51.367' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'458040ad-77d6-4b48-8612-6215c3048cda', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591748, 30.4902243, CAST(N'2015-08-21 14:56:16.293' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'45afe4c9-444e-4b0b-aff3-622496000e5c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:58:13.643' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c19bf565-14fd-4f93-b6f4-623427bd5383', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:13:45.877' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a64bd418-5486-4dca-9f4d-62369426b650', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:38:16.777' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'abf6e722-2778-4311-84d9-623d58f46b6b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591785, 30.4901725, CAST(N'2015-08-07 08:48:38.707' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'117d6db0-b7b0-413e-a4bc-6271adbe414d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:50:31.860' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1a31ff1a-b1ca-4685-8306-628b5c6a5dd7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:23:06.470' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'730ccb59-ec25-4b31-84b6-6293f5793b0d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:23:59.890' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c76924a1-ea83-4d5a-b71b-6298343e359a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 19:00:01.517' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'25fc7c46-85a1-4744-ae9d-629fc5410139', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:49:13.997' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7ba55d4a-0ffa-4f95-89dc-62b4f3c47989', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:16:23.583' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5e89e294-2e7a-4a1f-a674-62d86e3172ff', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 19:20:54.990' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'129ecfec-3c89-421c-925a-62f5abf5c639', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:31:33.857' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd224b67f-e436-4819-a282-63206dbba5f3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:42:51.367' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bb87ce2a-88c8-4e34-9a2d-632b6bbaf003', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:39:59.233' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e49f47a1-8fab-4144-a352-6351133bb0db', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 06:10:19.887' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'40c09d41-3e23-4813-9df0-639372387544', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:27:47.513' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e83b0d0e-8964-4199-9fba-63a080b25a8d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430901875226958, 30.539702539092264, CAST(N'2015-08-23 17:28:32.653' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'91782958-74c1-4584-9227-63b81a0107e6', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:33:47.390' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bc3dec3b-07c2-4916-9146-63d64e18d656', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:32:28.793' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'53e0a459-e893-419f-9810-63ec2937d73d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:51:06.293' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9eef9ebb-2a28-4eda-b5d2-640feb2d297e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 16:02:50.183' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e25afb8b-0b0f-4a74-b6e7-644ba036cf09', N'3d70c1c0-e191-4837-9fa7-3398c928efaf', 50.4472817, 30.447214199999998, CAST(N'2015-08-04 10:04:21.633' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'32846b08-b79e-422f-9378-645954ab267d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:43:56.990' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'85b5f2d7-f889-4549-9d19-647d555928ba', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:14:22.970' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a855aec0-86ae-4b0b-9208-64903df753ab', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:22:23.667' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'cd577b8d-c1a3-497b-b775-64d7a79247e7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:32:25.923' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'35a5731d-e4e0-447e-bc95-64dca24d3e36', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:23:04.523' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a7df6972-ea6b-492b-8e54-64e93f057644', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:33:44.873' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'992f2b3d-4534-4f1a-b8a8-655561f3b5c9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:47:19.330' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd90ddf5a-7a14-4a9d-b19f-660a35bd0559', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:07:32.547' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f4bd0e0c-1abd-425c-84f5-662eee27f790', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:17:38.127' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2192289d-d6c3-4215-9a45-662f173def00', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:02:10.937' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'89b68bab-328e-42c8-ba45-6633a6a1bd5b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:16:39.260' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4b588111-799b-49bc-bc1f-663d1dd0ccd0', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:31:40.393' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ec7350b3-37d3-4943-a955-668001d225d8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:57:22.637' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'660a8169-7066-4c9e-bd15-66976febd514', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:04:52.667' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'aaf09e76-ed78-47c6-988f-66d629b5db7d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:14:12.057' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0e76218f-72be-4aec-afb9-66e6f9f9c91b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:48:38.350' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'14940093-8add-4ac5-aa38-66ee88562892', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 16:31:59.083' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fb099a40-e7b9-4aaa-9bac-66f7a610b67f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:06:58.860' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c595d732-6870-4038-938c-672138a91d66', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:42:46.627' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e0ce2e5e-004c-4f2c-ae4e-67450423aeb0', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:15:20.103' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd2670c5c-5b84-46dc-bc03-6769a6f8430f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:48:39.750' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b436b70e-abe6-4dd5-af58-67a3f55c58b0', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:16:40.790' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1958f6ae-b42b-45e8-b292-67a4e0a1bb39', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:50:57.067' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'96967754-8878-4117-983d-67ee161d97f7', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:15:06.360' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'92a3809d-a48f-4ef0-af49-6804e66e3dff', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:16:30.383' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'51a730c5-3fc1-46b4-a402-6816c40d9883', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:44:21.810' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'488c3231-7925-44ea-b743-6942e35cedad', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:22:23.483' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1e4730a5-2f45-4a2c-9c88-694b0111bb25', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:45:04.090' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'15884024-f50f-4472-b003-69781a24d5f5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 19:20:05.863' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2dfa5829-a135-4abe-ad15-698d2f74d98f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:34:44.703' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'57597a42-dbc4-4c87-a5c8-69cc2c451b03', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:27:39.003' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'499b46e5-4c38-45aa-b472-69d1d9b6933a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 10:35:55.497' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c8fa832a-dc0e-4cbc-85e2-6a01d7937688', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:52:33.410' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'113a77ca-ae48-4595-affa-6a0cbc0b03f3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:07:11.737' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'86418091-c274-41e9-9089-6a336e6d3e1d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:32:45.923' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'31291535-b942-46dc-9da9-6a3d779346b5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:49:40.063' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'92310d97-7fee-402b-a2e5-6a822dcc26d2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:24:59.343' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e3745a70-c9cb-4c3f-b473-6b2eca55c356', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 16:02:56.190' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'40a66f23-88c6-43d4-9d1c-6b345d1ffb4f', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:42:50.387' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bbad6b7d-8642-4444-a5e7-6b4e75adb1ed', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:17:40.360' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6d238b02-93ed-47ab-8597-6badbe278fe9', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:56:46.387' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'45b06836-de9b-4854-8919-6be5dfac03b6', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:16:47.783' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'446f73bd-6981-4b25-be00-6c12356318fc', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:36:26.640' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a083871e-7a9e-4f26-b86a-6c92034853e8', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 19:20:18.703' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'794ef8ce-9f6c-486e-963b-6ca8974ee346', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:49:29.830' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fee4bcc7-02d2-4a15-9009-6cce67f02545', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:40:56.480' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'40615bca-4835-4bd2-b5d2-6cde1ef60d04', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:20:15.250' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'82b0c3a5-d0d3-4383-ad37-6d48269c47d4', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591888, 30.490163499999998, CAST(N'2015-08-18 14:59:39.230' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'05fcd260-f1bd-4f62-95d3-6d9ff1ebc46f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:46:21.630' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'49601a88-aee4-4c30-8358-6db85eca04f0', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:01:15.003' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c2aba1e0-223f-458d-bff2-6dd6320078af', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591796, 30.4901876, CAST(N'2015-08-21 14:43:28.190' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b70613c7-1ac8-48ef-bc00-6deda79e8985', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:23:21.500' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5f93407b-2c17-45ef-b09e-6e57cff7bb66', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:55:27.747' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f5fb9d80-50ae-4198-ad63-6e87ca924426', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 18:04:59.043' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ec26d060-c9ea-4d87-b455-6ebf76431225', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:53:04.277' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2a8f78ae-26e4-46a2-b38c-6ec05ca1e340', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 17:19:09.907' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6a3bd6a6-8b87-4856-93c5-6efac4b85ed5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:10:08.897' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ab5d00fd-39bb-44d2-9d57-6f15784d92d1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:49:37.967' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c279ddcb-43b0-44cf-9418-6f5e07434275', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 08:55:07.470' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2314808a-51d9-4145-9e80-6faf4dd168cc', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:30:07.207' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1f4d00c5-8f02-416d-99f3-70534ea643de', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-23 22:35:58.680' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3be3c231-e07c-426e-abb3-70c8b9fec501', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-23 22:19:03.697' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'17f7b3c5-0de0-46ca-88c9-712ccc90b6c1', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 14:55:48.227' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5b9fae33-9c7c-4e87-b337-714070b8090a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:43:26.817' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0c8a299b-b1d9-4e6a-ae92-71445231b9f8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.431066633444573, 30.539321778671919, CAST(N'2015-08-17 17:56:36.640' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'600fa805-3ef6-4e9b-9cb3-7144d98d6bd3', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:51:46.193' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3b3774cb-7d67-44e4-9ed9-7162a46404b2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-22 20:51:48.507' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'dd978f3b-ede9-499b-bfbc-71697a2a14ce', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:25:28.390' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6abcdaf2-9797-4351-875e-7191f2a93122', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:10:40.247' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4c33baa2-7719-4dc8-b1a1-71dc3f4fa89c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:03:38.437' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd993a19c-ffde-43f5-a632-720eecf63085', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:28:11.187' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b45e2cce-7192-4771-b643-72201d8f0d38', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:37:51.283' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c6d083b8-ba79-45e2-bc40-72313ebc9e35', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:46:02.737' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8b382b99-2668-424c-9110-723c3751a3c0', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591888, 30.490163499999998, CAST(N'2015-08-18 15:00:07.390' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'eea649cc-2803-43c4-81c6-7242105912f0', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:52:41.833' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'45afc6cf-3a92-4e7f-aaf6-7261d3eca279', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:53:07.190' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'139eae12-5320-45b6-97e9-7278642fe4e4', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459181699999995, 30.490212399999994, CAST(N'2015-08-06 14:54:24.363' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'84c813f4-5d47-4a5a-bbf0-72790b8d2237', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591748, 30.4902243, CAST(N'2015-08-21 14:56:16.823' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd18ccecf-61f7-4a10-a372-72831b190e88', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:12:45.543' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'dc4e73c9-2037-4c76-8c4a-72963cb3fa33', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:50:49.060' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3cf6df8c-ed6e-41c5-ae6a-732c998e357d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:32:55.707' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ef8a09fa-2dc9-4ebf-bef5-733e5eb06fe7', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459181699999995, 30.490212399999994, CAST(N'2015-08-06 14:50:04.157' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'74802ea3-8a72-484a-9992-7376fc717152', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 10:36:37.503' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e1834818-fa42-491b-80bc-738fb9b0320f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4304442089051, 30.539253316819668, CAST(N'2015-08-17 16:23:09.067' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'959671b3-4032-4c18-8ce4-73c3fac6661b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459181699999995, 30.490212399999994, CAST(N'2015-08-06 14:54:25.377' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'702f1f00-e380-40cd-a2e1-741bff2f3090', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:42:05.907' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6c7517ce-869b-412c-9e4e-7505c1161c08', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:37:30.983' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c2226e8c-a1c2-43a2-bdad-757e25444dbc', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:10:56.220' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1dffbb51-ea0a-4c25-a60e-75909e39bd1a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-23 22:40:06.760' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f81f8ddc-f1ff-42ed-937d-75bcb28afbff', N'3d70c1c0-e191-4837-9fa7-3398c928efaf', 50.4472817, 30.447214199999998, CAST(N'2015-08-04 10:09:17.223' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2ee219c0-5d73-4be7-b37d-75f7c2180036', N'3d70c1c0-e191-4837-9fa7-3398c928efaf', 50.4472817, 30.447214199999998, CAST(N'2015-08-04 09:05:50.453' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7311040f-708f-486c-b0fd-760c6fb03a11', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:54:25.593' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7a63febd-48bf-4c51-a85d-76161ea4124f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:50:41.740' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'476f9f9e-3c1b-437b-bd3e-76196fdc4c55', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:27:13.297' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c8b2af98-1b3d-42c9-a09d-761d6fb75a48', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:49:24.157' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a4d7a3fa-0497-4bb2-bbf7-76330d28d21f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430966236104439, 30.539355945893625, CAST(N'2015-08-20 21:33:36.110' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'39e7579b-cb6e-4917-9f01-765664c522d0', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:42:55.787' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'24741bc9-f036-49af-9a5b-76a9a2efa90a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:46:06.770' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3bbc6cfc-2d6c-417e-ad82-76c0a09a95af', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 20:05:09.840' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1ef222ed-710d-4f58-a5fd-76d06378290d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:33:41.597' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9c2a505e-93fa-47b0-9269-76f2f1a482fc', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:30:29.983' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a88b8072-3ea8-431d-ba3a-773a0087f84c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4308753232117, 30.539757647335808, CAST(N'2015-08-17 17:59:17.030' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4c0c238f-1643-458e-b9ff-773f28ab6d1d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:06:28.330' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8ceba133-7369-4fbe-92ae-7775487aaa94', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:43:41.657' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4068aaa6-f9b0-444d-9eff-77ac4cf5bc4c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:15:06.327' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'29cee84e-d125-471b-9165-77ad61abc47d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 18:24:59.340' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3a545c07-f2a4-4681-b246-77d6eca472e3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 16:16:54.387' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'15eee604-967c-46d5-a389-77e548f98c29', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:51:47.887' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c227a794-988c-41c0-8880-787563e965f8', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-20 19:47:45.670' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ff9e1fd7-14b1-4e82-b345-787a0f876685', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:27:14.903' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2321e32a-ee52-4c82-9b85-788bbd7a199c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:45:41.457' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7a336016-b4ee-46f2-b5b3-788f292969e0', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:32:48.650' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3c73588b-4460-4a4c-8970-78adee3a5b93', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 19:20:04.693' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0e2fc236-1659-4ae7-8bbf-7909b79f16b7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:49:43.250' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8a52439e-a827-4262-b3b6-7910c2df8ede', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:40:07.310' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0aa95cba-c7f9-4440-81d2-79174541d56f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 11:52:23.107' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2adb3652-b2d6-4c57-9629-795020538453', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:11:59.337' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'73501e53-667b-448a-9c18-79899b99f49d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:04:37.753' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'06beec04-c8fb-4f7d-a489-79f20ce51f3b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459198799999996, 30.490172399999995, CAST(N'2015-08-07 05:59:44.510' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'75393124-7c78-4b08-8616-7a2a3008ccea', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:19:48.620' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ea77b93d-c316-4303-8676-7a4189664dcf', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:03:26.063' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd501b2df-b770-462f-9af1-7a78569b10a8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 10:37:16.323' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'091d2e5c-0932-4d09-ace3-7a9c096476d0', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:31:58.067' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bcd7b16c-d07c-4638-8250-7aa6562b6da5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:44:33.077' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9976f423-805b-42c5-b2db-7b09c347ebd4', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:05:42.070' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'383617ba-ed4a-4720-a52e-7b0c05d9a1bc', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:15:17.827' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b38fca73-9de9-4e18-93c4-7b2d8d562d37', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 16:26:58.677' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7db789fc-1813-42f8-ba58-7b6bf2ba63e7', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:46:29.257' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b76d0fcd-a8f4-411d-990d-7b82913a6d8a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:34:06.457' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0884a0c8-f595-4d0b-99fa-7b8666857494', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:20:18.077' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4cbfae0d-022f-45d4-8bf6-7ba33a7d5a2f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:56:26.000' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e6a9e3f6-d35d-4dcc-9908-7bbbbd5faf0f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:35:01.290' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c98957f1-911e-47dc-ba77-7bc9020b1ce6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:11:35.840' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7f0d6cf6-a57f-4342-b5cf-7c8f183662f1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:24:32.387' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'342d4bde-61b9-4083-b37d-7c99744413e9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:43:16.760' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9541cff8-f0fa-44b0-84f8-7cf86c668ec5', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430901875226958, 30.539702539092264, CAST(N'2015-08-23 17:27:27.427' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f76b51cc-c6e2-4d20-b07c-7cf963823aae', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:43:34.877' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fa000695-e4e4-4a53-a04c-7d030c607171', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591662, 30.490218799999997, CAST(N'2015-08-06 15:10:07.050' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'59d462d0-f137-443d-93e3-7d0a4f2d1de5', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 06:10:17.357' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b32f6cc5-03a5-49db-b127-7d0f2f8ddbe9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:03:37.123' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e85b4839-ad53-4514-81fa-7d1b8347564d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:31:12.563' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4b0a9b1b-d073-4f4d-a828-7d2bfa1db8b1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:20:23.593' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'72ccd447-9c64-419f-926b-7d53c79634cd', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:10:32.113' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'99d2a369-09f2-44a0-bc71-7e0c84f5782b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:32:41.097' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a67d4e32-0af0-49bb-82fd-7e7bef702baf', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:27:03.777' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1d88979d-7f9d-4279-8a73-7e8ac4d89adc', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:42:46.780' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'dbf62cf9-b4f1-4d89-aaf8-7e8df90871c5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:46:00.020' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd262eb8e-daea-4419-bcc6-7e976444a2e4', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4593196, 30.490916799999997, CAST(N'2015-08-06 12:32:18.580' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6359ce86-a0cc-45b6-ae73-7ee712d5ea6c', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 19:48:50.237' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9877d256-9f96-42dd-bc2b-7f0a798261e6', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:56:41.990' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7170df0c-26bd-469e-8803-7f5dced024e3', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:55:27.003' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5c58d242-7d7a-416d-9dbf-7f8156bf3e1a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:06:45.807' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'544ed166-6a75-40b2-b0a4-7f9d72a4606b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:33:30.153' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4e99e152-c37e-4300-980a-7fb581522268', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:32:03.890' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'085ce649-f6a1-4636-8d70-7ffcbf08e958', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:53:14.560' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e1a4dd01-89cc-425b-9954-8010215a377e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:19:58.720' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'96ef20b1-0b14-4c6d-842a-8060fd668d49', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:26:50.967' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'26719024-96db-4926-b283-80a5d74c402e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:44:37.907' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'64d0fe1f-40f0-4415-89de-80e5a08144c0', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:13:09.087' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c7b75402-527e-4991-9f04-80f2a6f662cf', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:33:40.747' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'835d3892-84d9-4c49-bf68-81566f96a737', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:49:58.937' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e4dc43ff-c945-451d-b7fc-815892c02a4a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:36:51.580' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fd02dc40-34a0-4211-ac28-821541b7160b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:30:41.217' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f3ebd57c-8e96-4388-81c5-822330b8153c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:03:05.673' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'274c1eb6-ccc8-496a-9c51-823292b8b544', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:04:30.320' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'00b48432-c24c-4a5b-9569-827257b9a97e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 07:59:28.287' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6bba57f9-c618-426a-9e0b-8292c6ff5beb', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:34:57.920' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'08b67835-699b-4bcd-9e4b-82ad6546d7bf', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:27:39.647' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'84164e2f-9822-4207-b5b7-82d03a265516', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:36:10.317' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'71fb3299-20bd-4aa1-8599-82d430d4c203', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:43:46.563' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3e2ad27f-fb9e-4d21-94c9-82e9d3641151', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:32:59.633' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'092164fa-6c66-4578-b445-82f9c7c14568', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 07:44:32.033' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7ccdc11c-614a-4b5a-8885-83093ee435e3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:38:46.767' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'42989778-a095-40b7-935e-8328c7dee840', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:02:50.707' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'cdc55dd9-9aa7-4261-b37c-8329be6baeaa', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:25:40.140' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'cc5ee3b9-95ad-4288-9a37-833d040cf646', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 17:41:29.060' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'be378e82-31e7-4d29-975a-834a04325f57', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:16:25.047' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5f97aabb-5bd1-4a82-ad98-837d7e000d2c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:10:11.090' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ccae1fb5-bc94-4dd7-8b09-838dee8906dd', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:47:58.890' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f98fe142-5686-458f-ae0d-83d230d310fa', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:34:58.827' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2efbd184-3886-4063-8557-83d6ee5be539', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:04:31.930' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'395e5ac7-8249-4e9c-9136-840e08fde357', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 19:20:54.897' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd49b0f49-789c-4d77-b02f-847d6373842f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:20:13.677' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5367c87b-2907-448e-8f74-84a3b7b8fc1a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:35:37.360' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8baefe87-8a36-4f85-92fa-850e8f3fa725', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 15:54:29.987' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8b795c6c-2fab-4fd2-b496-856a6276ec03', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:58:50.230' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a03a4112-0dd1-4a28-8380-8586bff3a132', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:12:50.273' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1fd2adc8-364c-476f-8f31-85a4a97cf751', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:23:43.240' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'46278def-c2de-4067-9eb1-85b3b382229e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:13:22.783' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7a04892a-bdf8-473d-be82-8606423257ea', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:45:05.987' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a1dbba1a-8975-47d2-a2b8-86077a8249c1', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:24:28.497' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'285f50be-c5e3-48cb-9435-863c1a5fc8c7', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:21:42.997' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'baec6342-033f-497b-b9f5-867067d8e6d5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 10:02:59.277' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5851ab6b-c9d1-4bb0-9076-869ce01d404f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591644, 30.490157900000003, CAST(N'2015-08-07 06:00:32.200' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'adbd0d14-b77b-4c39-8587-86aca517039c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-22 20:53:52.767' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'23601df8-c344-4a2e-8cb5-86bf85467b8d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:34:15.027' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f3cd2d24-df9e-4807-b20e-86ca831b10ba', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:34:58.717' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ebe27acd-f32b-462f-a0d5-86cf894dad02', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:19:35.530' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'17aa8ff4-9ff6-44ee-8ba3-871887d288b1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:29:07.090' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'591dac80-e7e6-4f36-8228-872ef0937177', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:04:24.043' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'01bf7374-dcb3-4aa0-af35-87be3628df0f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 13:51:26.477' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ec7a2f4c-8306-4661-8075-87e29e484e41', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 16:51:58.660' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3c54db2d-56d4-4aa4-8b61-8808c9344f2f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:10:06.497' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'92693a29-be7d-488b-9d67-884fec34e996', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:51:32.593' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ce2fdbf4-dde0-4477-a299-888aa89c297c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 08:55:32.633' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'357e29a2-7b3b-45ad-b10f-88bb05118f3f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:47:56.093' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'10638355-db89-4a1e-91f7-88dd12fa4cf3', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 16:46:58.537' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6aa45315-a692-48d7-995b-88e6f9f6df04', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:24:20.137' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8356fc69-4c49-4a13-9efe-8945c80c01b3', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:22:35.787' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'82b4d1c2-ddf3-49ba-bf4c-898d82479a2e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-13 20:05:42.173' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fb95961b-0d91-41d4-81c3-8997f73a918a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:11:28.800' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'452737d3-b519-4041-ae69-89b35e1a5dbe', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:55:43.150' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'79a392d3-fa0d-4bec-aec5-8a1f1609ab95', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 14:50:40.237' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c87140b4-b5ff-4242-8269-8ad27805da9b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:47:18.763' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'76cff5cf-efed-4e2a-89d9-8af8e62c8506', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430966236104439, 30.539355945893625, CAST(N'2015-08-20 21:30:41.910' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4715dd92-90b1-4600-a969-8b0e6a714184', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:22:10.763' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e61b9be0-593e-4b4e-881b-8b39e1eeb474', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 19:56:22.973' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e79b9520-89a8-4ea5-afd8-8b8b3430a427', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:46:38.890' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ae2b2f65-e3ee-4eee-8ba3-8b903dc0bd29', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459181699999995, 30.490212399999994, CAST(N'2015-08-06 14:52:05.937' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ddcb9deb-9bf1-44a4-a58c-8b9703847fd8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:11:28.397' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4195c803-a124-4017-a340-8bc21e7ea4fc', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:13:25.643' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'48fb77dd-94fa-412e-a7f0-8bc29a13a1ea', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:29:39.550' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5116f984-df31-4690-917d-8be6d4dc8e84', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:16:11.143' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0524ad5a-7417-4914-887b-8bf159414541', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:14:47.760' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'11b9b585-ba8f-46aa-96f9-8c0c0bb9e45b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:32:10.897' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2fbf371b-e1fb-4a21-8533-8c28362e775e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:13:24.567' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd12a43f3-0bd2-48d4-9300-8c97fee5b224', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:16:36.493' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'abd4a32a-398e-425f-8c41-8cb9826249d1', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:47:20.463' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'66795341-c775-4a7f-b7e0-8cfe3f79149e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430846499017065, 30.539709563730533, CAST(N'2015-08-17 16:16:12.953' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7f02f879-23eb-45bb-9247-8d079f090216', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:03:33.633' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'af719546-8e30-48a5-85b3-8d1707d20229', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:16:22.277' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ba16f172-140c-44e9-910b-8d1d472b126a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:52:47.053' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ea29ad04-81b0-465f-9219-8d64e377c31e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430901875226958, 30.539702539092264, CAST(N'2015-08-23 17:27:31.810' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2c52145c-76d9-4b3a-8e44-8d8b81af7aab', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:26:59.320' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a4c73beb-4e71-44da-99c8-8dab02c5b2ae', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:27:02.227' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'59a6f8de-ced9-4e1f-a126-8dc5e72df7e7', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 19:54:17.230' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5eec58b1-f979-4a4c-b407-8de6313b3ef3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 19:20:24.867' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd7343eca-69de-49fb-9e78-8e75b5377d59', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591796, 30.4901876, CAST(N'2015-08-21 14:43:28.000' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd742fedf-125a-4986-a3e1-8e90cfcd088b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:40:09.060' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b019baed-8493-4ba4-b743-8e9de187b74c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:09:58.407' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0fff50db-c123-4121-bf46-8ea0fac15784', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:04:29.960' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'eadafd8a-a64f-44f5-aefc-8ecc3cb0233b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:14:21.343' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'00ff2548-845c-4220-98e2-8eea884e9e0a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 16:33:58.597' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a3268345-1a66-4bfe-abfb-8f09fc13587c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:33:23.330' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b5c4d3d2-6bc9-4e59-a282-8f286f43b13f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:34:29.950' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fb1b06a9-fbed-4b36-8273-8f5db6d7c04d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:48:23.543' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'08952f79-a81c-4d79-be81-900b154ad4ef', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:49:31.810' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c94def4b-72a8-410c-a238-9040ce730c1c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:09:11.637' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5395b262-eb2f-4522-8db5-90537ddbf5e4', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430846499017065, 30.539709563730533, CAST(N'2015-08-17 16:21:05.853' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3b94df75-4b18-45a6-b3e0-9066122e7e24', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:35:18.097' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'50595ada-1580-4946-8d22-90730a25d778', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:59:13.537' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e0827a2a-fe6d-47e8-9f01-90b0c7fe0423', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:02:12.320' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c62f48d3-b306-47a3-ae8e-90f99a8562a6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:31:12.747' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c516eba1-e3fa-4f36-8989-9129717f6671', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:20:21.493' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5b7dfb81-b729-4272-aa43-91ac19be4123', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:43:09.143' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'771ee426-40f2-454f-a4a0-91b12384feac', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:28:25.353' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e4959af9-ea69-4a58-83b5-91fef47544d6', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:07:30.810' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0f607613-7255-40fd-8989-92dc42c21a8c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:15:08.107' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a77818d8-5522-4c97-a84a-92ebc4014d6d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:36:01.787' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'959430c5-67d3-4669-b73c-9328115161cc', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:52:39.127' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e0f0de69-f238-4223-a32f-932f63d8b40a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:40:15.797' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd4633d3a-09b8-4c1f-9ab0-933ceaa8efee', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:40:36.367' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8d481c01-e96e-4032-8674-93543ea7b1e3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:16:01.997' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e280a5b8-ed02-40f7-935b-93761d43a8f2', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 19:56:03.533' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'94b0ce04-ada8-445a-b771-9381bbd4f325', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:58:32.853' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b6663f4b-4ac0-423a-ad22-938f10cb60a7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:33:48.207' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8f88d04f-ef47-46e5-b99e-939d21537ddd', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 18:19:59.227' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'dbdd31b5-78b2-4459-af28-93af3411607c', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:15:01.077' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'81c8bc1f-06a1-4679-9056-93da77954e77', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:21:33.760' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'17db7aba-cd51-46ae-8b1e-944a602c5b24', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591961, 30.4901811, CAST(N'2015-08-06 15:25:07.257' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'76f0354c-4735-48e5-a3cb-95aaa85e209b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459181699999995, 30.490212399999994, CAST(N'2015-08-06 14:52:05.920' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'745e44b9-8a2c-433b-801c-95d6687f05b6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:06:31.717' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3726a8e7-bfcf-438b-9c67-9624e174dd5a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:06:46.270' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f40568f2-974d-43d6-9476-96fff66cb129', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:17:16.000' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8a194cd7-9b72-410e-a006-97279920cd9b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:31:07.547' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2cd2615f-7c95-4293-9f4c-973038896cfe', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:10:20.480' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e472f359-a30e-4991-b076-97830814e8c8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:32:47.183' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ddef7e54-4474-418a-8c98-97a2bc9779cf', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:41:04.513' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c8bfa9d0-30ea-48e6-a2b7-97aaa26ce1c5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:26:28.333' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'449eae01-7eba-4857-9848-980ae2168a08', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:04:32.590' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'704300b9-ef1b-4a50-8ca5-9845c630ac65', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:20:22.230' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd88f9762-89dc-4ad5-bf7e-98e3dbc1986d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:34:45.870' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f045a6dd-cf4f-4526-867f-98e8c6a68874', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:11:35.153' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6ee3a15b-cbc1-410d-9183-99007ada10ae', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:49:53.203' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'79d23653-9c07-4214-b77e-9921aa921448', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:27:45.240' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'69a1ae43-06ab-4696-b056-99a3b1733b28', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:16:17.333' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'064b8182-d166-41b2-95d9-9a0f81d4414d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:15:33.787' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e870f2aa-e24d-43ac-a29b-9a41a6db2945', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:37:18.203' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'41564ad2-cbd7-4544-aa2e-9a4b0b9f08bf', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:06:09.420' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2b70b2fd-c925-4931-8f4c-9a5ad56d6f0d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:15:23.453' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'474926db-b57f-4757-8999-9a7f4ef25def', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:46:00.750' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2ac6a4fd-2d24-445e-a604-9a80961a8fc9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 18:19:59.320' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e91043d0-072d-42f3-8d3b-9a902b000c67', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:09:28.293' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8aa07444-a51e-4c3a-96b8-9a9fb93d55fb', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:26:49.383' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1fb40e0c-be3d-457e-8c63-9aa2f23d4947', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 16:22:05.777' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3b5b5fb3-dc4e-4de4-87a9-9acf57c6ed9b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:30:12.153' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fedfe659-8b61-4d29-9afd-9b31894e0774', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:23:22.310' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1f60abde-6ab8-47ad-9ea3-9b438c9d3a66', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 07:11:47.553' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ec5dc296-0857-4456-add1-9b5eb5187d38', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:59:39.827' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'003e831f-5932-4d8a-85fd-9b9ec7de3f9e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:28:27.890' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'468c5d2a-7d4f-4cd0-945b-9bbf89817728', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:14:19.053' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ae3c2a57-c61e-4cd6-930e-9bc0754f6350', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:40:07.810' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd8f37e95-58ee-413e-8da3-9c1ed1b9d999', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:44:09.843' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'76ff1b61-e63e-45d5-ad50-9c216b1f0428', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:28:12.797' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3f014249-78db-4be3-bb7b-9c284129eb63', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 07:47:09.150' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7aa1e788-a8fc-4c7f-bfbe-9c2c2df9fa70', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:51:06.760' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'14a0cdf7-3237-4b79-8e61-9c2f4434fd1f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:16:14.983' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'91446c91-f868-4841-b877-9c300eb9d079', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459195, 30.490171699999998, CAST(N'2015-08-06 14:06:50.323' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8db2ed06-b405-43ef-990d-9c352c5a3f4a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:04:16.017' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd6e77fcc-0d96-48d7-89d9-9cff1953a49d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:55:45.903' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f35c542f-b522-4436-a7e4-9d29449eefba', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:52:32.637' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'09c7fb47-4455-4094-b414-9d37bf9d2b5b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:54:03.103' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4ff2312a-b811-4d8e-8309-9d49f8f07994', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 16:46:58.660' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0787a1b9-1af4-4802-9b5b-9d770e0aa1af', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:42:48.290' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f83af652-b2bb-4f29-b114-9d7c31636b3f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:05:31.770' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fdea937a-7acd-42c7-85e6-9dd02fcc8236', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:26:59.993' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a0789fd5-fcef-46c4-8127-9de5ea811ec9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 16:56:59.190' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'19d661c7-4ad7-4377-86fb-9e2790163384', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591642, 30.490200200000004, CAST(N'2015-08-21 14:51:02.000' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f42498c0-dd3e-4aa1-9426-9e2f347e99f5', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:02:40.953' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f7b26ee9-3b88-4061-b89b-9e4004b7a0cd', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 16:56:59.097' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c946608e-7a8f-4ec3-a539-9e65ede74c22', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:15:04.133' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd75f452a-7e0d-43b0-8bfd-9e73082f5bd7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:06:59.063' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'96839ebf-1d42-431d-8e17-9eb536c60fc9', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:10:42.290' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0d5155c5-934c-4a46-92da-9ebad922fd57', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:03:28.330' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b8e27e13-dd48-40ce-9334-9ecc75559c1a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:34:38.887' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'db0bd1f4-ddd7-44b7-8b0b-9ecd5e2bd41e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:19:55.250' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'732669b8-c903-4b40-a9e8-9f046471bfbb', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:10:35.167' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'15bd3eef-9452-4c65-bd20-9f299eaac13d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 10:37:16.960' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9ea446e5-1719-4c5f-aa36-9f3243ae0ab7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:57:05.050' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c0cc8cbe-e8fd-4808-ab9b-9faa90491d54', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:33:49.763' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0a645273-3638-44f5-9165-9fbe3e111989', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:33:28.363' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e854eebf-d490-48c3-b56e-a05b1f5d2368', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 16:36:58.660' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'773680b2-fee6-4cc9-8a65-a05de63273cc', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:14:16.530' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'111dfeee-2921-4705-86a7-a070af490d05', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.431060737442763, 30.539293487297282, CAST(N'2015-08-20 21:46:40.657' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bed14d1f-d46b-4605-a463-a07971406040', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:27:59.277' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c6e7a081-d9cc-4929-962c-a0af953e2d6f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:06:58.957' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4b929c40-7a0d-4386-b180-a0b6805c010c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:16:26.777' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'119cde88-518a-4480-a6eb-a16b0e3385a9', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-23 22:17:50.217' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f299d904-8c44-412c-ab35-a18b78cf3b5b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591961, 30.4901811, CAST(N'2015-08-06 15:20:06.350' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ded777e0-c600-4a43-9bc7-a193693b9ddc', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:26:34.883' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f874a4a5-f1b2-44e7-94ff-a19d91d02bbe', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-17 14:05:53.617' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4e7d5bd9-b741-40fb-8697-a22f9cc7a973', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 19:54:24.303' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'40185be4-7c93-486e-b9ab-a23da8e828ff', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:03:20.857' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'48e39870-c22e-4482-8dc0-a271f3dea8e0', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:27:08.507' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'044172ea-1f30-4956-a4fd-a285a88620e1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 17:58:58.463' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'79167c99-7fb2-4511-bd70-a288f99895d6', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 19:59:20.423' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8b9ed970-ddd5-4fff-abde-a28fadb72ac2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:39:45.547' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e359f056-6684-4d41-bb8d-a2ae28e7f18e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:23:28.317' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'921dc0de-d4ac-4bdb-a9a3-a2c87f562128', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:47:11.960' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'37abe032-21e0-457b-85c5-a316948242e6', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 09:05:21.340' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ce83456f-cda9-4f19-a742-a36d5ab1e31c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591843, 30.490213499999996, CAST(N'2015-08-06 15:04:51.743' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'66e4eebc-6bb6-4089-9c41-a371998b2fd0', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 06:10:49.227' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fce72346-921f-4ae1-a4b0-a3aca8dce56b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:05:45.703' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a6c63e00-ee65-49a9-83e7-a3ce9d525991', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:33:24.547' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1f569a92-44d9-492f-b3b3-a3dea4894366', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:11:58.630' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd1ca62de-6a25-4472-8cf8-a3ee9ddff99f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 10:10:44.103' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd30f834e-7de1-4e8e-8870-a41d221ba5c1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-22 20:53:50.800' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fea820ae-60c1-4d04-820b-a47a7d0bced0', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:52:59.653' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7b059afb-5772-4b0b-bba1-a49535f13d0c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:14:26.663' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8a218c77-fbfc-4e38-ad8f-a4bff69e375b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:05:44.003' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8f2f216b-6862-4ede-872c-a53004949c03', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:42:26.933' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'74cb7c97-0b16-4f6e-89c7-a53f9940e463', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:42:42.780' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c2f36c3d-16c6-4f65-96bf-a551d724ed0b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:31:48.647' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'513e7f63-b113-4895-a107-a56493b4ef02', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:07:32.273' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'34d703d8-fdec-43b1-bae2-a5869e6b1700', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:26:40.160' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e76ce91b-d61b-4a49-906d-a5a7067e969b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 17:24:11.590' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bfddd8db-2376-47cd-9236-a5c7f705a532', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:49:03.997' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9948abba-6ade-4cd6-9289-a5f7540fb416', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459198799999996, 30.490172399999995, CAST(N'2015-08-07 05:59:55.180' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'da275749-e2fd-4a26-93c7-a6068b376a52', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:20:37.197' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f69a2ce8-8751-4c9f-a16f-a6467a540c97', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:14:58.463' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'25316d8b-a677-49f4-886b-a65c9b71c325', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:06:46.477' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a2dc3a19-09d0-4d28-972d-a66feb22fb36', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 07:54:28.217' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7825376d-8d4a-478d-b93a-a679ede6f6c1', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:02:08.127' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'65617c4e-d3eb-4fee-a47d-a6cade080b95', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:20:09.107' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'17466da7-beea-435a-abf8-a6d9cf8910c9', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:28:48.657' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e51dfac2-c40b-492d-ad06-a6f472af8210', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:36:07.350' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'416a9915-c186-479b-96bd-a6fa601f5e39', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:21:55.747' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'89ca8a2b-d719-489d-81f8-a71dd1cb596b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:05:48.777' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e5c735c3-f0c2-4915-b5bf-a78bedaac50c', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 19:53:08.307' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'93d5de16-8936-4974-991f-a79d5c0f47a4', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:39:48.673' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f9db2cf4-eed0-4fe7-ba03-a822d6877a78', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:27:38.887' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2eb10ee6-c489-48b7-99e0-a824db11e47f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:18:26.770' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7e96ff58-0dec-4adb-bea5-a8714d63a020', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:30:25.100' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'83fe327e-f161-42d5-b9e9-a875a4556884', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:20:07.477' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1736b6e3-2501-424c-af5a-a87c110dc640', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:39:30.340' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'616a7bc9-ac44-4770-9c2c-a883b0a6121c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:41:05.740' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ad955c6f-ebab-452c-905e-a88d4dcf5759', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:21:02.143' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'daa3effe-e878-4431-9303-a8bae77a3555', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 17:06:05.770' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'500e31be-3fe7-4f62-bb86-a8c629df0b62', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:18:50.513' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f8078a18-194d-4e9f-87bb-a8ddf66c2ebc', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:33:13.637' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'df81b34c-5591-4f24-b363-a8f583301f6a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 17:24:11.357' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8daa2772-2d26-4860-9158-a92686559905', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:32:11.407' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a7320df6-08a4-4922-b95d-a9594f215903', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:14:48.930' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'45c2a1b3-4846-4d43-8d1a-a96231739b09', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:11:20.090' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e40715fd-252b-4515-b2ae-a96de0fe6605', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:13:32.530' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'02f18676-5423-4088-9b3f-a96f6b11e681', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:43:00.450' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9672aad7-de57-4524-b5d0-a9838cb8b050', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:02:02.327' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'30080fe2-72f5-4678-af5f-a9c50dedbae2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:31:03.437' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'18304b7f-2d0f-41e1-932f-a9c91bc08f86', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:16:19.890' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'aec4ac66-00fb-4984-9063-a9cacb9ff490', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4308753232117, 30.539757647335808, CAST(N'2015-08-17 17:59:17.000' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'60c80449-caae-4d91-b91b-a9f0257d2ef2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-23 16:32:48.393' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'94120be8-193b-4a32-b7ea-a9f696c8ee16', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:46:07.783' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'40f54ffb-4169-4725-b417-aabdc998ae15', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.431060737442763, 30.539293487297282, CAST(N'2015-08-20 21:48:53.843' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a96aed7e-a2fc-4ee2-ae74-aac286f6ae8c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:17:19.497' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'567d441f-acf3-4628-9b0c-aaca41df6e6c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:30:21.513' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'68b54043-a87e-468d-abc7-ab102ccc937b', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:42:35.433' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8a36acab-0308-4e1a-b956-ab17baaa2325', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:09:10.017' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'21a8fd5a-0342-4759-8ed6-ab46a8e6f1b2', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:41:51.840' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'72e4e7af-a3d4-4405-bea9-ab7da16c774d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:56:25.697' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'cd78a6d3-46f8-4586-be7a-ab80f1d28d71', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:48:58.077' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd01b4580-7b04-4bfe-8526-ab836d2d8c40', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:10:21.227' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'192d3785-0d51-4e6b-a912-ab8b6f324da9', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:43:52.977' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5e17d4e6-5fb6-4f47-85a5-abb0e87fa1c5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:43:43.733' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'944154a8-b8e1-4d92-8713-abc7c871b3d2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:54:46.017' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'720cf10f-7c41-4f66-a9ae-abf2d508bee5', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:30:40.640' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'492c2645-0d82-42f3-9470-ac25de9ff780', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:10:34.350' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'725e3549-0de1-4184-873a-ac5a52b9e1b2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:46:08.720' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'60879808-0e10-40a9-ad67-ac62c810cc02', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 17:06:06.790' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fb7e83b6-0746-4051-9e45-ac716013ab11', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:34:27.600' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3486d157-a3a5-4ae9-aed1-ac8500ee09bc', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:52:41.937' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0fa420bb-0031-44fd-987c-ac8dbe6e3856', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:15:24.987' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c6115974-a2ba-47d5-82b5-acf9222f7ceb', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:04:31.067' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9758ff4a-789f-4f7b-9544-ad0849334c02', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-23 22:33:45.077' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'37840029-623c-412d-93c8-ad1f8256f02e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:36:48.663' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4b86b6f2-1dba-4c6c-b0f4-ad2c1e8049f2', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591699, 30.490181900000003, CAST(N'2015-08-07 08:43:06.730' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fda89cb4-152a-406d-b441-ad301ee8b6fd', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:04:12.803' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2edca747-f235-465c-bf56-ad3de9187f65', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:02:19.283' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ac8d121b-bc54-48cc-94b5-ad6dd5597d41', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 10:36:07.173' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'63924e57-7821-45c8-8595-adabec5f7b6e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:23:06.383' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'25d6bc41-61ea-4ccd-92d4-adb16c7e7277', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:49:22.967' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4860f580-24ae-40e0-801c-adb733269b63', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:18:52.027' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'83aefacb-860b-4013-b7c7-adbd15dfb775', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:13:51.717' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e90f3eee-5a9a-4e31-afb0-adcf5fe9f086', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:29:38.977' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'53206fb2-1c34-43c0-8e51-ae31e4cac403', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:44:13.620' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1585ad84-f16a-45b5-81c4-ae6a65150d86', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430962545625725, 30.539537840299396, CAST(N'2015-08-17 17:18:36.737' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'72bd1c64-1b36-4745-95ef-ae99c21f2298', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430816184172265, 30.539692925524406, CAST(N'2015-08-20 21:29:41.630' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'82f68395-f976-41c9-8283-aea60ca2780d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:29:49.493' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5fa2dc6b-07f4-4174-a871-aebd7833e622', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 19:14:36.863' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'008bf859-bcd9-4f4f-9b6d-aede138284f3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4307716946641, 30.539654738146012, CAST(N'2015-08-22 20:48:55.587' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'13f043f5-7592-4a58-a283-aef2cffe5d61', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 17:13:19.437' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'376ca316-66ce-446b-8ef0-aef68020a758', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:27:46.837' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2adb95a3-7bf2-41eb-b310-af0ec33020ec', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 15:49:17.170' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5c78d906-96b7-4461-b716-af1047bfd5e2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:42:25.750' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f919f16d-b48d-47ec-b026-af17bc5a1ac0', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:02:20.517' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'62042624-4d22-4f9f-b1c5-af5d821da7a9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:06:59.627' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b0e46c18-2c75-4edf-b1ea-af627f19ed79', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:23:15.437' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9d1c7796-860c-440f-8add-af6930a76b4d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:32:57.333' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0be93aa2-38df-45a8-9944-af74064101e2', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:10:44.387' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2b319fc6-237f-4642-accc-af86bd406e93', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 19:55:45.153' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9990887f-98f1-4101-b199-afade9751fb4', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:37:02.393' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b73d5704-bea0-4db7-a309-afbf9ecf5dfe', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:47:42.750' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'04713b91-b91a-40be-9982-afc50f3935be', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:28:56.553' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2c4ed0d5-39dc-435c-823a-afcea687d984', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:01:18.267' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c756d7b6-8eb5-4b2e-b256-b00414afa5a2', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591748, 30.4902243, CAST(N'2015-08-21 15:01:16.640' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7e592a26-08c5-44a5-9b85-b068ceb8cec7', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 08:52:11.617' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e1ef0c30-2c20-4525-9c55-b081463fc753', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:53:09.057' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'17adcc39-f005-4eac-9a6a-b0fd632a5639', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 10:10:56.677' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e3337b98-a7e4-4584-a725-b1269893cfa5', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:55:28.287' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'56510837-5092-4ee5-b463-b13458b8134a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591843, 30.490213499999996, CAST(N'2015-08-06 15:05:09.623' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f03bef19-ae19-42f7-ac51-b19028829801', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.431060737442763, 30.539293487297282, CAST(N'2015-08-20 21:46:40.657' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ebdee4a1-c542-4a27-9161-b1c8f82aafe1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:04:45.443' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bf248040-1710-43c3-abca-b1e405bc2a38', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:43:36.910' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'501d6492-c03c-406b-9afa-b210622bc17b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430687200278044, 30.539809539914131, CAST(N'2015-08-20 21:32:51.787' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'dfea310a-b9be-4d78-8421-b22c8ebf2e87', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 19:20:24.197' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8d81202f-929f-4356-9efc-b25755eddf6c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:55:00.653' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a489e115-056b-42e9-8f01-b29ff1e61d95', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 10:03:38.967' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'98dfbe3d-33d6-4575-abb4-b2ec11792db7', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430922236139274, 30.539735108814408, CAST(N'2015-08-23 17:38:27.293' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8b86c182-143f-4086-a6bf-b30cddf552c0', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591895, 30.490192099999998, CAST(N'2015-08-06 15:30:06.120' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3d32aebc-ef71-40d5-aa50-b357863f7ed0', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:04:11.433' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f81a3e72-101d-4784-98c7-b376c853cf54', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:00:16.997' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c0dfea0d-e2d8-4478-ae04-b38df38ad9b5', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:17:11.187' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9fe2de38-d40e-44ff-a1f8-b3ab768302a4', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 15:05:49.617' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'de257571-2159-4f15-952b-b421381fefd9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:19:32.250' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0a49cd52-9ebe-44be-8159-b426136a2bb9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:28:50.810' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bbb78d3e-0740-4511-8a0a-b44a3c5b7ae2', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:44:34.907' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'07e7192d-d8fa-4618-99df-b4621772d727', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:36:12.283' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b86736fc-0535-497b-a4d7-b496dd94efb1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:19:37.897' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7be4263f-4da6-4d20-a238-b4c14b419323', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:21:47.863' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'292644ad-9f3e-42e1-b5e4-b4d764f90fa8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:49:50.810' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3ecd1d7d-3664-4311-b9a2-b4da71c71e82', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:20:40.067' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'06f52715-1835-415c-8874-b4ee482b00ea', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 17:38:13.927' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e5cbc14c-eafa-42d4-9a4f-b528a1cf177a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:15:41.460' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ef945498-3cfa-49de-8d91-b53ab36655b8', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:57:59.283' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'39338d9e-a3db-4234-a948-b5794808ed86', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:49:09.693' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'70601d3a-af89-45f4-ab6a-b5a626b4ee67', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:29:48.647' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'95aa87be-d490-4283-a512-b61b4888f478', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:46:44.763' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b8a5f67b-9bc9-4fd5-8598-b629f26dcf17', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:59:02.663' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f5a64776-1248-462c-9086-b631b6669f51', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.431060737442763, 30.539293487297282, CAST(N'2015-08-20 21:46:38.943' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3646d20e-ee83-4ffb-a6c6-b633fb52dd23', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:50:04.467' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'795cd684-335d-45ab-a57a-b65403751faf', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:46:14.403' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1490241b-6027-4b46-b53a-b66f3527c29b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:04:01.377' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3b5f8a61-a432-4889-9d6d-b67071177a42', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-23 22:36:15.180' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'42fc6c13-7531-402a-b1bb-b673e2903854', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:22:07.333' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2d8c1952-aad6-48f3-a5e8-b6d4767c1b06', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:25:08.117' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'38a94d88-c884-4963-9cda-b6d9333e4c68', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:04:24.387' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fe79750e-96c5-4a06-a8b9-b6fbc0e70c83', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.431060737442763, 30.539293487297282, CAST(N'2015-08-20 21:48:51.643' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9b92323e-ecca-4b9b-9f1c-b6fd0bfe2655', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430966236104439, 30.539355945893625, CAST(N'2015-08-20 21:32:46.890' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'68e85d8c-0ed6-442d-a488-b6fd1ebd6144', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 22:56:46.670' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'039bd34a-1386-4433-97bc-b75050279d0a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:15:31.983' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8e876786-14af-4eee-a517-b781c3654379', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:18:30.367' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bf4f2b35-5f3c-4509-87ed-b7d87f0ee19f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 16:33:57.443' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b796bd31-532e-4fe2-917b-b7e558d60577', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:43:41.330' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c88b91c7-8464-4494-9d2f-b7f38f251790', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:21:32.550' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'34285244-f956-42c0-aadb-b81f3a06a570', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:21:50.420' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'49542c84-3112-4ff7-aa64-b8421a119113', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:52:28.617' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'980f8d0e-183e-4644-9e12-b8c512be3477', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:43:15.187' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1e2c9b83-c806-4c23-8afa-b8d2dfaf3b50', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:44:40.123' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f0be99b9-95da-4794-85f4-b8de592e5b04', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:15:39.247' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bad329d7-a3ee-4d0d-80d1-b8ef9fa3b7ab', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:29:04.937' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'58720c98-edec-441b-93ae-b8f50c3b53e4', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 15:46:34.380' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f0e68e16-b82d-4982-bdf4-b946100c4df6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:13:17.937' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'465fc5c3-6fb6-4053-989f-b979f888f373', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:20:28.327' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ffe839e7-abe8-44c5-8ef3-b989279e60bb', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:41:30.893' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fede48f7-d097-46d8-8d6f-b9936a5210c5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:34:35.450' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f8c50cbf-11ca-4950-ab49-b9a3cc321ec2', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:15:28.320' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bbe01431-4cd8-4ff9-a526-b9a866ab8590', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:44:16.193' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'aa062d4e-edb3-47bb-a189-b9ba0066446e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 18:14:59.193' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e8e096b0-d1be-4713-b875-b9c145fbe5eb', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:12:45.513' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9ca2002c-03c0-42a0-92e0-b9e457f2bda7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:35:55.377' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9256eb00-4445-4b6c-b8b5-b9edce2493d9', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591644, 30.490157900000003, CAST(N'2015-08-07 06:00:32.730' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'898fd580-0df3-43d7-aba7-b9f6ad07b056', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:54:59.313' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'525e8cc4-ffe3-44c3-b8c0-b9f75e797ce6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:22:55.210' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7b71bf74-63f2-4e2d-a4f3-ba4548b8bdb1', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:34:24.977' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'94470def-4cdb-4024-9ae6-ba889539e084', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:06:11.827' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e83ee4ed-af65-4c8d-8494-bab806224c6e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:09:48.203' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'322c256d-ff25-4e0a-afbd-bb3ed89f969c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430910711390851, 30.5397212896175, CAST(N'2015-08-22 20:48:45.167' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5cfbbdc7-20c8-4ba5-a3b6-bb73e6ba97e6', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:13:53.447' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f2763b55-56cf-4784-90a7-bb7811432ac2', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:45:28.903' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7919bb8f-3e93-449f-add1-bba8757373bb', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:13:34.310' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f6cf0944-d6ce-43d5-916e-bbcd15b0dc42', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:10:19.997' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0568d587-9e27-438e-823c-bbdcc3a2a73e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:39:29.910' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0cb3fb76-ba8a-40b0-8da2-bbe16ea99a84', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:32:12.153' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3959ada5-e27a-4bb8-b620-bc00d8220aa6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:06:54.523' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'41878d3a-a90f-4bdd-8614-bc1bb2fb3c83', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:16:50.507' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9f799616-808f-4961-8be2-bc4e982ef088', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:49:33.327' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5d545232-36bc-4110-8372-bc535be63da4', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:40:28.443' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ff1649cc-cc9e-4213-b0a0-bc797c1c7f62', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:48:15.810' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1a41100e-bcc3-4fc0-93af-bc9bb54f9f57', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:06:18.200' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6544831a-82f9-4633-918a-bc9d6d1e106f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:49:52.893' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c2e2f9f9-a0b6-41bc-97e6-bcb8720c1de5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4593196, 30.490916799999997, CAST(N'2015-08-06 12:37:11.327' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4c9fc199-0d9d-4711-8c8d-bccd43d5b4e1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:58:26.430' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4c9e2818-6b14-4fb5-aedd-bcd3b16d58d1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:49:33.573' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'04dc4496-590b-4dca-b55f-bcd57424f36a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:27:18.853' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4ee457fa-cbee-428f-8d2b-bd0b7f33b19a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:45:48.417' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c13fb6f6-1c3a-4308-b232-bd236822a885', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:25:13.407' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2427bc16-d2c7-4009-b9b2-bd2efeff9e7c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 06:10:51.467' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'90a76476-2fbc-440e-9f60-bd309de8b5e9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:58:38.173' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f648da56-9b45-4123-83ec-bd6ab82dc5c1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:15:50.950' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6009afd5-b3f4-40e3-9f3b-bd839f9c783a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:36:49.877' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4d1bc8f3-4f25-4ac4-a25b-bda7a3deda9c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:23:59.487' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'63adebd7-0bbb-4d2a-8eba-bdb17960fa08', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:53:54.917' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd2c3bf42-7c44-4281-8fdc-bdb668e15432', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:15:18.840' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fa79b6ae-acb0-4165-a706-bdcf965283df', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:38:30.357' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bd0e7b91-3b05-48c1-9113-be3c608c3878', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591642, 30.490200200000004, CAST(N'2015-08-21 14:51:16.243' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8f4f30b9-bc11-49ca-b933-be5378ac9e7a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:14:47.703' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5b190493-cf30-4bb2-beec-bea15d562473', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 19:00:02.217' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'332d37de-44b3-4eae-a7c0-bebeaa868ad5', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:42:09.280' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9a7cfc1c-3a47-420c-b842-bed1e81bc147', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:47:22.940' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0ff6d626-5ff1-4f4e-a4f2-befba7910580', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:02:14.783' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'85c3d309-ebc9-4246-83db-beffb91df4b6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:07:32.327' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'83c9e9f4-1747-4278-be6e-bf68daad157c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:11:20.370' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'21aa7070-ac6e-43e4-85ff-bf84accc9eac', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:56:24.667' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a0633efd-67b3-468f-a7ea-bf8a4c362e76', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:40:49.533' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'948d3c6a-a2ed-40bc-88c4-bf8decccefa2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:32:04.073' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c2c07822-5b52-41b6-bb70-c02bd305043a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:51:50.597' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5befe67c-4c19-4124-8fff-c0450935f235', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:58:15.373' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b2f664e3-e36f-4dc5-ad6d-c08174d0bd93', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:18:27.123' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ce795986-5049-47e7-bee4-c08986c62532', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:16:18.077' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'14ac2fcc-555b-4caa-b605-c0e4034b4fff', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 10:03:45.207' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ef2047dd-19f8-4f3a-8220-c11816cc6b91', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:23:44.747' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c6b9b3cc-0431-4ef1-a705-c1305dc8d739', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:42:51.027' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd3811973-c37b-44eb-b59e-c13c3ee6a2b1', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:34:16.790' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'49dfc45a-d5b0-4c0d-862e-c14d043693ac', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:28:07.740' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'33c83e0b-1a57-4390-af00-c157ab6e4f46', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:11:32.957' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c6dcfa9e-ce99-4a4e-83d3-c17bd95223e0', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:00:58.393' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'844a085d-cf50-406a-a356-c18899c8807a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.43081981925895, 30.539779220028503, CAST(N'2015-08-22 20:49:23.777' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd489a97c-3e47-4529-9039-c1acff2bcd30', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 08:52:03.230' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd0917c5d-738a-46c6-94e1-c21ab1f25cf7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:50:30.257' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'accc1496-3535-4f10-b5a9-c24083afef85', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-22 20:53:39.257' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'aa820f0b-8c28-495e-b93c-c24632ae4260', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430797299999995, 30.539871500000004, CAST(N'2015-08-17 16:56:24.790' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c8c55cf1-a9c8-4433-8b90-c277ea007ee9', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:01:28.290' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'957f1e9e-e36f-41d7-b875-c27d62d7d9f1', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:03:38.050' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'38f96870-9274-425a-aff6-c304ce526eb5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:18:28.817' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'19776ac9-da36-402d-bf19-c31a91e14b32', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 07:57:10.850' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'641a82df-6fd3-47f5-aeec-c33d06c2c7a5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:23:26.507' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ce18da3e-301c-48e2-9b97-c3485f89ca25', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:03:15.137' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'74a8541b-1721-4a43-b4f9-c34d46630d1c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:11:28.927' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ae5a42ab-2d67-47ab-8279-c3871ee105a2', N'3d70c1c0-e191-4837-9fa7-3398c928efaf', 50.4472817, 30.447214199999998, CAST(N'2015-08-04 10:09:17.020' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'60f39a18-d070-4d92-b79f-c3c826ce7229', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:21:09.067' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8217945f-8b3f-4c09-83db-c3f88d5ec6ad', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:02:32.190' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'59e79e3e-5d1f-4bc1-91b0-c405c8d8458e', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:10:10.550' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'866b050d-fcae-479d-b014-c40dc7612a7d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 07:56:28.277' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b6284578-ded8-4af2-92b6-c46fb0998b3d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:18:15.120' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8d38ab2c-02d5-4a39-8c27-c4b24779b596', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:31:34.593' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'205d1967-0870-42b5-a14e-c4c461482f09', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:22:28.330' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'149c562f-650b-4e1c-a400-c4d1e7273913', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459181699999995, 30.490212399999994, CAST(N'2015-08-06 14:52:05.967' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4ffb2593-aa01-40cc-8184-c4d52cff0f32', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:13:28.820' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c04b142a-bb71-4fd0-8251-c507b73575f5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:03:32.390' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'73bac1d6-a034-4331-9853-c541046bbf28', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:11:49.967' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9afad29d-0d79-4dfd-ada7-c58d4d37f2bf', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:23:04.403' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b9a338f2-a7ef-41cb-aa4b-c5fae4395631', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 17:37:08.433' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'93ad677c-be03-4d9a-81a8-c5ff239abc61', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591843, 30.490213499999996, CAST(N'2015-08-06 15:05:12.523' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'430a5225-93fe-4f23-84d8-c610499f386e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.43075006455183, 30.54017742164433, CAST(N'2015-08-17 16:22:39.223' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'eeb89d90-30a2-437f-be25-c6724f699b81', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-23 16:36:17.887' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'519aaeaa-30bc-4a9f-9886-c6e11ee4e7ee', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:06:16.027' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8458d7f5-4661-41fc-9612-c6f06d32ee80', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:17:38.730' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3776658e-8964-4525-9ef6-c77607279bcb', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:30:45.023' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ecb40361-d728-4251-9220-c83866244332', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:46:22.720' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e7df2682-4b22-42c8-a295-c84b7b16e079', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:39:46.300' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c3d0a3d6-7834-420a-8489-c86756b28eb5', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430966236104439, 30.539355945893625, CAST(N'2015-08-20 21:33:42.273' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6b5ae932-6e80-4e37-abae-c86bad7e43d5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:43:45.910' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f568ef4c-40f2-42b8-8e79-c86d66cee5d6', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:41:16.350' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'db114555-c35b-439e-96a5-c8a447632e85', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:26:04.383' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'02830a0d-2cdb-4a12-aed8-c8b1e147453d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:24:48.497' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e76c51b8-715b-4304-ba8a-c8e44b1615d3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 07:55:15.610' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd53cc188-be75-4ded-aa30-c8fb7bcec408', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:58:11.217' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a37fa81a-92c6-4a03-8f86-c94277f06792', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:21:02.583' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6c767d04-a85b-4ebf-be9c-c971968249b3', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:47:56.560' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9887c4f5-cdc2-4d0a-a752-c9836b5e03d0', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:37:32.297' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f6dffa25-0a9c-496f-ae41-c992a7fbba86', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:06:41.093' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2a8705b8-bb32-4f91-82ad-c9d3dc0978e8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:19:58.843' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1634e067-d76d-487d-bf28-ca0ff1693064', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:55:11.560' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b9540d14-5cf1-4f28-9b7b-ca29ecc3ff0d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459198799999996, 30.490172399999995, CAST(N'2015-08-07 05:59:54.650' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'59b43e01-6267-4b92-a8fa-caea15562b6e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:12:30.807' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'386240aa-8266-42e8-ad8f-cb1fde7aa409', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:02:33.007' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b3f80f55-7b5b-43d7-ae06-cb59d547d482', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:22:12.037' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'00817390-b6f3-4324-9d90-cba8d1fbf7b8', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 17:19:15.693' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8d9fe1fb-cce6-4b2c-b0ff-cbb75e57ce6d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:21:28.310' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a707b221-568a-428d-8c4f-cbc878bd8785', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-23 22:41:40.797' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4d6af512-7d77-45e8-bf92-cbd0951aa240', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:17:09.467' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd579c235-f842-46ed-9a2d-cbdcb0851878', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430873933272949, 30.539781389066906, CAST(N'2015-08-17 16:12:49.007' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ee6e9b6e-9d01-4713-9091-cbf1a5cea0bc', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:53:16.577' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bdbf9df0-4acc-4bd3-b4bf-cc23b2dd0da5', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-23 16:36:56.207' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'89265fcd-d4fd-463e-b3e6-cc43c8a9012b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430966236104439, 30.539355945893625, CAST(N'2015-08-20 21:33:15.580' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'49984cd5-f04e-45b6-84dd-cc55dab347f0', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:37:01.177' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'23c724ae-7ee3-486e-adc2-cc68019446e0', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 19:04:22.793' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3b1893b6-7b9b-40a0-9fef-cc89bb90ae6c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:02:28.307' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'731f0ff1-f11b-42b3-a622-ccf058639b2c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430846499017065, 30.539709563730533, CAST(N'2015-08-17 16:16:13.453' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'47e50568-1fcd-4152-8607-cd048144da28', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 17:38:15.830' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f3430b45-e177-452c-b658-cd14b23f9c03', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:42:23.957' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'699dadf2-5fa9-4130-979a-cd2d00e16c5e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:49:58.717' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'164d108f-d11b-473b-a481-cd35000c2d75', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 10:08:45.787' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5f3bac10-1790-44f8-8562-cd84ef3473b1', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:33:59.713' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1beccd52-a59e-4205-8922-cd917d6789f2', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:48:28.580' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5cd48242-f244-4b01-ad46-cdd3d1824073', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:38:05.293' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6a3acb90-f6c9-4e26-98b6-cdd48923712a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:56:02.130' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7aef1f65-1321-42e3-9653-cde60721bb50', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:23:49.030' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'71451c34-b692-4068-9dc6-ce33e5bfea44', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:08:20.443' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8f8ae91e-1380-4e1e-81da-ce4ca7d7516e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 08:57:07.407' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'446f71c9-963f-4bb3-aa4d-ce6611188570', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:45:37.640' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7a18d82c-a751-4626-a843-ce70211445f9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-23 16:39:21.390' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4caa7667-daaf-42a0-a7bd-ce8f7c3713d3', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:03:36.260' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6099d5dc-572e-46d2-ac6b-cec22321c839', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:28:59.847' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f9ce20b5-922f-4309-b07f-ced68ed89b45', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:33:12.893' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'daf3465e-1272-4c2b-b781-cf21d46c198b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:48:17.120' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'062d6400-475d-48fb-ab73-cf403ee0dddb', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:45:51.007' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7ed5d67d-057b-401b-a654-cf5847d4deb1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:50:10.033' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'db8fbca4-fc37-4b89-9cb9-cf76fd592a75', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:23:58.750' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'340daee7-689f-4df7-9e82-cfcaae253240', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:03:45.787' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6cd0869d-3c00-4df9-8eae-cfccfbfb5a02', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:09:42.177' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c9625eb6-f96b-4d68-9cdf-cfefc3f4e809', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:06:03.333' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ae747ef8-5424-4bb5-b667-d021ffcaecd8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:43:26.467' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3ccc1e61-58cd-40d2-89b3-d03a84029601', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459198799999996, 30.490172399999995, CAST(N'2015-08-07 05:58:26.490' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'40424f97-aea0-41a4-ae09-d03bedbfd79e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:03:20.073' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'93f3fd0b-07c0-42c8-8297-d06367c31996', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:41:24.147' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'72db48ed-247a-490e-902f-d079d6828a70', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:28:01.177' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6bb7b8a4-cad9-47e5-8498-d080e3c4ca35', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 08:52:50.460' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'543f7223-f96f-492b-8932-d0e27a22d422', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:34:21.170' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'58cf2756-8b69-499b-9a07-d0fdb2033f04', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:45:41.640' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'73a1a22c-8374-432f-bff3-d114607cba20', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:12:49.460' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'19e0829f-d068-4904-aa74-d124a17ebc9a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:56:06.370' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e279b12b-9c30-45d7-8b26-d136dcd828f8', N'3d70c1c0-e191-4837-9fa7-3398c928efaf', 50.4501, 30.5234, CAST(N'2015-08-17 17:08:40.983' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'114ea752-9cf4-40d2-a5f4-d19d2d07f1c6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:18:33.387' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'52d8f612-0737-4a92-a80d-d1ad576e94f8', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:02:23.590' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7ca47627-f9e3-4165-a69c-d1d8291ba7a7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:49:41.060' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'aa636c3c-d9c4-4ba4-ab58-d1ed8d9a6296', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:25:50.833' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'63e7ad2b-4415-45dd-aff9-d219c65ee393', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:14:04.813' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ecf478ac-f2af-4d40-a54f-d22ac061e496', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:31:20.500' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'681f4a46-e6ae-444f-9cef-d26e12f2696f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:33:09.220' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'da694398-e30d-4a87-ba39-d2790f0a0c1f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 08:52:20.383' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a10139d7-16c3-4825-9eaf-d29d391846ad', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:28:59.267' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'94265358-b2ad-476f-9a00-d2a56f681d66', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:55:09.833' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6163dfd9-b4f1-47d2-8fb6-d2c2b2ce5df3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 16:35:02.300' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1ca8d5d1-4796-496d-bd75-d3187b7c00ce', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430808525827409, 30.539709237180737, CAST(N'2015-08-20 21:27:51.863' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'eb2662af-f701-41b0-a9ee-d38307fe69d9', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:28:23.907' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1e65e5bc-5a72-4c60-8ad1-d3a19dbf9dd9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:53:34.150' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'64c4de9c-4d15-42b2-a8c7-d3bc2bee5bee', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:46:02.377' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ee46a500-95c9-45a9-b615-d457260ea822', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:24:26.307' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'20b5d3b1-cae7-4b0e-92e7-d4573e1b9865', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 16:52:49.690' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2c334a57-021c-4e68-bffc-d484bf3cd608', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:40:16.500' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fd61751c-f35b-48bf-8fab-d493b5f36eda', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 16:16:48.383' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b0f340c4-71e0-437e-9d64-d498ef99e02d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 08:54:55.290' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c2832c51-94bb-4758-af1c-d4b1d6c5d0af', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-20 19:48:36.587' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ec2ada0c-3654-4ec7-b1ce-d4d7619fb387', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:17:47.397' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'eb872409-8537-4be5-a8a5-d53063a3a1d7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:13:27.000' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2f327ffa-15e3-4cbb-9acf-d5311219d0c7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:15:13.077' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f449bc5e-fce4-4406-9ed0-d55fc7446594', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:14:24.157' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0736428c-9cc9-49f2-b4dd-d57a0036e3c3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 17:56:07.380' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fbaa78ad-d23a-4bb2-ba20-d5871a36c038', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:17:01.227' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5143fdde-259e-45e6-8a79-d5eed4510a6e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:56:26.980' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'cd09f0a0-97e5-42c6-a0f7-d60e98a23074', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:48:25.097' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'226a4074-7d25-43e1-a204-d60ed4e386e4', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:44:17.910' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0e25755a-8607-4970-9cc1-d65117e0d6e5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:47:47.733' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'67fafce0-2cb5-416e-82c3-d673c8ec890b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:58:09.947' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'21a64e83-352e-4498-88ee-d6f6dd9517e4', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:10:51.373' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6c8facf4-6380-4552-9dcf-d72896ece0e2', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:49:05.007' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'595b01a6-9f5e-43db-9983-d758377a0623', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:59:58.810' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6314c36e-160b-4040-b6c6-d787e40feac9', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:15:17.390' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'59d0b973-8a5b-4e77-b4a9-d7941c037b3b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:47:08.033' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3a0ddd9d-2555-4bba-97a0-d7a55ab66cbe', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 11:50:46.653' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3de87dbd-8ecf-4a6b-abdb-d7ce526816d8', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:31:59.820' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6dbcd400-c43a-4f73-8752-d8734ba11db0', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:35:14.747' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6ec0b07b-da7e-4414-9227-d8807f7e76f8', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:49:37.977' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8084ac1d-b490-46bc-b705-d8bbf15d85a9', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:47:37.280' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2fe75248-589e-45ad-bb1d-d8c59aed8ec8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:14:58.737' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5d8f1dae-67ce-4c2b-acf9-d9085a4db1b8', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:48:16.970' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1fed2c4c-bbf1-46f4-82a7-d9adbff30707', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4309744322269, 30.53946741929991, CAST(N'2015-08-17 18:01:33.073' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9b98eb23-0bb0-46f0-a991-d9b0d59a81b8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:56:41.450' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'31d6ad66-288b-4600-915f-d9cca816394b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:51:55.887' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'80bb4dff-2aee-4141-bc72-da13bd27835a', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:12:58.517' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0985ab26-b666-4098-a045-da3cc7f67acf', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:32:42.810' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f43de991-9787-4c08-bb49-da45f033dc9a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 16:29:23.883' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ea7ae620-02c4-4363-9dec-da51f3200600', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:09:11.557' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7675facf-9f56-4c6b-a59d-da6f12a10de5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:16:34.547' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd8fb751f-af68-4628-b42d-da781bac9329', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:36:05.820' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'18087802-0613-43dd-8ce5-dab27773f397', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4320777580142, 30.540509512647986, CAST(N'2015-08-04 10:28:41.933' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd920ad15-e51a-42d2-9787-dae344a3d3ff', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:31:01.973' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c1b7048d-86a6-4cdd-84a1-daf99a2b069e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:15:26.277' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bb5622b6-c5c3-41f9-b150-db02f0a7adca', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.430901875226958, 30.539702539092264, CAST(N'2015-08-23 17:27:07.053' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0ee7ce6d-f0f5-49c6-81d6-db28ad81ef3e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:41:52.107' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0152fe46-1ea1-4eb1-b6a2-db2b71c7ebfe', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:35:10.340' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'66135ed5-198c-46d9-8700-db4877b1dbb2', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:34:33.927' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'50d9b33f-fcaf-46c0-a625-db78134f9e3c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:15:33.437' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'af38ee05-7f70-4303-8808-db9d4df84cb6', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:28:12.327' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b6ab280d-9600-49c5-a546-dbb0832b37a9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:21:59.997' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'466ca05b-d9b3-4274-a935-dbbe0196f82a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 10:10:56.117' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2fae170c-df81-4c6a-a9d6-dc8cea152984', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:06:44.653' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6b6004cb-5aad-4aae-b293-dc968c9c095a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:13:04.900' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3b2dcad5-3296-444f-9886-dcb3d2ab2a3f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:21:04.780' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'740593d2-2527-43f1-bf11-dcca2e72cfec', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 11:53:00.220' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5e3a9699-a561-4966-87fc-dcdc64a3ce98', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:11:48.607' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'01ce84be-2f1d-4a6c-8ed6-dce42384df98', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.431066633444573, 30.539321778671919, CAST(N'2015-08-17 17:56:36.640' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fd186b19-8a0b-4a74-9320-dcfd424fb098', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:13:25.347' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'592ba905-b4e6-4e35-b2b7-dd291db4de36', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:16:36.047' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'11a77908-0229-492d-81e5-dd3cf4ad66a3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:27:02.557' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fb078c77-dfce-4412-acb7-dd8c2aa91e9b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:04:28.307' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'56b3026f-c126-496d-afad-dda7be8aa172', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:44:20.607' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'97788a48-4b74-4d26-b7ab-ddacd00c0674', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:02:12.637' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1b19bd2c-baef-47a9-9987-dddcf439d1d9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:27:40.413' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0303aeff-0ce4-4fb6-a96b-ddf18b746b53', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:32:06.483' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'37f46ea8-0887-4ed2-b18a-ddf9d8e8002c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.43082673331871, 30.539699728299482, CAST(N'2015-08-20 21:33:32.427' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'44b724dc-286e-418d-b211-de51428500fb', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:40:20.977' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e530684a-1a5d-4ed7-9cf0-de5f6b3975e0', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 09:04:54.770' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'32c2bef7-d62e-400e-bdee-dea2dec8f3d3', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:59:58.467' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ba0548d5-d969-4bea-bf16-deaa6d74ba23', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:42:37.923' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'060084f5-54a0-4ec2-9cd7-dee01a844998', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:43:34.287' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'89a31b87-3ba4-43a6-a4e5-defc268edd9a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:24:00.557' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c16f17ef-08dc-493b-a123-df936ebbc4c1', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:12:43.330' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'107e8c8a-e74b-4f96-9515-dff3c5b16287', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:41:05.207' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3ce86f49-0d0d-4b90-99d1-e00109a4723b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:24:58.827' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bbdf5a04-cae6-49cc-97cf-e00cf762f43e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:24:31.717' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c92a3900-205d-4697-8c49-e0187bfa3653', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:28:56.787' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'78e61954-cbe0-4cbd-a441-e066f8b04c73', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 16:31:58.707' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7b56d9c4-a834-4c42-9e54-e07d899b023a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:54:36.843' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'665891ee-4969-457d-b871-e0c79b8c508b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-23 22:37:14.650' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'298c4687-fb0d-4129-a14a-e0edae4e9add', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:57:21.880' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8b3010ee-aa1d-4408-a7f9-e10ffc2ae6ad', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 16:22:06.790' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1ea377c3-e0a5-4791-944c-e127bf9d6523', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:07:57.597' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5a07e80f-b5ec-467a-9737-e172b7aa642f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:23:25.647' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7f8bcc8c-153d-49df-8b56-e17dfedd77c7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:25:50.473' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'dbc6e561-5c9f-410c-a532-e1923b9bc3ed', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 08:57:21.153' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f8ad6c8b-5c42-4555-ba2c-e1e603cb3bed', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-23 21:15:14.510' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c1101445-cad0-4d09-8d55-e2021fab3e4a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 10:36:54.597' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'97eff939-2c16-489e-b6bf-e2038c849c2a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:11:10.580' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ce7ec943-1f9e-423e-91d6-e207e27d7c97', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:42:15.560' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ed25c68a-6d88-4b1a-ab57-e266d804ea95', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 07:57:09.820' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2a582228-2451-44c6-858f-e28bc3684e9f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430797299999995, 30.539871500000004, CAST(N'2015-08-17 16:56:34.120' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'00998fb1-97eb-4a51-89f6-e2a8dcb02bc1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:47:56.880' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2445b026-cb16-4d2a-b2c2-e2bad3f6c520', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:41:42.140' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e0c8c0ff-569b-4652-9a62-e2ca5a241f5a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:11:46.880' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ff9774b6-4bfc-43b1-9338-e2d5e22c57d4', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430852377789485, 30.539752383368921, CAST(N'2015-08-17 16:33:32.983' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e7061c73-1b78-4d5c-b2f5-e2e362c79a87', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:52:31.943' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f10da512-de0b-42b0-8fc7-e2ef4de01be4', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:19:03.967' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'51c8a273-bde3-4bf1-a880-e33799137fdc', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:41:52.463' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd06fddbe-c83c-4e96-9225-e33fdbc4c5ac', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:21:56.973' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a9df5946-af2c-43fd-8cf5-e411003fd65f', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:56:05.773' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'031985f7-14e2-47bb-9339-e44ec549cd05', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:42:47.997' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9a515af5-b094-49fc-95fc-e44fcc2ca3e6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:40:13.063' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1a481863-a9a9-4233-b729-e457999ad101', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:02:22.157' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f08178aa-781a-4ef4-be67-e46889b809d0', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:48:56.610' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7ed2f1da-7add-48be-a457-e469ec20451b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 10:36:38.117' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ea82da3a-3495-4dcc-bf9b-e4965605b7a2', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:21:07.890' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'606e007a-71ad-4a1f-a687-e4ad9dd529c3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:33:38.643' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1b6e0230-f7aa-438d-8fef-e4bb14a3595a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 08:40:44.020' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f19d4b26-12c1-4a0d-91be-e4c08f933265', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:30:54.187' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'88744792-4b8d-47bb-b3f0-e5410902d7fa', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:59:38.557' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'57680b4a-c7e3-4d08-9037-e54e7f95a4eb', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:10:54.537' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7f96a087-4d37-42d5-9879-e55d994920f9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:03:12.360' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e598bad3-edb8-4e15-a212-e56a88b81aeb', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:03:07.703' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'20372844-cf94-4f9f-af31-e59bfca7751a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4308989894183, 30.539607058860529, CAST(N'2015-08-22 20:48:26.770' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'aa13ff25-1dd2-46ab-b287-e5ad941de765', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:08:06.517' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'866a092c-4111-4f7e-9bd4-e5b0d467accc', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591843, 30.490213499999996, CAST(N'2015-08-06 15:04:52.837' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'60035d79-7c4e-456e-b16b-e5e484b3abb3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:43:32.817' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'84c34914-9453-4323-baa4-e5f565491646', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:15:03.000' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e4645cfe-c827-47b3-897f-e635dc80c2fa', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:00:20.930' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'22145d71-1bd9-4587-a960-e692ac3ef4f4', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 18:09:59.163' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'48ddaf35-b048-4b98-ac6c-e6a4d30b305c', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:01:06.370' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5a36ad78-1bb2-49f7-8e05-e6ad1a9db018', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:53:25.137' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6aa3f75f-e2b6-46a3-b58d-e6b7dd24a5ba', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:03:44.983' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e05dc24b-c39a-4dfc-abb0-e6bc914459ac', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:15:36.510' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8c67f166-0781-4f93-849e-e6be8395640f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:38:23.750' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b774c4f7-fdae-48f3-945f-e705e45d112e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:59:17.997' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8652c129-dd47-4a2b-9005-e72af25b2dd7', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:05:19.510' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f2558592-2787-44ec-9011-e734713275cb', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:07:01.563' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'35f01ed9-11f5-47b6-b819-e73e1de3fd4b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:25:58.537' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'981b7fad-06cc-47d4-aadf-e769547cd116', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:41:36.907' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'af0fedf0-276d-4786-93a2-e76af2e51a88', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:59:04.733' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'403a1118-0bd1-4fae-b15e-e76af3ba8581', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:16:57.217' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2de0c508-f1df-49cb-91a4-e76c7a2e1aaf', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:55:51.060' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'35746e25-a4ac-4ffa-a36c-e79062b258a9', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591895, 30.490192099999998, CAST(N'2015-08-06 15:25:06.960' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'45228938-8b2d-4152-84c9-e79c5d913662', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:14:13.050' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c60a4496-cc4d-4541-bd37-e7af93d8e9bb', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:26:06.113' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8dcd08c2-d6ac-49d2-9876-e7de0159af80', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:18:31.740' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f205d509-daf8-42c5-8bf7-e7f8552082d1', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 08:55:45.097' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd16948b5-f661-4d43-b7c4-e81ce391de8a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:31:26.397' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'cfde4d3e-c2f3-4f8f-8e53-e84909ed98d5', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:27:10.233' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fb1b4d5f-323a-4f95-a39e-e876a79554c9', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:53:57.120' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3f7552bd-5627-4aa7-965b-e94cc6f3d459', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 19:04:20.257' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f2056ff9-3c03-47f8-b723-e94e71c400a5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:50:43.257' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'19a323ff-4bb2-465c-814f-e984b211ebcd', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:11:34.323' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fcd1a276-1324-4fff-bb5b-e98676ea5f18', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:31:59.833' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7a4f02df-3fc3-432d-b9e7-e9925f913b04', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:32:05.607' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'79cdfa3e-7424-404c-9a2c-e9a635affad1', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:14:08.743' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'dd1e0ca5-96f7-4262-8d67-ea320e327ae3', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-13 20:16:55.133' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c3476dda-78b9-4eb8-a171-ea9c3ad36af4', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-23 21:15:17.757' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6b3bd38d-7f97-4e30-a32c-eb0570232c85', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:55:39.573' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a61cd6a7-943f-4c0b-abaa-eb24dc6351ab', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:49:34.087' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'553ddbf0-e74f-4af2-9686-eb2ea29e7fd4', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:37:45.160' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a7d71ea1-7152-49fd-9862-eb75bc5498a1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:14:58.767' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'36a0da6d-c995-4f08-9703-eb88aa75208e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:50:45.603' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'76d83a50-85ce-451c-ab84-ebd6376d4472', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 09:52:59.170' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'afca78b7-037e-4206-8bc5-ec0bf7d708ef', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:40:46.510' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ea8a9e0a-1e28-442c-9146-ec4e024e548f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:52:51.340' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5cfafe97-1cff-44a4-8537-ec50823e053b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:10:46.697' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c6b7bab2-e2b5-4a2e-891e-ec5b5c53bb94', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:17:36.097' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'47221983-db37-4eff-b8ea-eca74758fcfb', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 11:25:27.140' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'03099253-276e-470b-b86b-ecad94b11edd', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:59:03.547' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ab4946f5-0430-45d5-b11b-ed2eb9a4aacd', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:02:11.967' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e330b71a-f085-4662-9237-ed3b8caabf60', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:46:06.647' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'319f67d1-5a03-43b9-88e2-ed44b82df0da', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 11:46:00.037' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'512c622d-72d6-4674-b6a8-ed471f82e3e8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:12:45.463' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6fdbfc3d-ea59-428e-9493-ed558f6f56aa', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:28:46.897' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a2a70d77-539c-49f1-8bf8-ed65089413d3', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:51:56.120' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'84a1939d-378a-44ff-b102-ed7225f621ff', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:11:09.533' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0253d7ed-f9e0-42e3-8d64-eeada4c5b8e0', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:31:18.287' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'56cee99a-d067-4d0b-9451-eebe89a44e4a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:57:02.190' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'670d891b-9f3c-4124-a592-ef0c340d016a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:28:52.360' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'aa74934e-6b95-4467-85b7-ef1e83a6fe54', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:48:26.290' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'77dc1b7c-fb37-4cf2-996e-ef3ae2d43478', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:17:28.300' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'88d331f2-f4c1-44d5-a442-efa240b425f2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 17:44:59.217' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8b1de78e-3552-462b-bd3b-efcea695c818', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 10:08:45.273' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7a1bee94-a294-4dfa-b55b-f01071934b52', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 08:54:02.600' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7f458d66-8327-4f0b-9ed6-f02dfa850533', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:10:05.993' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9ec55ab0-0212-45ff-9754-f07ce913bed5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:15:26.203' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'961edf2a-0bec-4f73-bc77-f08d030538c9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:13:48.660' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'023a816f-05e2-4803-811c-f0a1ef2e2e52', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:31:59.653' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6fe20933-1dfc-4395-bd12-f0a6440cffbd', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:03:42.793' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a8b7ea5c-2e08-4959-9566-f0b3273c0849', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 15:48:11.033' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e26faa08-aa07-4ba2-a2ae-f0c6002e6a0d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:49:07.983' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4d1b21f7-8974-4952-bde9-f0ce5ebeaedf', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:16:01.510' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6e98915b-5314-4752-90a6-f10ebde24700', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 09:04:39.353' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'242d676b-7426-4074-9b21-f1291ace8d7a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 10:10:44.680' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'459b78c6-5e17-4562-aac1-f172b9143373', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:20:17.180' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ecc3f774-d66a-4edc-a1ec-f1afe3d00d95', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:46:42.570' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a0037fdf-11d4-4ad1-b1e3-f1bfe81c91f3', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:12:25.967' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5aba9e07-c220-490c-9e9d-f1dcc8a8dd10', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:11:41.677' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1a4c4939-90b9-44c8-9e51-f1e4b08d5c8b', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:50:42.743' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd87b55dd-0796-4164-b6b6-f1ea9395c698', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 09:15:05.103' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'78771aee-bc61-4fa1-b0fb-f20491d125c9', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459181699999995, 30.490212399999994, CAST(N'2015-08-06 14:53:06.063' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'08547022-d3fc-4e06-be73-f239e1629fbe', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430836772134342, 30.53968967693508, CAST(N'2015-08-20 21:28:06.077' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c8f3d0e0-fa96-4993-b41b-f23ef8e1f1a4', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4591963, 30.490165899999997, CAST(N'2015-08-06 15:15:06.287' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'06ddc01b-0f89-4ba1-8b04-f243ef8230f9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:33:59.810' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2888cc52-eb5a-4157-8a56-f24b0497ce82', N'3d70c1c0-e191-4837-9fa7-3398c928efaf', 50.4501, 30.5234, CAST(N'2015-08-17 17:08:27.300' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f14338f5-b3e0-40e1-9b57-f253e3c1508d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:49:05.997' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'600a6cbf-f5c5-442e-8fb8-f26f5e527d94', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:40:15.367' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd3ed3e48-3613-4716-984e-f29c1808c16b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:23:40.077' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'24a8f1a9-ba15-4dba-9906-f2b1fcc9c4e1', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 10:43:17.517' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'c674eef6-78db-4f25-af9f-f2f2a6685b8a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:14:49.890' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'0e0f905e-f706-4c48-8294-f30a2fc11e77', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:49:49.997' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5bb82942-7dfc-4c8c-8d4c-f36edee5fdef', N'3d70c1c0-e191-4837-9fa7-3398c928efaf', 50.4472817, 30.447214199999998, CAST(N'2015-08-04 10:14:25.590' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'382f6331-d41b-45cf-a658-f3b537b7218c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:14:59.967' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'cb14646b-6ab6-4285-8dbe-f3dad8230eb0', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:06:55.167' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'43be4845-a282-41a3-ace5-f3eb1fa567f8', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:42:46.090' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'65275ce2-bdb5-4724-a3a1-f3fc02791c99', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:19:44.140' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd7a2c2a1-a5c2-41a8-aaea-f41f3881d79f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:06:11.987' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'73195602-8196-4d3a-86eb-f45766e59d24', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-22 20:52:20.643' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd93a2930-5ac5-4a5b-81b2-f476059f97f6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:15:12.967' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4e5744ac-8649-4009-877f-f4a66d40d43e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:34:47.530' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2ede1c2e-9167-4712-9008-f4eef382a7e0', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-23 16:32:16.083' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'014b4954-a2ea-4004-aaaf-f524fc1f85bf', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 16:29:23.460' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b677c4c1-c909-4a73-9b6f-f535689d529a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:53:23.370' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'cc1bd463-e5f0-48ca-b35a-f56473104d09', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:25:42.123' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5f646b64-2fba-49d8-a77b-f5891c6c5275', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 17:19:07.367' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'acc343c9-c419-4106-897c-f5d0c3441845', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:34:48.653' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2242005c-f651-4f38-babf-f60caad934ae', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 17:58:55.117' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a9d3d11a-a035-431d-b62c-f61b4b69e0cf', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:42:25.430' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9d322835-b140-4541-9390-f6445d9160f7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 21:37:18.827' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'34f43673-62a2-4a9e-a4f5-f6862ce4bd31', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:24:46.480' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8d779f63-9be0-4eb6-aff3-f6d71b6850b2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:31:05.470' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3003efb2-47d5-42d5-9494-f6eaa2f8624f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.43081981925895, 30.539779220028503, CAST(N'2015-08-22 20:43:22.447' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'abcbcef5-b9b7-414b-8475-f6ffe98671b8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:52:48.907' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2c651f25-a8b9-4ef7-8d65-f737822a6ef5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 16:28:08.600' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'35ce7dcc-a883-49e5-ad95-f7a136e3d3cc', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:39:04.527' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2adb9a9a-12fb-419a-9363-f7e5048d0749', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:10:26.433' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'56530b2b-80d4-4be9-b8fe-f7f35fdca4be', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:57:04.283' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'9d83dfd5-6029-43a0-8ee5-f7fb88a5e858', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-04 08:08:28.207' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'96822927-9384-474f-bb13-f80721510f4d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 15:48:28.900' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'64c69ee6-9ee9-49f9-8090-f809fe86ad4f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:40:51.037' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'e7ae1752-774f-4766-8f08-f85f8b95bc44', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:12:14.693' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'eb789508-749b-4b3e-a4ee-f8b42e2c7b59', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 18:24:59.217' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f6925e05-5f37-42f3-85f2-f8d11b3bed25', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:40:31.620' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ca06afba-e56a-414c-ac3c-f9122ec3bbf4', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:03:39.487' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fad3b39a-959e-474c-98d5-f91f5e68ea50', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-22 10:55:31.590' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'93529d3e-a3b1-42fa-bbd7-f93044b44d0a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 12:37:52.793' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7c2fb58a-fca1-4a16-8942-f94bf6ac5f6d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:20:11.717' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'63ebb22d-48b9-4c0e-8438-f96b275975bb', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:12:34.750' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b5eb9d86-4942-4ecd-829a-f979e5297ad9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:54:47.737' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a266e770-971a-4703-bbc3-f98c7c3bb826', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:27:51.760' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a7396f2e-3395-47cf-8e19-f9b8adec264d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:43:45.687' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4382deb3-ca58-40c6-bbf7-f9c7eded530b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:44:48.027' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'05e6346f-f9e5-4d82-9880-f9f69f34fb3d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 09:07:15.150' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'd83f1aa4-f68e-41e7-a7ee-fa10c5467319', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:22:21.017' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'76ef80df-d7a1-486e-971c-fa222649fd8e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:31:00.073' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8d450571-27a0-4a24-a8ac-fa2c48dcf3e1', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:42:28.947' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'34f627c0-519e-49f2-ad41-fa4a5df70d5b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:27:30.920' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'523de385-1ffb-4d12-9f4b-fa7ca2b94a31', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430797299999995, 30.539871500000004, CAST(N'2015-08-17 16:56:32.887' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'beda3f6f-6be7-4a6d-987d-fa808f8eb065', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:05:46.420' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'28ee97e8-f629-402d-b47e-fad0c0679ab7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:31:09.763' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1822da2f-b97f-42c0-8a55-fad1c18940a9', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:00:55.430' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1c87a22c-4f9d-47de-8be6-fae4a1c0e7fc', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:18:12.670' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b3b601a9-4bbe-4522-ac00-fafbb91523cc', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:05:39.867' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4177d97c-1f2f-4010-bef6-fb39f97d9bba', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:15:48.927' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'03f05814-842e-4dd5-b109-fb47a31a14fa', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:05:45.203' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fb9850cb-acef-4948-9b4e-fbeda355761e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 18:53:38.843' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6f09fda4-f0d7-42ba-bee7-fbf1a28e231e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:02:52.587' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a2931b7f-64a0-4754-aa6b-fc1d15a66f6d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:17:34.253' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'67a9d332-24e1-4f52-9d69-fc2e3d8039d0', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:45:19.357' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'a3f6d972-529c-43f2-9959-fc6c6a3c6072', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:24:55.667' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'4d6bdb91-94a7-4a93-8410-fc710ec0182d', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:43:43.470' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3121ddb9-ecff-4092-8513-fcbc9e1f24f3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:44:33.093' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b3646f90-f33f-471a-a9ce-fcbe548d2d6a', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.430884123596854, 30.539756451078322, CAST(N'2015-08-17 16:13:06.370' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'145bb24d-a452-4ad7-8e6a-fcecfe5a2d27', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:18:16.123' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fee697e9-78bd-478d-822a-fd104ea2786e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 14:32:49.910' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f61ae0a5-b9b6-4a8f-a057-fd173df7a257', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 19:06:42.427' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'2ee8bb4c-97e5-456e-92ab-fd1e218e094a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:48:57.350' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3a799a01-abb8-4f2b-9a1c-fd3237860bf3', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.459181699999995, 30.490212399999994, CAST(N'2015-08-06 14:53:06.077' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'bd867d23-291c-4fac-90c7-fd367390db5b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:37:53.553' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'1a04c2f9-c7c7-4a0e-90e0-fd7d239ad29c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-17 16:36:59.067' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'71eca29b-2259-424f-9003-fdb892ef4635', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:50:02.487' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'fb64c9c0-ae3d-4b0e-8e95-fdc2beb45bcb', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 15:31:46.727' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f376690b-bc83-4f78-9d95-fe0549acb4d7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 18:14:20.633' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'cba533e0-7ccd-4609-a910-fe1a3e5ff770', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 16:53:14.263' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'7e442841-59b9-41ff-b978-fe50c946c002', N'91097101-658d-44f9-a534-4484209c8179', 50.4501, 30.5234, CAST(N'2015-08-20 20:26:13.763' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'5de9f09f-2c31-4462-9540-fe51c13b2a22', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-23 16:36:35.263' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ebdd8384-b39d-495a-9df9-fe582463d337', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4333, 30.5167, CAST(N'2015-08-22 20:51:47.990' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'3ab3fa03-6e02-4df5-99a5-fe9d63702efd', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 13:55:46.723' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ef0f2bcc-b699-4fa9-9fd3-fee508597cf8', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 09:04:44.097' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'099f7ff5-ccf2-45eb-8461-ff030be54f92', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 20:32:37.977' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'ec3f98f3-d579-44e5-b906-ff062bce0855', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 14:20:21.893' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'8999ee06-0aa8-4bf5-988a-ff12d1b982a9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-23 17:40:03.390' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'f8792d8e-cf32-4674-8f07-ff4195aeeb6d', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:07:28.533' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'6bfe3cf5-9853-41ee-a88e-ff7aaeb5976e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-20 19:09:16.637' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'b839eaa7-10db-44e5-9528-ff95d3aaf2a3', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', 50.4501, 30.5234, CAST(N'2015-08-22 18:37:13.410' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'36d869a7-01e1-4c8b-9f35-ffb5291be37e', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-06 18:03:27.000' AS DateTime))
GO
INSERT [dbo].[UserLocation] ([UserLocationID], [UserID], [Lat], [Lng], [Time]) VALUES (N'236df215-86ef-40ac-bd08-ffecdce5dbe5', N'b057798c-6167-485c-b0c1-a40704faaad7', 50.4501, 30.5234, CAST(N'2015-08-17 11:10:59.077' AS DateTime))
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'e30b2dd2-2d6a-44ff-ac5d-006a3bfaf781', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-22 20:22:10.337' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx%3ftrackname%3d2014-Germany-NoSound&trackname=2014-Germany-NoSound')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'1881e21d-6b13-40bc-bc38-08da9be4f51d', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 07:54:56.587' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'b1c5da8c-5376-47f8-8f37-09c28d62bc6e', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 16:24:44.870' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx%3ftrackname%3d2014-Germany&trackname=2014-Germany')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'9a1e6ba2-536c-4632-8296-0cca50a9bb4a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-20 17:50:40.943' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'3c149ea4-c45f-406f-8bb7-0db10e54b899', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 16:56:17.550' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'9995608b-42d9-4914-af1a-113af4ada1f1', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-23 17:38:01.100' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Mobile; Windows Phone 8.1; Android 4.0; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; NOKIA; Lumia 630 Dual SIM) like iPhone OS 7_0_3 Mac OS X AppleWebKit/537 (KHTML, like Gecko) Mobile Safari/537', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'6971fa26-f393-4f8d-b5b2-12dd2b5f1349', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 17:03:11.457' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'58ea5c3d-6a6c-409d-a502-164fc6edb73e', N'3d70c1c0-e191-4837-9fa7-3398c928efaf', CAST(N'2015-08-04 11:43:10.813' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12H143 Safari/600.1.4', N'http://seeyourtravel.com:80/SeeYourTravel/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'4e0dbc08-b6ac-49fc-9b53-1817119d407c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-20 21:31:58.177' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'b3b69bbb-d205-4706-a97b-18174d9f4147', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 16:13:25.870' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'a268490f-66b4-4716-9c78-19d025596a8c', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:35:16.923' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'8460e2cb-1adf-4dc7-a99e-1efef2b3b3bc', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-22 20:50:28.537' AS DateTime), N'Forms', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3d2014-Norway&trackname=2014-Norway')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'ffef2d8e-f5d2-4fab-91ed-1f27995aacc1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-22 20:40:59.903' AS DateTime), N'Forms', N'176.38.4.7', N'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/44.0.2403.67 Mobile/12H143 Safari/600.1.4', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'79121474-a607-4fb8-86a0-1fad3a53b734', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-16 14:47:38.537' AS DateTime), N'Forms', N'78.60.48.133', N'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/44.0.2403.67 Mobile/12H143 Safari/600.1.4', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'c21db209-68c1-4013-b52b-201bf41808be', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-23 16:31:43.987' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'd2fdec5d-5240-452a-90a0-2115d2634b23', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-06 19:20:03.540' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'http://seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3dIsrael1&trackname=Israel1')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'0d686d97-1e6c-4608-9bd5-22b841194e30', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 16:35:36.807' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'f6eac75f-5bf4-4ebe-91ad-233d46eee5bd', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 14:47:25.720' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2feditor.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'2d5278da-36b9-4d56-a4e4-2387d1b59067', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 16:31:25.157' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'e944c8be-7d7d-4171-931d-2461655cb88b', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:34:40.897' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'a99cb387-50a1-4557-a8f2-2762520e6a07', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:34:58.743' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'2cbbd347-aa6f-480e-bf50-2806d1f8952c', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 08:40:41.367' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'c5618049-e8ca-436d-8540-2882ccb6eecb', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-22 14:04:44.557' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'1659595f-55a8-4b83-9374-29410e50c097', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-22 20:53:26.400' AS DateTime), N'Forms', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'd8fe2c1b-98b6-4702-a0da-29abddbb3cda', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-06 17:58:54.243' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'http://seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'0f0034e7-c8d4-45eb-8f19-2bf48e2c0880', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-04 10:16:45.763' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'http://seeyourtravel.com:80/SeeYourTravel/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'309286eb-4650-4864-87fa-2c5cd50895b8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-22 11:50:57.293' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'6c80a5ae-c901-4c6e-9c1b-2c9727e4cd7d', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 16:22:57.600' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Mobile; Windows Phone 8.1; Android 4.0; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; NOKIA; Lumia 630 Dual SIM) like iPhone OS 7_0_3 Mac OS X AppleWebKit/537 (KHTML, like Gecko) Mobile Safari/537', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3d2014-Germany&trackname=2014-Germany')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'5ea4abeb-29f3-4cc9-8218-2da6a110cbaf', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 14:47:44.030' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2feditor.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'5025029d-e85f-4774-b287-32fc93ff78d0', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-04 10:27:39.670' AS DateTime), N'Facebook', N'46.211.1.56', N'Mozilla/5.0 (Mobile; Windows Phone 8.1; Android 4.0; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; NOKIA; Lumia 630 Dual SIM) like iPhone OS 7_0_3 Mac OS X AppleWebKit/537 (KHTML, like Gecko) Mobile Safari/537', N'http://seeyourtravel.com:80/SeeYourTravel/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'6cc1ad8f-f68c-42ca-92f9-3339c19396ac', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-20 18:25:08.493' AS DateTime), N'Forms', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'4af1e926-a3dc-4867-a1e3-33daa863595b', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 09:57:21.280' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'47ad46f0-40ac-4135-8df9-347e4630937e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-20 17:10:15.907' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'63b89baa-dc4f-4b22-875c-348e57b023fa', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:34:53.707' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'e1dd3b8f-c8cf-44ab-a58e-359dc47ffa5a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 16:12:55.660' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'316457c6-c41d-471f-8575-362ec1505354', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-06 15:03:13.537' AS DateTime), N'Facebook', N'91.213.62.66', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3d2014-Norway&trackname=2014-Norway')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'c6d5f1b7-83d8-46b4-8757-36912dab26e1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-22 16:34:42.437' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'39824228-fdc9-4a07-9376-36d06d890d53', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 07:43:20.943' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'be4ec435-eb68-4b7e-a0de-36ee960db14c', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-07 08:43:35.307' AS DateTime), N'Facebook', N'91.213.62.66', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'2ffff7c9-bf05-43d7-9b58-3702b4424c91', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-22 13:51:24.493' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'ea84ddd6-5f76-40d1-bbd1-37f1bbe3c09a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-20 21:30:19.117' AS DateTime), N'Forms', N'176.38.4.7', N'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/44.0.2403.67 Mobile/12H143 Safari/600.1.4', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'0a44b599-1d2b-47ba-89b6-3a12c1695614', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-04 15:36:25.183' AS DateTime), N'Facebook', N'82.199.133.123', N'Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', N'http://seeyourtravel.com:80/SeeYourTravel/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'cadab8ac-b539-4db2-a73e-3cc4581844bd', N'3d70c1c0-e191-4837-9fa7-3398c928efaf', CAST(N'2015-08-04 09:05:16.177' AS DateTime), N'Facebook', N'195.250.62.252', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36', N'http://seeyourtravel.com:80/SeeYourTravel/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'94ea6ee0-e963-478e-a51a-3f80e82279cd', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 14:47:47.383' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2feditor.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'50fb4784-e111-47b2-a041-42ad06cf7342', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-17 16:52:36.273' AS DateTime), N'Forms', N'176.38.4.7', N'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/44.0.2403.67 Mobile/12H143 Safari/600.1.4', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'37da80e9-2df7-4723-a137-43c42306e9ec', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-04 09:03:59.630' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'1ee8a0cf-d6a2-4b8d-aaf4-44f5dc62a491', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 12:07:09.813' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'45239748-ef57-41a8-b7ff-465e94add1d7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 16:32:06.017' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'871b15be-2290-4e5f-9cd6-47b1d2b1d6dc', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-21 14:42:21.887' AS DateTime), N'Facebook', N'91.213.62.66', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'e408edc6-9b07-495b-a8ee-47d8e1ca80af', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 14:47:42.360' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2feditor.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'1c569f7d-13df-4031-8f45-4a020f1b2073', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 16:24:23.853' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'ac426c68-74fa-4274-9145-4a25be3e89d3', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:34:46.960' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'a7c7d20c-7234-45f7-b95e-4e53c02539c4', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-22 14:32:30.383' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'48459953-b026-4481-99b8-4ef9bb23d0c8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-19 14:34:57.383' AS DateTime), N'Forms', N'176.38.4.7', N'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/44.0.2403.67 Mobile/12H143 Safari/600.1.4', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'4262994e-59f1-429f-a253-4f2e57cbd028', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-13 20:23:53.857' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'e3ce45d6-32c0-4356-b084-51669a0067cd', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-23 16:21:30.890' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'33aa993b-029a-4a08-aa4a-51735af52e72', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-22 15:54:28.647' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'c21b3da4-125d-40c8-a6e9-51e14c4afac1', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 07:43:21.630' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'6dd6f993-3740-4553-b64e-54b998319458', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:35:12.610' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'ec13383b-c10f-48cc-849d-571da033b358', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-23 16:31:39.900' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'dc9acfe6-47ef-45d2-b4b0-58696feb179c', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-20 19:47:44.840' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'040486ce-13db-4fa6-b25f-5931cb73cb49', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 06:09:19.507' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx%3ftrackname%3d2014-Germany-NoSound&trackname=2014-Germany-NoSound')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'79a9226e-f3c9-4d33-8bd9-5d7478569d5c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 16:37:34.807' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'b2818e09-e210-4496-8c0e-5f51b2eda150', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 14:50:12.427' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2feditor.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'7ea99427-51f4-4b70-8c2f-5fcfcae334b4', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 14:50:12.427' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2feditor.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'39eee142-d98e-474a-9e49-62a2822b8e7f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-22 11:50:45.767' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'be271948-76b9-4d86-8ff6-6395980cb6e0', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 14:47:40.680' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2feditor.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'8c9d181c-e42f-460f-8290-63b2af0d6951', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 15:50:29.477' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'cbd98d9a-6e49-44ba-a6ec-6404338752b9', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-15 18:44:27.423' AS DateTime), N'Facebook', N'78.60.48.133', N'Mozilla/5.0 (Mobile; Windows Phone 8.1; Android 4.0; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; NOKIA; Lumia 630 Dual SIM) like iPhone OS 7_0_3 Mac OS X AppleWebKit/537 (KHTML, like Gecko) Mobile Safari/537', N'http://seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'f8bcc85c-b97a-4e5a-bd68-64948c48c9fa', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 14:06:45.437' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'02006d28-e4cb-4271-9fc9-64b171019394', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:34:39.247' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'd01db063-b5a9-46f7-90e6-68f95ef2345c', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:35:09.430' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'b6923437-8e60-44ff-b156-691b4d19fdec', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:34:57.057' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'4e8e5613-0349-4706-a473-6ad3f5c698cc', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 19:47:55.460' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3d2014-Germany-NoSound&trackname=2014-Germany-NoSound')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'97dd1f5f-9707-4551-a597-6e874c330dec', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 14:47:49.107' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2feditor.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'ebcabe09-2497-42c2-b72c-6ee417dda193', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 19:58:48.513' AS DateTime), N'Forms', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3d2014-Norway&trackname=2014-Norway')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'f042e1ba-cffa-4fb1-b8e5-6fc6cbb0f0ca', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 16:14:59.163' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (compatible; MSIE 10.0; Windows Phone 8.0; Trident/6.0; IEMobile/10.0; ARM; Touch; NOKIA; Lumia 520)', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'e4b8b302-8a8d-4ece-a684-7148e8c5fcb1', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:35:18.610' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'f6a1dac3-cd71-4e24-9d0e-7276e0b899fc', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-16 15:02:33.267' AS DateTime), N'Forms', N'78.60.48.133', N'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/44.0.2403.67 Mobile/12H143 Safari/600.1.4', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3d2014-Norway&trackname=2014-Norway')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'c9348a95-824e-45f4-98e4-72bfed99d268', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-07 05:58:22.667' AS DateTime), N'Facebook', N'91.213.62.66', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3d2014-Germany&trackname=2014-Germany')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'137ed21a-2a65-4473-be7f-73adcbd24336', N'91097101-658d-44f9-a534-4484209c8179', CAST(N'2015-08-20 19:48:49.530' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'3fca59d9-b915-49c4-9761-747d26c219b5', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-23 16:31:46.073' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'10257716-4307-4af5-a1d3-749a991d2ff7', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 10:49:38.030' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'bfa1eda1-778e-4772-9fa2-765ddfed891d', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-23 16:31:37.167' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'bd6e0e6b-30bf-41a8-bee4-76a609690f44', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 16:16:42.740' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'bfe622bb-d38c-4ac4-b8bd-771156b904aa', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 16:12:38.430' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Mobile; Windows Phone 8.1; Android 4.0; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; NOKIA; Lumia 630 Dual SIM) like iPhone OS 7_0_3 Mac OS X AppleWebKit/537 (KHTML, like Gecko) Mobile Safari/537', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'49f778d2-be39-49e6-9ed7-77315586dbbc', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-23 16:27:38.307' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'8e07c2d2-592c-4ede-a93a-7975d47269b2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-22 16:35:11.437' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'8ec5ef4f-3e6d-4626-9782-7af2684af836', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-17 17:13:51.857' AS DateTime), N'Forms', N'176.38.4.7', N'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/44.0.2403.67 Mobile/12H143 Safari/600.1.4', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3d2014-Germany&trackname=2014-Germany')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'7bf9c4f5-ab9d-4b06-ad26-7b83b043a5a3', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:34:55.397' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'a1fbdb1c-c9ba-4f6a-a5d8-7d4f467f87c0', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-23 22:17:48.170' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3dSwitzerland&trackname=Switzerland')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'd3b82005-708b-459b-9a08-7e93502f89a3', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-15 18:44:28.110' AS DateTime), N'Facebook', N'78.60.48.133', N'Mozilla/5.0 (Mobile; Windows Phone 8.1; Android 4.0; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; NOKIA; Lumia 630 Dual SIM) like iPhone OS 7_0_3 Mac OS X AppleWebKit/537 (KHTML, like Gecko) Mobile Safari/537', N'http://seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'3de16a07-a8a8-42f9-8311-7ef6e4b987d1', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-06 15:03:14.193' AS DateTime), N'Facebook', N'91.213.62.66', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3d2014-Norway&trackname=2014-Norway')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'e35a2431-ec71-426c-aad8-82c11ac0caea', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-21 14:42:21.340' AS DateTime), N'Facebook', N'91.213.62.66', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'64460f48-b194-4614-a7e8-832fee996fb4', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 14:47:34.013' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2feditor.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'630467b3-1951-49b0-a6b4-83b66cb35381', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-20 21:25:27.913' AS DateTime), N'Forms', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'37c42858-0143-4742-a8a7-84dc6b742200', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-22 20:42:54.663' AS DateTime), N'Forms', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'2a1d027b-bd3a-4630-a256-853c78022ea1', N'3d70c1c0-e191-4837-9fa7-3398c928efaf', CAST(N'2015-08-04 10:04:14.987' AS DateTime), N'Facebook', N'195.250.62.252', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36', N'http://www.seeyourtravel.com:80/SeeYourTravel/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3dIsrael1&trackname=Israel1')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'fd90374c-54dd-45cd-b36e-85bae80ca8f0', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-06 14:05:57.670' AS DateTime), N'Facebook', N'91.213.62.66', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'http://seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'95b7bc84-39df-4945-8fce-877c6ca61fdc', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 16:36:55.267' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'5117c185-b4ac-4b27-a9f7-880b52190a9b', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 09:14:56.823' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'420cc4bd-0dde-40f0-a99c-88519ee77db6', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-22 19:59:29.440' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx%3ftrackname%3d2014-Germany-NoSound&trackname=2014-Germany-NoSound')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'74eead5c-2939-4f6a-90b3-888153da5b52', N'3d70c1c0-e191-4837-9fa7-3398c928efaf', CAST(N'2015-08-17 16:59:23.043' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/600.7.12 (KHTML, like Gecko) Version/8.0.7 Safari/600.7.12', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'b861a453-5bef-4262-a2b0-89747d14eaa1', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-18 14:59:35.643' AS DateTime), N'Facebook', N'91.213.62.66', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'65128325-2619-474c-9ecc-89dcbdc9341f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-22 14:03:33.757' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'526f6950-f448-4bf9-b0f5-89eb48c9576a', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-06 18:44:31.783' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'http://seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3dIsrael1&trackname=Israel1')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'd39ddd26-89f1-4861-bf68-8a073056288a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-20 18:22:22.740' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'4d2ac268-13b8-4ca6-8187-8c67e362aac3', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 07:11:46.233' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'0d49dd72-ac6c-4607-9bf6-8e158c30a485', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:35:13.653' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'c5910649-0ab5-4635-aad5-8e2337e861d7', N'3d70c1c0-e191-4837-9fa7-3398c928efaf', CAST(N'2015-08-04 09:03:45.023' AS DateTime), N'Facebook', N'195.250.62.252', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36', N'http://seeyourtravel.com:80/SeeYourTravel/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'ff7a23fa-b53f-4a8b-b4ab-90eade0dde4e', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-15 18:50:58.907' AS DateTime), N'Forms', N'78.60.48.133', N'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12H143 Safari/600.1.4', N'http://seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'13ba5e2a-e59b-44aa-87cc-944e7b7ec6f1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-22 16:35:10.537' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'57368f28-6935-4782-8845-949c9d24a1cd', N'91097101-658d-44f9-a534-4484209c8179', CAST(N'2015-08-17 14:05:52.863' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'bc51d161-a7ae-4469-859d-9836599a7667', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 16:31:34.607' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'5f619f16-1a5d-436d-927c-98c2deda98d3', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 14:47:30.637' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2feditor.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'0410a247-f09e-48e7-8faf-98f2c3ed369c', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 10:46:53.983' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3dKyiv-Ukraine-Pechersk&trackname=Kyiv-Ukraine-Pechersk')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'5334a770-2515-4ed3-bc49-9a2c96a813c2', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 14:47:14.170' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'3e92ac64-2e20-491d-a260-9a3ad20d3c31', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 14:47:35.697' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2feditor.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'268d490f-50ac-4b55-81f4-9a8ace39753c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-16 15:02:37.230' AS DateTime), N'Forms', N'78.60.48.133', N'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/44.0.2403.67 Mobile/12H143 Safari/600.1.4', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3d2014-Norway&trackname=2014-Norway')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'c61ab3f3-d1a5-4656-bd02-9aa3f2165abf', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-22 16:35:29.627' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'bcc49048-1ab6-464c-a14c-9b719100f0ce', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 08:40:42.653' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'fe1f8fca-58e3-4732-ac88-9c152b294cf5', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-23 16:31:48.170' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'35c75097-5031-4ffc-b7c9-9c9f369f35e8', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 17:59:07.357' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Mobile; Windows Phone 8.1; Android 4.0; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; NOKIA; Lumia 630 Dual SIM) like iPhone OS 7_0_3 Mac OS X AppleWebKit/537 (KHTML, like Gecko) Mobile Safari/537', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3d2014-Norway&trackname=2014-Norway')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'95966a0f-29ba-4cc9-b62e-9d8c573ac71f', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-17 16:20:18.973' AS DateTime), N'Forms', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3d2014-Germany&trackname=2014-Germany')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'6f349ae1-8254-40fb-bcaf-9edd70848273', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 14:50:13.287' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2feditor.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'550db3ee-3506-4587-9cc4-9f99c7dcd0ec', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 17:23:46.677' AS DateTime), N'Forms', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'2d83c278-5707-421e-8226-a0be0754d227', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-16 15:02:33.767' AS DateTime), N'Forms', N'78.60.48.133', N'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/44.0.2403.67 Mobile/12H143 Safari/600.1.4', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3d2014-Norway&trackname=2014-Norway')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'4439469e-9c76-4670-b334-a0d034159b39', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 14:47:45.717' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2feditor.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'd75b05d8-8a59-4902-abe1-a3eeff801e21', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:34:50.373' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'12659ee0-40f6-4d9d-8453-ab9b93b2af6a', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 15:44:57.200' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'fa028cdc-2a9b-42b8-b4a2-acfff8f903b9', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-23 16:31:41.977' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'2207e17b-15f6-45ec-a89a-ad294d2e1404', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-23 22:33:43.377' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'96a925f7-c9f4-4101-93e9-ad87fcc52f12', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 16:18:03.170' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'a3a33ec6-3d96-40ec-b5c4-b0e329c8adc7', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:34:48.703' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'626f850a-2635-4cee-adbb-b104fc38f17e', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-23 22:35:44.743' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'9b7892e2-e5e4-4382-8437-b1dff1e61124', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-04 08:49:35.403' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'http://seeyourtravel.com:80/seeyourtravel/Login.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'd9de6a65-98f7-4660-b2b7-b31eb8ce0ea1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 15:45:48.493' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'1df565ad-20a3-41ab-b0b1-b60bdd3bc7f1', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 16:13:39.953' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'bc83cb96-f4b5-4ae1-bc72-ba47ae946b65', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 08:52:10.663' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'7e18a7ed-0a9f-4731-9ee4-be9fa398a5dc', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:34:43.617' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'13c3fb5a-ca12-4f25-9134-bf3a3916111b', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-04 09:41:14.210' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'http://seeyourtravel.com:80/SeeYourTravel/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'ae5ad606-9640-4842-a943-c1bf42c6936b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 22:56:45.063' AS DateTime), N'Forms', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'70fc5b85-57e4-4d58-953f-c396f6d8d123', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 16:30:39.610' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'ab1a540a-d1f1-4105-b916-c3b0d37a4375', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 16:14:15.093' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'529eaaa0-da02-4454-ba43-c44b760cd1b9', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 16:12:39.973' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'03bf573b-1141-4aa9-8ecf-c48232d754d0', N'91097101-658d-44f9-a534-4484209c8179', CAST(N'2015-08-20 19:48:48.273' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'3fae62a3-d4ac-4b99-9149-c54e24c000a8', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-22 17:58:57.177' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'c0287f4d-2235-46c2-b452-c9af069d8ea7', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 17:27:04.197' AS DateTime), N'Forms', N'176.38.4.7', N'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/44.0.2403.67 Mobile/12H143 Safari/600.1.4', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'50544f03-592f-4e98-89fd-c9f9af6ec26b', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 15:48:03.440' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'085bbd26-168b-4b20-bc06-d1796b3bf48a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-13 20:00:39.667' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'1387cec8-5002-4ae7-bda8-d2880d137125', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-04 09:06:39.643' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'http://seeyourtravel.com:80/SeeYourTravel/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'73ce496d-454d-4206-a3ae-d7e19fe73c6c', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-04 08:50:38.460' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'http://seeyourtravel.com:80/SeeYourTravel/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'6ee3edd9-593d-40fc-a925-d812986beede', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:35:00.413' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'618b3f03-213e-4c3e-bba7-d840763ffaee', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-20 21:27:40.833' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Mobile; Windows Phone 8.1; Android 4.0; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; NOKIA; Lumia 630 Dual SIM) like iPhone OS 7_0_3 Mac OS X AppleWebKit/537 (KHTML, like Gecko) Mobile Safari/537', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'8270fa3d-44ef-46a8-b357-d860aad8ecdd', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-06 12:32:08.313' AS DateTime), N'Facebook', N'91.213.62.66', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'e5708699-74ae-4273-a050-d9649e49e7a9', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 14:47:28.950' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2feditor.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'7c98a64b-7ca4-41bc-bd32-da7d44e0aaa5', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-06 17:35:24.223' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'http://seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'3ba802dd-0560-445b-8780-dbf7575091ae', N'3d70c1c0-e191-4837-9fa7-3398c928efaf', CAST(N'2015-08-17 17:08:22.870' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'd5d34e0c-b5d0-41bb-8e6a-dc19f7e55b24', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-20 19:34:05.587' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'ce2429c2-9429-45b8-a072-dde39f900537', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 14:47:32.327' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2feditor.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'c029fae5-0fc4-4719-9443-ddf00bd639f4', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-06 14:49:51.303' AS DateTime), N'Facebook', N'91.213.62.66', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'bc35c078-d75e-4d36-9151-e023932c89c4', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 07:44:30.040' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'ca8c70b9-ac48-4ae5-b5ce-e409d69ab712', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-20 17:35:54.307' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'3ea8aea0-b6dd-4df3-b18f-e489778052da', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 15:49:16.493' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'62be5687-35b4-4427-ac47-e56ea787f6a6', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-04 08:49:22.207' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'http://seeyourtravel.com:80/seeyourtravel/Login.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'5e8b3eaa-9dfc-4edd-af19-e581bb235f9f', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 11:40:13.117' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx%3ftrackname%3d2014-Norway&trackname=2014-Norway')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'a11fc84d-8e63-4ec2-8896-e5c6e7b180eb', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:35:15.247' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'8aedcdc1-a0d1-4f79-b6e4-e72c17ef259c', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-20 16:52:46.917' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'bd930e67-2f9e-43a8-9dec-e8e3f5318c9d', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:34:52.023' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'924bbf2f-04f9-489f-b954-e9ea7882ac3a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-23 16:39:19.843' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3d2014-Germany&trackname=2014-Germany')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'54904049-f9d7-42f9-8df5-eb5499fdca0a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-16 14:47:37.130' AS DateTime), N'Forms', N'78.60.48.133', N'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/44.0.2403.67 Mobile/12H143 Safari/600.1.4', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'3e8b1cff-cad2-46b2-90a8-ebc06b02057b', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-17 16:43:29.347' AS DateTime), N'Forms', N'176.38.4.7', N'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) CriOS/44.0.2403.67 Mobile/12H143 Safari/600.1.4', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'50f335d9-82e9-43fb-8231-ecc6d2668089', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 14:47:39.000' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2feditor.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'85e96f83-919a-4076-98fc-ecd7289f9341', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-07 08:40:30.333' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', N'http://local.seeyourtravel.com:88/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'ef66a423-625e-4ca5-95de-ed3af3d65a04', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 14:47:27.283' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2feditor.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'4dc9bfce-3f3a-43ea-8814-ed3e22bdd11a', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-22 10:35:54.237' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'58bcacbd-e5ea-49c8-a37d-ef41af9dbcec', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:35:07.873' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'3d802363-989f-4c2a-92e9-f20c019ad237', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:34:45.297' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2fadmin')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'bce37651-e1ac-4e1d-a3dc-f3833b8233b6', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 17:13:15.553' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'3cee432d-f9b6-4a13-8de8-f3cfb93ab51c', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 14:47:37.370' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2feditor.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'ffa137f5-11b9-4526-96e6-f4daea4b2523', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-23 22:17:48.733' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3dSwitzerland&trackname=Switzerland')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'8fb1f331-501f-40a3-b231-f6e00d033fbe', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-21 14:34:55.967' AS DateTime), N'Facebook', N'91.213.62.66', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'8bd9444c-26fd-44c7-909b-f848708e7b3f', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 20:48:16.100' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Mobile; Windows Phone 8.1; Android 4.0; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; NOKIA; Lumia 630 Dual SIM) like iPhone OS 7_0_3 Mac OS X AppleWebKit/537 (KHTML, like Gecko) Mobile Safari/537', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'46fc0c7f-f673-4bdf-9b5c-f882ef721df8', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 10:20:06.570' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'8a1bdbad-0863-4f09-a33d-f993e4842c33', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-20 21:04:17.247' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2feditor.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'2e465664-3f7d-44c2-810b-f9bd5c1c9de8', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-17 16:33:23.187' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Mobile; Windows Phone 8.1; Android 4.0; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; NOKIA; Lumia 630 Dual SIM) like iPhone OS 7_0_3 Mac OS X AppleWebKit/537 (KHTML, like Gecko) Mobile Safari/537', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'137aeb98-0970-4a67-8a89-f9d0892db8d7', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-23 21:15:12.247' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3d2014-Germany-NoSound&trackname=2014-Germany-NoSound')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'af57b7f1-bfc7-46de-986a-fa35d031946e', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-22 16:16:45.247' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'790cf3aa-601e-4ab3-a612-fa3c85590447', N'3d70c1c0-e191-4837-9fa7-3398c928efaf', CAST(N'2015-08-18 17:18:42.667' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12H143 Safari/600.1.4', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3d2014-Germany&trackname=2014-Germany')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'970c523a-981f-4178-9316-fb80e9e68113', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-06 14:05:56.703' AS DateTime), N'Facebook', N'91.213.62.66', N'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'http://seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'2b941601-64fb-4f01-b40d-fdc3d6597c76', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-04 07:54:27.323' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx?ReturnUrl=%2fseeyourtravel%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'1c251ea2-0f8d-454e-a851-fe4cbc503edb', N'3d70c1c0-e191-4837-9fa7-3398c928efaf', CAST(N'2015-08-17 16:10:26.697' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12H143 Safari/600.1.4', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'2f2a1c76-5248-4337-a46b-fe66b9a80ae2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-22 11:44:29.530' AS DateTime), N'Forms', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'http://local.seeyourtravel.com:80/seeyourtravel/Login.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'e6d754d0-115b-4ca8-ae5e-fecccbdd647b', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-23 21:15:12.857' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3d2014-Germany-NoSound&trackname=2014-Germany-NoSound')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'78c121d9-5a8b-42b4-8408-ff6dd128d959', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-23 16:21:33.270' AS DateTime), N'Facebook', N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', N'http://local.seeyourtravel.com:80/Login.aspx?ReturnUrl=%2f')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'f34bc12c-2498-4bda-811c-ffb72533a8aa', N'b057798c-6167-485c-b0c1-a40704faaad7', CAST(N'2015-08-04 09:50:37.077' AS DateTime), N'Facebook', N'176.38.4.7', N'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', N'http://www.seeyourtravel.com:80/SeeYourTravel/Login.aspx?ReturnUrl=%2findex.aspx')
GO
INSERT [dbo].[UserLogin] ([UserLoginID], [UserID], [Time], [LoginType], [CallerIp], [CallerAgent], [CalledUrl]) VALUES (N'57d624b8-c294-4394-953b-ffe80ba862a2', N'c9f148f7-923a-46b0-8b7c-bd4b54d90886', CAST(N'2015-08-17 17:56:30.557' AS DateTime), N'Forms', N'176.38.4.7', N'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12H143 Safari/600.1.4', N'https://seeyourtravel.com:443/Login.aspx?ReturnUrl=%2findex.aspx%3ftrackname%3d2014-Germany&trackname=2014-Germany')
GO
/****** Object:  Index [PK__aspnet_A__C93A4C98C4E17163]    Script Date: 8/24/2015 8:26:59 AM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__aspnet_A__17477DE4A37FD587]    Script Date: 8/24/2015 8:26:59 AM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__aspnet_A__30910331F69B855B]    Script Date: 8/24/2015 8:26:59 AM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_M__1788CC4DDB2A8669]    Script Date: 8/24/2015 8:26:59 AM ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_P__CD67DC58B4BE3A16]    Script Date: 8/24/2015 8:26:59 AM ******/
ALTER TABLE [dbo].[aspnet_Paths] ADD PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_P__3214EC06374F527B]    Script Date: 8/24/2015 8:26:59 AM ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_PersonalizationPerUser_ncindex2]    Script Date: 8/24/2015 8:26:59 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser]
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_R__8AFACE1BA6555B09]    Script Date: 8/24/2015 8:26:59 AM ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_U__1788CC4DC47A353A]    Script Date: 8/24/2015 8:26:59 AM ******/
ALTER TABLE [dbo].[aspnet_Users] ADD PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_Users_Index2]    Script Date: 8/24/2015 8:26:59 AM ******/
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users]
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_UsersInRoles_index]    Script Date: 8/24/2015 8:26:59 AM ******/
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_RoleID]  DEFAULT (newid()) FOR [RoleID]
GO
ALTER TABLE [dbo].[UserRole] ADD  CONSTRAINT [DF_UserRole_UserRoleID]  DEFAULT (newid()) FOR [UserRoleID]
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[UserLocation]  WITH CHECK ADD  CONSTRAINT [FK_UserLocation_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[UserLocation] CHECK CONSTRAINT [FK_UserLocation_User]
GO
ALTER TABLE [dbo].[UserLogin]  WITH CHECK ADD  CONSTRAINT [FK_UserLogin_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[UserLogin] CHECK CONSTRAINT [FK_UserLogin_User]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_User]
GO
USE [master]
GO
ALTER DATABASE [SeeYourTravel] SET  READ_WRITE 
GO
