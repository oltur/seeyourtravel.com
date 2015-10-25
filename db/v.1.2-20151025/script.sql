CREATE FUNCTION [dbo].[GetUserAndPublicImagesByLocation] 
(	
	@UserID uniqueidentifier, 
	@MinLat float, 
	@MinLng float, 
	@MaxLat float, 
	@MaxLng float,
	@From int=0,
	@To int=0
)
RETURNS TABLE 
AS
RETURN 
(
-- TODO: From and To are ignored now
	SELECT TOP (@To-@From) t.ImageID, t.FileName, t.IsPublic, t.Description, t.Lat, t.Lng, u.UserID as UserID from Image t 
	left join ImageUser tu on t.ImageID = tu.ImageID 
	left join [User] u on tu.UserID = u.UserID
	left join [UserRole] ur on u.UserID = ur.UserID
	left join [Role] r on ur.RoleID = r.RoleID
	WHERE 
		(t.IsPublic=1 
		OR tu.UserID = @UserID 
		OR @UserID = 'c9f148f7-923a-46b0-8b7c-bd4b54d90886' 
		OR EXISTS(SELECT UserRoleID from UserRole WHERE RoleID = '5195a2d5-0b51-44c4-b672-7383482bc77a' and UserID=@UserID))
		AND 
		(Lat>=@MinLat AND Lng>=@MinLng AND Lat<=@MaxLat AND Lng<=@MaxLng)
)

