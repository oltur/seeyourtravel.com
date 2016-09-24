﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class GetAllRoughUserLocation
{
    public System.Guid userid { get; set; }
    public string username { get; set; }
    public double lat { get; set; }
    public double lng { get; set; }
    public Nullable<System.DateTime> Expr1 { get; set; }
}

public partial class Image
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Image()
    {
        this.ImageUsers = new HashSet<ImageUser>();
        this.PlaceImages = new HashSet<PlaceImage>();
    }

    public System.Guid ImageID { get; set; }
    public string FileName { get; set; }
    public bool IsPublic { get; set; }
    public Nullable<double> Lat { get; set; }
    public Nullable<double> Lng { get; set; }
    public string Description { get; set; }
    public System.DateTime Created { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<ImageUser> ImageUsers { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<PlaceImage> PlaceImages { get; set; }
}

public partial class ImageUser
{
    public System.Guid ImageUserID { get; set; }
    public System.Guid ImageID { get; set; }
    public System.Guid UserID { get; set; }

    public virtual Image Image { get; set; }
    public virtual User User { get; set; }
}

public partial class Place
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Place()
    {
        this.PlaceImages = new HashSet<PlaceImage>();
        this.PlaceTypePlaces = new HashSet<PlaceTypePlace>();
        this.PlaceUsers = new HashSet<PlaceUser>();
    }

    public System.Guid PlaceID { get; set; }
    public double Lat { get; set; }
    public double Lng { get; set; }
    public string Name { get; set; }
    public string Vicinity { get; set; }
    public double Rating { get; set; }
    public bool IsPublic { get; set; }
    public System.DateTime Created { get; set; }
    public string Link { get; set; }
    public string Description { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<PlaceImage> PlaceImages { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<PlaceTypePlace> PlaceTypePlaces { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<PlaceUser> PlaceUsers { get; set; }
}

public partial class PlaceImage
{
    public System.Guid PlaceImageID { get; set; }
    public System.Guid PlaceID { get; set; }
    public System.Guid ImageID { get; set; }

    public virtual Image Image { get; set; }
    public virtual Place Place { get; set; }
}

public partial class PlaceType
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public PlaceType()
    {
        this.PlaceTypePlaces = new HashSet<PlaceTypePlace>();
    }

    public System.Guid PlaceTypeID { get; set; }
    public string Name { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<PlaceTypePlace> PlaceTypePlaces { get; set; }
}

public partial class PlaceTypePlace
{
    public System.Guid PlaceTypePlaceID { get; set; }
    public System.Guid PlaceTypeID { get; set; }
    public System.Guid PlaceID { get; set; }

    public virtual Place Place { get; set; }
    public virtual PlaceType PlaceType { get; set; }
}

public partial class PlaceUser
{
    public System.Guid PlaceUserID { get; set; }
    public System.Guid PlaceID { get; set; }
    public System.Guid UserID { get; set; }

    public virtual Place Place { get; set; }
    public virtual User User { get; set; }
}

public partial class Role
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Role()
    {
        this.UserRoles = new HashSet<UserRole>();
    }

    public System.Guid RoleID { get; set; }
    public string RoleName { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<UserRole> UserRoles { get; set; }
}

public partial class Track
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Track()
    {
        this.TrackUsers = new HashSet<TrackUser>();
    }

    public System.Guid TrackID { get; set; }
    public string FileName { get; set; }
    public bool IsPublic { get; set; }
    public string Description { get; set; }
    public string Category { get; set; }
    public string ImageUrl { get; set; }
    public System.DateTime Created { get; set; }
    public string CreatedBy { get; set; }
    public string Location { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<TrackUser> TrackUsers { get; set; }
}

public partial class TrackLocalization
{
    public System.Guid TrackLocalizationID { get; set; }
    public System.Guid TrackID { get; set; }
    public string Locale { get; set; }
    public string Description { get; set; }
}

public partial class TrackUser
{
    public System.Guid TrackUserID { get; set; }
    public System.Guid TrackID { get; set; }
    public System.Guid UserID { get; set; }

    public virtual Track Track { get; set; }
    public virtual User User { get; set; }
}

public partial class User
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public User()
    {
        this.ImageUsers = new HashSet<ImageUser>();
        this.PlaceUsers = new HashSet<PlaceUser>();
        this.TrackUsers = new HashSet<TrackUser>();
        this.UserLocations = new HashSet<UserLocation>();
        this.UserLogins = new HashSet<UserLogin>();
        this.UserRoles = new HashSet<UserRole>();
    }

    public System.Guid UserID { get; set; }
    public string UserName { get; set; }
    public string UserPassword { get; set; }
    public string FacebookId { get; set; }
    public Nullable<bool> Disabled { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<ImageUser> ImageUsers { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<PlaceUser> PlaceUsers { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<TrackUser> TrackUsers { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<UserLocation> UserLocations { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<UserLogin> UserLogins { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<UserRole> UserRoles { get; set; }
}

public partial class UserLocation
{
    public System.Guid UserLocationID { get; set; }
    public System.Guid UserID { get; set; }
    public double Lat { get; set; }
    public double Lng { get; set; }
    public System.DateTime Time { get; set; }

    public virtual User User { get; set; }
}

public partial class UserLogin
{
    public System.Guid UserLoginID { get; set; }
    public System.Guid UserID { get; set; }
    public System.DateTime Time { get; set; }
    public string LoginType { get; set; }
    public string CallerIp { get; set; }
    public string CallerAgent { get; set; }
    public string CalledUrl { get; set; }

    public virtual User User { get; set; }
}

public partial class UserRole
{
    public System.Guid UserRoleID { get; set; }
    public System.Guid UserID { get; set; }
    public System.Guid RoleID { get; set; }

    public virtual Role Role { get; set; }
    public virtual User User { get; set; }
}

public partial class Version
{
    public int VersionHigh { get; set; }
    public int VersionLow { get; set; }
    public System.DateTime Created { get; set; }
}

public partial class GetAllTracks_Result
{
    public System.Guid TrackID { get; set; }
    public string FileName { get; set; }
    public bool IsPublic { get; set; }
    public string Description { get; set; }
    public string Category { get; set; }
    public string ImageUrl { get; set; }
    public System.DateTime Created { get; set; }
    public string CreatedBy { get; set; }
    public string Location { get; set; }
}

public partial class GetFriendsLocations_Result
{
    public System.Guid UserID { get; set; }
    public string UserName { get; set; }
    public double Lat { get; set; }
    public double Lng { get; set; }
    public System.DateTime Time { get; set; }
}

public partial class GetTrackForUserByIdOrName_Result
{
    public System.Guid TrackID { get; set; }
    public string FileName { get; set; }
    public bool IsPublic { get; set; }
    public string Description { get; set; }
    public string Category { get; set; }
    public string ImageUrl { get; set; }
    public System.DateTime Created { get; set; }
    public string CreatedBy { get; set; }
    public string Location { get; set; }
}

public partial class GetUserAndPublicImagesByLocation_Result
{
    public System.Guid ImageID { get; set; }
    public string FileName { get; set; }
    public bool IsPublic { get; set; }
    public string Description { get; set; }
    public Nullable<double> Lat { get; set; }
    public Nullable<double> Lng { get; set; }
    public Nullable<System.Guid> UserID { get; set; }
}

public partial class GetUserAndPublicPlacesByLocation_Result
{
    public System.Guid PlaceID { get; set; }
    public string Name { get; set; }
    public bool IsPublic { get; set; }
    public double Lat { get; set; }
    public double Lng { get; set; }
    public double Rating { get; set; }
    public string Vicinity { get; set; }
    public Nullable<System.Guid> UserID { get; set; }
}

public partial class GetUserandPublicTracks_Result
{
    public System.Guid TrackID { get; set; }
    public bool IsPublic { get; set; }
    public string Category { get; set; }
    public string Description { get; set; }
    public string FileName { get; set; }
    public string ImageUrl { get; set; }
    public string Location { get; set; }
}

public partial class GetUserImages_Result
{
    public System.Guid ImageID { get; set; }
    public string FileName { get; set; }
    public bool IsPublic { get; set; }
    public string Description { get; set; }
    public Nullable<double> Lat { get; set; }
    public Nullable<double> Lng { get; set; }
    public Nullable<System.Guid> UserID { get; set; }
}

public partial class GetUserPlaces_Result
{
    public System.Guid PlaceID { get; set; }
    public double Rating { get; set; }
    public string Vicinity { get; set; }
    public bool IsPublic { get; set; }
    public string Name { get; set; }
    public double Lat { get; set; }
    public double Lng { get; set; }
    public System.DateTime Created { get; set; }
    public Nullable<System.Guid> UserID { get; set; }
}

public partial class GetUserPlaces_Result1
{
    public System.Guid PlaceID { get; set; }
    public double Rating { get; set; }
    public string Vicinity { get; set; }
    public bool IsPublic { get; set; }
    public string Name { get; set; }
    public double Lat { get; set; }
    public double Lng { get; set; }
    public System.DateTime Created { get; set; }
    public Nullable<System.Guid> UserID { get; set; }
    public string FileName { get; set; }
}

public partial class GetUserPlaces_Result2
{
    public System.Guid PlaceID { get; set; }
    public double Rating { get; set; }
    public string Vicinity { get; set; }
    public bool IsPublic { get; set; }
    public string Name { get; set; }
    public double Lat { get; set; }
    public double Lng { get; set; }
    public System.DateTime Created { get; set; }
    public Nullable<System.Guid> UserID { get; set; }
    public string FileName { get; set; }
    public string Link { get; set; }
    public string Description { get; set; }
}

public partial class GetUserTracks_Result
{
    public System.Guid TrackID { get; set; }
    public string FileName { get; set; }
    public bool IsPublic { get; set; }
    public string Description { get; set; }
    public string Category { get; set; }
    public Nullable<System.Guid> UserID { get; set; }
    public string Location { get; set; }
}

public partial class IsAdmin_Result
{
    public int Result { get; set; }
}

public partial class IsGuest_Result
{
    public int Result { get; set; }
}
