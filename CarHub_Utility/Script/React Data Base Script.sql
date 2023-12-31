USE [Car_CarHubAPI]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[PassWord] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](max) NOT NULL,
	[MobileNumber] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[CarId] [int] NOT NULL,
	[VariantId] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
	[BookingDate] [datetime2](7) NOT NULL,
	[DealerID] [int] NOT NULL,
 CONSTRAINT [PK_Bookings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](max) NOT NULL,
	[BrandImage] [nvarchar](max) NULL,
	[IsDelete] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarImages]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[CarId] [int] NOT NULL,
 CONSTRAINT [PK_CarImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Details] [nvarchar](max) NULL,
	[BrandId] [int] NOT NULL,
	[CarTypeId] [int] NOT NULL,
	[StartingPrice] [float] NOT NULL,
	[EndPrice] [float] NOT NULL,
	[ManufacturingYear] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ImageURL] [nvarchar](max) NULL,
 CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarSpecifications]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarSpecifications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [int] NOT NULL,
	[Displacement] [nvarchar](max) NOT NULL,
	[MaxPower] [nvarchar](max) NOT NULL,
	[MaxTorque] [nvarchar](max) NOT NULL,
	[Cylinder] [int] NOT NULL,
	[FrontSuspension] [nvarchar](max) NOT NULL,
	[RearSuspension] [nvarchar](max) NOT NULL,
	[ShockAbsorbers] [nvarchar](max) NOT NULL,
	[Length] [int] NOT NULL,
	[Width] [int] NOT NULL,
	[Height] [int] NOT NULL,
	[BootSpace] [int] NOT NULL,
	[SeatingCapacity] [int] NOT NULL,
	[WheelBase] [int] NOT NULL,
	[GearBox] [int] NOT NULL,
	[DriveType] [nvarchar](max) NULL,
	[AirbagNo] [nvarchar](max) NULL,
 CONSTRAINT [PK_CarSpecifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarTypes]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CarTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarXColors]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarXColors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
 CONSTRAINT [PK_CarXColors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarXFeatures]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarXFeatures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [int] NOT NULL,
	[FeatureTypeId] [int] NULL,
	[FeatureId] [int] NOT NULL,
 CONSTRAINT [PK_CarXFeatures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](max) NOT NULL,
	[CountryId] [int] NOT NULL,
	[StateId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dealers]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dealers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DealerName] [nvarchar](max) NOT NULL,
	[MobileNumber] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[DealerLocation] [nvarchar](max) NULL,
	[BrandId] [int] NOT NULL,
	[IsAvailable] [bit] NOT NULL,
 CONSTRAINT [PK_Dealers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Features]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Features](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[FeatureTypeId] [int] NULL,
 CONSTRAINT [PK_Features] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeatureTypes]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeatureTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FeatureTypeName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_FeatureTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeatureXFeaturetypes]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeatureXFeaturetypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FeatureTypeId] [int] NOT NULL,
	[FeatureId] [int] NOT NULL,
 CONSTRAINT [PK_FeatureXFeaturetypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mileages]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mileages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [int] NOT NULL,
	[FuelType] [nvarchar](max) NULL,
	[Transmission] [nvarchar](max) NULL,
	[Average] [float] NOT NULL,
 CONSTRAINT [PK_Mileages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [int] NOT NULL,
	[overallRating] [nvarchar](max) NULL,
	[Descriptaion] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[LikeCount] [int] NULL,
	[DisLikeCount] [int] NULL,
	[ViewCount] [int] NULL,
	[Createddate] [datetime2](7) NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReviewXComments]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReviewXComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReviewId] [int] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[Createddate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ReviewXComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[States]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](max) NOT NULL,
	[CountryId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Variants]    Script Date: 13-12-2023 13:12:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Variants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [int] NOT NULL,
	[VariantName] [nvarchar](max) NULL,
	[Transmission] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_Variants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230807053853_AddfirstToDb', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230807061246_AddNewtoData', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230809104138_AddNewToDb', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230810053421_AddcarxcolorToDb', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230810054555_AddcarcolorToDb', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230818073017_addnewwone', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230821103008_addcarrrrr', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230905100154_AddIntialdata', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230915141432_Addchangetodb', N'7.0.9')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Discriminator], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0272c8ab-9760-4bdf-bf10-422d8f2fbdfd', N'ApplicationRole', N'SuperAdmin', N'SUPERADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Discriminator], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'539a94b9-13af-4bfc-9633-2387dc47aae3', N'ApplicationRole', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Discriminator], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ab761022-bb91-4032-8fbc-f712459eeaeb', N'ApplicationRole', N'Employee', N'EMPLOYEE', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Discriminator], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ed9dd024-68de-48de-8114-6497a96b6247', N'ApplicationRole', N'Customer', N'CUSTOMER', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Discriminator]) VALUES (N'08b7e723-93cd-468b-99e1-7e5a3e3e3dca', N'0272c8ab-9760-4bdf-bf10-422d8f2fbdfd', N'ApplicationUserRole')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Discriminator]) VALUES (N'08b7e723-93cd-468b-99e1-7e5a3e3e3dca', N'539a94b9-13af-4bfc-9633-2387dc47aae3', N'ApplicationUserRole')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Discriminator]) VALUES (N'51bdee09-4e79-4967-bac0-44d33c8c101d', N'ab761022-bb91-4032-8fbc-f712459eeaeb', N'ApplicationUserRole')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Discriminator]) VALUES (N'51bdee09-4e79-4967-bac0-44d33c8c101d', N'ed9dd024-68de-48de-8114-6497a96b6247', N'ApplicationUserRole')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Discriminator]) VALUES (N'b56ef4cc-4aab-4622-a90b-5ed5a772612b', N'ed9dd024-68de-48de-8114-6497a96b6247', N'ApplicationUserRole')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [Discriminator]) VALUES (N'ea48c6e7-ee08-4278-be2f-c6d6493b1c2f', N'ed9dd024-68de-48de-8114-6497a96b6247', N'ApplicationUserRole')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Address], [PassWord], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'08b7e723-93cd-468b-99e1-7e5a3e3e3dca', N'Henil', N'Patel', N'Ahmadabad', N'Henil@123', N'henil123@gmail.com', N'HENIL123@GMAIL.COM', N'henil123@gmail.com', N'HENIL123@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEM2UxTfjpeJtK6RALC6IZ3MX1o48Qolojm3FZ26TIG7bTnZRWyMDqaVRFZNZeO6amw==', N'Q5CGXWFD5LL6NRXCQEVANO5X5I6FF7YJ', N'06ae8f58-84f6-4bf1-839e-a5baa4200c81', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Address], [PassWord], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'51bdee09-4e79-4967-bac0-44d33c8c101d', N'Try', N'T', N'Ahm', N'Try@1234', N'try123@gmail.com', N'TRY123@GMAIL.COM', N'try123@gmail.com', N'TRY123@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAED4p0b72fnsTRSqK9DLrM9U9NsI1DzCQp/R3J7Q8efNY671Awnk8tFRxMMEbMSbe9g==', N'3LIWVA7PCGYO4PIC25TGWZ2BZM37V5W7', N'17e6364d-7ee8-431a-be43-d67daaebab40', N'9090909090', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Address], [PassWord], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b56ef4cc-4aab-4622-a90b-5ed5a772612b', NULL, N'kanazariya', N'Halvad', N'Jaydev@123', N'Jaydev@gmail.com', N'JAYDEV@GMAIL.COM', N'Jaydev@gmail.com', N'JAYDEV@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEKLFI9+kPve2qYrOafSTPGCYiXve5D1gImFWlr0AvweqpkX0vf84jMUWOjl6zck+4A==', N'W5ED7R5ABVBOY2NUAZHP74MKVJHPFTHG', N'79d80604-1821-458d-8165-68a5c033388a', N'9510245321', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Address], [PassWord], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ea48c6e7-ee08-4278-be2f-c6d6493b1c2f', N'jaydev', N'kanzariya', N'Jaydev@123', N'Jaydev@123', N'kanzariyajaydev@gmail.com', N'KANZARIYAJAYDEV@GMAIL.COM', N'kanzariyajaydev@gmail.com', N'KANZARIYAJAYDEV@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEDGZM0tyii5IPPY/bnlzIBMndxb7T7StoeNPjqDB7E9/uKzEMpamS02IUY17l/cFJQ==', N'3VOURG5QUHT2AIRSBP72QR57SJ7TM3CP', N'9059dc61-1181-4836-a6b2-786378c2eabf', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [BrandName], [BrandImage], [IsDelete], [IsActive]) VALUES (1, N'Maruti Suzuki', N'https://imgd.aeplcdn.com/0x0/n/cw/ec/10/brands/logos/maruti-suzuki1647009823420.jpg?v=1647009823707', 0, 1)
INSERT [dbo].[Brands] ([Id], [BrandName], [BrandImage], [IsDelete], [IsActive]) VALUES (3, N'hyundai', N'https://imgd.aeplcdn.com/0x0/n/cw/ec/8/brands/logos/hyundai.jpg?v=1629973193722', 0, 1)
INSERT [dbo].[Brands] ([Id], [BrandName], [BrandImage], [IsDelete], [IsActive]) VALUES (4, N'Tata', N'https://imgd.aeplcdn.com/0X0/n/cw/ec/16/brands/logos/tata.jpg?v=1629973276336&q=75', 0, 1)
INSERT [dbo].[Brands] ([Id], [BrandName], [BrandImage], [IsDelete], [IsActive]) VALUES (5, N'Mahindr', N'https://imgd.aeplcdn.com/0X0/n/cw/ec/9/brands/logos/mahindra.jpg?v=1629973668273&q=75', 0, 1)
INSERT [dbo].[Brands] ([Id], [BrandName], [BrandImage], [IsDelete], [IsActive]) VALUES (6, N'Toyota', N'https://imgd.aeplcdn.com/0X0/n/cw/ec/17/brands/logos/toyota.jpg?v=1630055705330&q=75', 1, 1)
INSERT [dbo].[Brands] ([Id], [BrandName], [BrandImage], [IsDelete], [IsActive]) VALUES (7, N'Kia', N'https://imgd.aeplcdn.com/0X0/n/cw/ec/70/brands/logos/kia.jpg?v=1630057189593&q=75', 0, 1)
INSERT [dbo].[Brands] ([Id], [BrandName], [BrandImage], [IsDelete], [IsActive]) VALUES (8, N'Honda', N'https://imgd.aeplcdn.com/0X0/n/cw/ec/7/brands/logos/honda.jpg?v=1630056209549&q=75', 0, 1)
INSERT [dbo].[Brands] ([Id], [BrandName], [BrandImage], [IsDelete], [IsActive]) VALUES (1010, N'string', N'string', 1, 1)
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[CarImages] ON 

INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (32, N'\images\cars\car-1\909f216f-30b9-4487-8fb0-693ee7d23429.jpg', 1)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (35, N'\images\cars\car-1\126bf9fa-c3cf-42cd-bb4d-efe78c115b37.jpg', 1)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (36, N'\images\cars\car-1\d89eba1b-ae3e-4a43-b256-382cf6a35adb.jpg', 1)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (37, N'\images\cars\car-1\893c7c10-be27-489e-bba2-bd66c42251fa.jpg', 1)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (38, N'\images\cars\car-8\91b8ec6a-bc5d-4d21-ba2e-3a5460039b85.webp', 8)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (39, N'\images\cars\car-8\0c20cf54-cb86-4190-a031-a6afb30877a6.webp', 8)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (41, N'\images\cars\car-8\944b3ab9-9dc8-4001-a600-ea580a25e36f.webp', 8)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (42, N'\images\cars\car-8\779b222c-fe49-46ba-a79e-b59d1d0fa84f.webp', 8)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (44, N'\images\cars\car-9\a7d08212-badb-492d-8c9f-f57ad63a6fd2.webp', 9)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (45, N'\images\cars\car-9\7abcf72c-7f17-4d4a-aef2-0855b3dec490.webp', 9)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (47, N'\images\cars\car-8\aa45bedd-05fb-423c-a3e3-40e64eeefa2f.webp', 8)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (50, N'\images\cars\car-9\276e3909-7ed2-4567-8275-5626ca8d335d.webp', 9)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (51, N'\images\cars\car-10\5149743c-7526-434a-8324-2311265a5fa3.webp', 10)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (52, N'\images\cars\car-10\104be74a-c57c-4e21-b46f-909102dd5afc.webp', 10)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (53, N'\images\cars\car-10\aafdf106-329e-45af-9560-05fa4ee724c4.webp', 10)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (54, N'\images\cars\car-10\1eadd3a2-b505-43be-8a7d-4e62968f55f3.webp', 10)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (55, N'\images\cars\car-10\4416a84c-53b4-4988-93d1-1ed3379763e8.webp', 10)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (56, N'\images\cars\car-10\91a8faaf-6097-4f6e-8073-5568a65b49a0.webp', 10)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (57, N'\images\cars\car-10\2a304d8e-415b-4a73-9918-645eb97f53f9.webp', 10)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (60, N'\images\cars\car-12\8ca660fa-69cb-4c05-8bf2-156502825629.webp', 12)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (61, N'\images\cars\car-12\63f5045c-403d-488e-81be-ffbfc2006936.webp', 12)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (62, N'\images\cars\car-12\7b5e4b8b-234f-4bd2-8044-87c97b8e9d8c.webp', 12)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (63, N'\images\cars\car-12\ef7f546f-a219-4fcb-947d-a911bdf978fa.webp', 12)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (64, N'\images\cars\car-12\b4ec4277-9722-4934-9189-4ebef441b47a.webp', 12)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (65, N'\images\cars\car-12\0a534828-759d-41d2-80a1-cf37180b7bea.webp', 12)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (66, N'\images\cars\car-12\e248a6de-2b0e-4bd9-9a42-efa225a488d6.webp', 12)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (67, N'\images\cars\car-13\5d4c175e-1ece-4dad-8f71-288ab4121cc4.webp', 13)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (68, N'\images\cars\car-13\a899b104-5e48-4b65-9424-992b21e0ac02.webp', 13)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (69, N'\images\cars\car-13\32161826-5aa3-449c-8b79-9400056c0224.webp', 13)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (70, N'\images\cars\car-13\5ff6f066-17f6-4fc1-9592-86cbd00187ba.webp', 13)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (71, N'\images\cars\car-13\fdbba622-8e9a-49cb-90f0-76ea4009df50.webp', 13)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (72, N'\images\cars\car-13\989f43e3-cca9-4a0d-9686-8192009edbea.webp', 13)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (73, N'\images\cars\car-14\0ae156a9-2434-4434-a218-3d6d8844cd9a.webp', 14)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (74, N'\images\cars\car-14\7b0aab23-fe26-4ffb-8bac-fa2209258670.webp', 14)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (75, N'\images\cars\car-14\877f6f44-6f0e-4a0f-be49-5a5f4ddde7a7.webp', 14)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (76, N'\images\cars\car-14\cdf42813-05ae-469d-afce-ddcd24951a55.webp', 14)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (77, N'\images\cars\car-14\b7ba0b05-e833-414c-aaf1-e6412f09755a.webp', 14)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (78, N'\images\cars\car-14\94124e09-5b04-4888-8248-d361e9a740a6.webp', 14)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (79, N'\images\cars\car-14\6946278f-32f4-47d5-a29d-dca6d5eac8f4.webp', 14)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (80, N'\images\cars\car-14\8ab08c39-2805-4f28-9ead-45e8ad43dbf8.webp', 14)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (81, N'\images\cars\car-15\934296c2-2d0e-4fea-9847-2baaeea70eaf.webp', 15)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (82, N'\images\cars\car-15\6aa03898-8c86-47ad-b182-5be2c3c31cec.webp', 15)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (83, N'\images\cars\car-15\aaa1f84f-16ad-444a-96f4-8edee6db1b69.webp', 15)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (84, N'\images\cars\car-15\dd39136b-ecfc-43b4-8db2-4e41858860bb.webp', 15)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (85, N'\images\cars\car-15\e4d48e2a-5f8f-4732-8632-592ddb0bd1cf.webp', 15)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (86, N'\images\cars\car-15\025a4561-6402-4fdb-bc11-d76ebf06b4e8.webp', 15)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (87, N'\images\cars\car-15\8c3842ac-c07d-48a2-9cff-651a9a64b288.webp', 15)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (88, N'\images\cars\car-16\1c61c78a-c2f9-453a-9959-61fee221b7a3.webp', 16)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (89, N'\images\cars\car-16\ef05d4e5-e66a-4d5d-be82-a330f4562b83.webp', 16)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (90, N'\images\cars\car-16\a58792d1-62d9-4148-92f1-1d095c8bfc0a.webp', 16)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (91, N'\images\cars\car-16\37cc5b64-f865-417d-a22b-347ac4030dd0.webp', 16)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (92, N'\images\cars\car-16\87a5d7fb-71b9-4841-9a25-d39a6f0c4fd4.webp', 16)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (93, N'\images\cars\car-16\997a4464-ae23-4673-87d1-9211a3a6a8bb.webp', 16)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (96, N'\images\cars\car-16\e16a8f03-acd4-4da0-b259-f9c6f2eac144.webp', 16)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (98, N'\images\cars\car-17\8c17025c-affa-439a-9d59-dd85baac4068.webp', 17)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (99, N'\images\cars\car-17\0be30882-fcde-4d2f-a6fd-b6e1ce0e6007.webp', 17)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (100, N'\images\cars\car-17\54cdef84-a1c2-4fb7-ac8f-a01a88a3096e.webp', 17)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (101, N'\images\cars\car-17\3ceb955a-48e6-4099-9153-0f20ddb71a79.webp', 17)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (102, N'\images\cars\car-17\f64ecc48-50c9-44ec-aea8-85a00b67df48.webp', 17)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (103, N'\images\cars\car-17\08667943-9f7c-4033-8af6-66a6a315864c.webp', 17)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (104, N'\images\cars\car-18\3bd6e48b-0bee-442d-b4e4-0242aed8c6c1.webp', 18)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (105, N'\images\cars\car-18\1a53a782-276f-4978-88d0-627b7fa45995.webp', 18)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (108, N'\images\cars\car-18\043cb37b-cc32-4225-b291-86c0f4bf8fc1.webp', 18)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (111, N'\images\cars\car-18\34a81e53-7b7e-4fca-9419-41b7d01fa0e6.webp', 18)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (112, N'\images\cars\car-18\f0017811-c9f3-44cc-ac97-cded7de561d0.webp', 18)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (113, N'\images\cars\car-11\573997f8-fcf7-4a93-8928-d195d87739fe.webp', 11)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (114, N'\images\cars\car-11\be5e17bd-8d45-4890-bb06-062f76a2f446.webp', 11)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (115, N'\images\cars\car-11\0c18d29e-ab77-4048-9d16-8336c626a4d0.webp', 11)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (116, N'\images\cars\car-11\8523dc39-0366-4538-a148-b1cf1a1978a8.webp', 11)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (117, N'\images\cars\car-11\bbdd72da-d426-4588-8131-eee48c330427.webp', 11)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (118, N'\images\cars\car-11\3a0757bc-c146-4f99-bb4d-c2b48fa94e0e.webp', 11)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (119, N'\images\cars\car-19\d65e0797-5993-442c-8cfb-bb496cecfa89.webp', 19)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (120, N'\images\cars\car-19\b411a4d9-c1b2-428f-8be7-c93608377992.webp', 19)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (121, N'\images\cars\car-19\cff91286-3968-4da4-bc3a-35258f92eec7.webp', 19)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (122, N'\images\cars\car-19\7d8cd9c5-7640-45c5-9385-26a8db9e4a99.webp', 19)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (123, N'\images\cars\car-19\72766872-f17f-48de-933f-17267d9fb6e6.webp', 19)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (124, N'\images\cars\car-19\2ede5225-55fa-4322-99bb-3b5112055ce5.webp', 19)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (125, N'\images\cars\car-19\c2b2a7a6-7990-45ee-bf54-9d640d8291f4.webp', 19)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (126, N'\images\cars\car-19\a85087d3-c266-4cf3-a819-bed08abe9f47.webp', 19)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (127, N'\images\cars\car-20\5d14fc89-0d7d-4e64-8fe9-c7c1e0d874c5.webp', 20)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (128, N'\images\cars\car-20\d315e589-83b4-4216-9ab2-1efad1cf67dc.webp', 20)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (129, N'\images\cars\car-20\b152734b-d561-4bff-8873-2003ef23a330.webp', 20)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (130, N'\images\cars\car-20\83c01985-628e-40da-bc0e-68f63185b45b.webp', 20)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (131, N'\images\cars\car-20\cca8361f-3f30-4451-b00f-a72b4254af52.webp', 20)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (132, N'\images\cars\car-21\4884bb14-ffde-40be-af55-be7d3d7a54fa.jpg', 21)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (133, N'\images\cars\car-22\4c550a9a-9556-4ac1-a181-521a0c3537b9.webp', 22)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (134, N'\images\cars\car-22\d044d860-31f5-44fb-8db9-04b6c9afea46.webp', 22)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (135, N'\images\cars\car-22\f4ffc952-1a7f-4257-9f62-def05d64a50e.webp', 22)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (136, N'\images\cars\car-23\7e070044-b383-460d-8f54-4d4b559c0780.webp', 23)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (137, N'\images\cars\car-23\8c58c3d5-243a-4fda-a0f6-cffcf124b75f.webp', 23)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (138, N'\images\cars\car-23\f8b58e3c-41a4-4366-99e8-daf6a2a987d1.webp', 23)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (139, N'\images\cars\car-23\53bc060b-34c0-4cbb-9841-e3ebfea3d6f3.webp', 23)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (140, N'\images\cars\car-23\b8d2af8d-6ffa-4b8c-b05a-396ec8bc43d5.webp', 23)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (141, N'\images\cars\car-24\d8f7c27a-f8f8-4a4c-abe3-219eef5b7d17.webp', 24)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (142, N'\images\cars\car-24\0b9d0ef4-d9b6-4a03-97c7-baa09ae88821.webp', 24)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (143, N'\images\cars\car-24\4ea916e1-1ea9-47d0-bc05-26f691efde67.webp', 24)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (144, N'\images\cars\car-24\de7db2fd-dfe9-4799-affc-692a8dc84240.webp', 24)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (145, N'\images\cars\car-24\0b77c9ad-f9db-4b31-b1eb-e8711ec95e71.webp', 24)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (146, N'\images\cars\car-25\4f6757cc-9ca0-428e-bd41-528c2a113d44.webp', 25)
GO
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (147, N'\images\cars\car-25\6e3ec396-8c93-4231-a009-53300db49622.webp', 25)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (148, N'\images\cars\car-25\38f4772a-703e-4662-b067-e04d1f090b52.webp', 25)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (149, N'\images\cars\car-26\63fd8554-70ef-4034-964d-97413ec67b3c.webp', 26)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (150, N'\images\cars\car-26\4286ce38-7641-45f9-8209-360e88d748bf.webp', 26)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (151, N'\images\cars\car-26\f002dc6c-26e6-4040-94de-11a65b54c753.webp', 26)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (152, N'\images\cars\car-26\a3db63fc-b649-4cf0-b3f3-07199b207a2c.webp', 26)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (153, N'\images\cars\car-26\57ab6294-98e7-44f7-a12d-251999ae38dc.webp', 26)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (154, N'\images\cars\car-27\b4949180-b83e-42d1-b486-ff3e9ee06666.webp', 27)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (157, N'\images\cars\car-28\dda7dd8a-10ab-4280-ae16-fca35712d192.webp', 28)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (158, N'\images\cars\car-29\0a2f05cc-c4e6-4fd8-ae0d-a46c1248b84e.webp', 29)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (159, N'\images\cars\car-30\c9943e20-5b53-41b7-b59b-740961184f84.webp', 30)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (160, N'\images\cars\car-31\4893e55c-d870-4136-8a1a-cb044709502f.webp', 31)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (161, N'\images\cars\car-32\393406ee-a002-4ec5-a279-b362fc280468.webp', 32)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (162, N'\images\cars\car-33\40e7ac17-893d-4152-b95e-62d187a35ad7.webp', 33)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (163, N'\images\cars\car-33\2227d42a-a425-4dd3-87c1-11873dcc33bc.webp', 33)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (164, N'\images\cars\car-33\72cd0ce9-e7a3-470e-ac7f-ec09ebbaedc1.webp', 33)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (165, N'\images\cars\car-34\a0923ecd-11cb-411f-bf07-ddcfd21060af.webp', 34)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (166, N'\images\cars\car-35\e2a6ce88-9aec-46cd-8182-160ee8ed9e70.webp', 35)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (167, N'\images\cars\car-36\a81a8edc-3249-4925-b622-dc964cc3188f.jpg', 36)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (168, N'\images\cars\car-36\6ae8252e-5d02-4224-b50d-60e78f89dec0.jpg', 36)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (169, N'\images\cars\car-36\21f48f1d-0a8a-4f77-a0ce-65598d159831.jpg', 36)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (170, N'\images\cars\car-37\c419690c-b947-4c46-920a-18686c484caa.webp', 37)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (171, N'\images\cars\car-37\36a705c5-4319-4e45-8487-409100ef4b94.webp', 37)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (172, N'\images\cars\car-37\b9c8fe35-6e13-4ccc-b62e-4b3e2fd71ac3.webp', 37)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (174, N'\images\cars\car-39\e5f2cece-bd37-4365-bc91-36fc3d898102.webp', 39)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (175, N'\images\cars\car-39\52d3a8fe-e2a7-4cd6-ba9b-31b6b04de8c3.webp', 39)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (176, N'\images\cars\car-39\6d1cd82e-e044-46f3-80ce-e71dce7e3e80.webp', 39)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (177, N'\images\cars\car-40\72892ce6-f5a0-4add-bb96-53acc02c6844.webp', 40)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (178, N'\images\cars\car-40\8c8abede-a569-4bf8-9218-c9371f89bd47.webp', 40)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (179, N'\images\cars\car-40\556dc1f6-5ecd-4127-b6bc-3d8064551e9a.webp', 40)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (180, N'\images\cars\car-41\5df555dd-edc1-4988-bdd9-308a99e6e3f4.webp', 41)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (181, N'\images\cars\car-42\1dcc6629-e1a2-4f3e-aac1-e75f1a68ef7d.webp', 42)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (182, N'\images\cars\car-42\9c0ae3bd-18d1-44c6-b3d7-b8d179d950e2.webp', 42)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (183, N'\images\cars\car-42\38acc7ac-6621-4fd9-86ce-dde480a759c9.webp', 42)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (184, N'\images\cars\car-43\cf4fb649-eed8-4249-992b-cbef0dddd441.webp', 43)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (185, N'\images\cars\car-43\0844ab26-22b3-4d52-9a1e-900af488a03b.webp', 43)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (186, N'\images\cars\car-43\79f73b1a-8d38-49ca-8070-1488f4417020.webp', 43)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (187, N'\images\cars\car-44\d5ea00a3-bb34-4f9a-8dea-a402525ace1b.webp', 44)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (188, N'\images\cars\car-44\ecc27bd2-a8cb-4539-b0da-08b3290bd6db.webp', 44)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (189, N'\images\cars\car-44\43ff941f-257e-4516-9c99-f74edfce9c81.webp', 44)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (190, N'\images\cars\car-45\98290211-950d-47ee-8c19-e1a888305db3.webp', 45)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (191, N'\images\cars\car-45\195c7056-6f1f-4887-ae75-5f26c3500617.webp', 45)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (193, N'\images\cars\car-45\70c4353b-af42-4cf0-ac1c-1b7b30332069.webp', 45)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (195, N'\images\cars\car-45\923d8a4e-e41b-422b-ab76-5ad1ec81015a.webp', 45)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (196, N'\images\cars\car-45\4e1aab64-8321-481b-b664-a3ec3fba2013.webp', 45)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (197, N'\images\cars\car-45\30241397-fad9-421f-87e1-13d6eb582d13.webp', 45)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (198, N'\images\cars\car-46\97befbe0-d804-48d6-98b8-dd3d74a9628b.webp', 46)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (199, N'\images\cars\car-46\08a85d09-edd6-4485-80bc-63f65eeefcca.webp', 46)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (200, N'\images\cars\car-46\3111562a-e75f-4bbd-9e61-7e9881e3ea42.webp', 46)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (202, N'\images\cars\car-46\ad731bdf-580f-41cb-a9b2-fd3277ec7a7d.webp', 46)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (203, N'\images\cars\car-47\ac9ebbc1-e3ab-4bdc-b535-079b8ad7d6a4.webp', 47)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (204, N'\images\cars\car-48\178838e6-fd8c-4998-a116-879796c5378f.webp', 48)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (205, N'\images\cars\car-48\0ed5c527-2ebf-4cb2-b356-ae7b17687bf5.webp', 48)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (206, N'\images\cars\car-48\ef614b4a-76e5-456e-b44b-066249415c4f.webp', 48)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (211, N'/images/car/7405080a-ca1a-482d-98df-ed663528ad7a.jpg', 23)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (212, N'/images/car/7405080a-ca1a-482d-98df-ed663528ad7a.jpg', 23)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (215, N'/images/car/acda6ba8-4383-4e98-9726-8f237ed41d80.jpg', 28)
INSERT [dbo].[CarImages] ([Id], [ImageUrl], [CarId]) VALUES (216, N'/images/car/3031d9fb-0d40-4c34-bf9a-d2932200ad71.webp', 28)
SET IDENTITY_INSERT [dbo].[CarImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (1, N'swift', N'Latest Update: The Maruti Swift can be had with savings of up to Rs 60,000 this August.

Price: The midsize hatchback is priced from Rs 5.99 lakh to Rs 9.03 lakh (ex-showroom Delhi).

Variants: It can be had in four broad variants: LXi, VXi, ZXi, and ZXi+. The VXi and ZXi trims can be opted with CNG. ', 1, 7, 600000, 930000, 2010, 1, N'\images\cars\car-1\909f216f-30b9-4487-8fb0-693ee7d23429.jpg')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (8, N'Thar', N'The price of Mahindra Thar starts at Rs. 10.54 Lakh and goes upto Rs. 16.78 Lakh. Mahindra Thar is offered in 13 variants - the base model of Thar is AX Opt 4-Str Hard Top Diesel RWD and the top variant Mahindra Thar LX 4-Str Hard Top Diesel AT which comes at a price tag of Rs. 16.78 Lakh.
', 5, 1, 1054000, 1678000, 2005, 1, N'https://stimg.cardekho.com/images/carexteriorimages/630x420/Mahindra/Thar/10743/1690192572470/front-left-side-47.jpg?imwidth=420&impolicy=resize')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (9, N'FRONX', N'Maruti is yet to deliver 22,000 units of the Fronx.
Price: Prices for the Fronx range from Rs 7.46 lakh to Rs 13.13 lakh (ex-showroom Delhi).
Variants: It is being offered in five broad variants: Sigma, Delta, Delta+, Zeta and Alpha. The CNG powertrain is offered on the lower-spec Sigma and Delta trims.', 1, 1, 746000, 1300000, 2023, 1, N'https://stimg.cardekho.com/images/carexteriorimages/630x420/Maruti/FRONX/9243/1673943130006/front-left-side-47.jpg?imwidth=420&impolicy=resize')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (10, N'Harrier', N'The Harrier is offered in 24 variants namely XE, XM, XMS, XT Plus, XMAS AT, XT Plus Dark Edition, XZ, XZ Dual Tone, XTA Plus AT, XTA Plus Dark Edition AT, XZA AT, XZA Dual Tone AT, XZ Plus, XZ Plus Dual Tone, XZ Plus Dark Edition, XZ Plus Red Dark Edition, XZA Plus AT, XZA Plus Dual Tone AT, XZA Plus Dark Edition AT, XZA Plus Red Dark Edition AT, XZA Plus (O) AT, XZA Plus (O) Dual Tone AT, XZA Plus (O) Dark Edition AT, XZA Plus (O) Red Dark Edition AT. The cheapest Tata Harrier variant is the XE which has a price tag of Rs. 15.20 Lakh while the most expensive variant is the Tata Harrier XZA Plus (O) Red Dark Edition AT which commands a price of Rs. 24.27 Lakh.', 4, 1, 1520000, 2427000, 2022, 1, N'https://stimg.cardekho.com/images/carexteriorimages/630x420/Tata/Harrier/9850/1681887437871/front-left-side-47.jpg?impolicy=resize&imwidth=210')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (11, N'Exter', N'Hyundai Exter price for the base model starts at Rs. 6.88 Lakh and the top model price goes upto Rs. 11.53 Lakh (on-road Ahmedabad). Exter price for 17 variants', 3, 1, 650000, 1100000, 2023, 1, N'https://stimg.cardekho.com/images/carexteriorimages/630x420/Hyundai/Exter/9482/1684926596004/front-left-side-47.jpg?imwidth=420&impolicy=resize')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (12, N'Verna', N'The price of Hyundai Verna starts at Rs. 10.96 Lakh and goes upto Rs. 17.38 Lakh. Hyundai Verna is offered in 14 variants - the base model of Verna is EX and the top variant Hyundai Verna SX Opt Turbo DCT DT which comes at a price tag of Rs. 17.38 Lakh.', 3, 3, 1100000, 1758000, 2023, 1, N'https://stimg.cardekho.com/images/carexteriorimages/630x420/Hyundai/Verna/8703/1679389180298/front-left-side-47.jpg?tr=w-456')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (13, N'Altroz', N'The price of Tata Altroz starts at Rs. 6.60 Lakh and goes upto Rs. 10.74 Lakh. Tata Altroz is offered in 32 variants - the base model of Altroz is XE and the top variant Tata Altroz XZ Plus S Dark Edition Diesel which comes at a price tag of Rs. 10.74 Lakh.', 4, 7, 660000, 1100000, 2020, 1, N'https://stimg.cardekho.com/images/carexteriorimages/630x420/Tata/Altroz/10707/1690032362798/front-left-side-47.jpg?tr=w-456')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (14, N'Scorpio-N', N'The price of Mahindra Scorpio N starts at Rs. 13.05 Lakh and goes upto Rs. 24.51 Lakh. Mahindra Scorpio N is offered in 30 variants - the base model of Scorpio N is Z2 and the top variant Mahindra Scorpio N Z8L Diesel 4x4 AT which comes at a price tag of Rs. 24.51 Lakh.', 5, 1, 1300000, 2500000, 2022, 1, N'https://stimg.cardekho.com/images/carexteriorimages/630x420/Mahindra/Scorpio-N/10817/1690351800434/front-left-side-47.jpg?tr=w-456')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (15, N'Fortuner', N'The price of Toyota Fortuner starts at Rs. 32.99 Lakh and goes upto Rs. 50.74 Lakh. Toyota Fortuner is offered in 7 variants - the base model of Fortuner is 4X2 and the top variant Toyota Fortuner GR S 4X4 Diesel AT which comes at a price tag of Rs. 50.74 Lakh.', 6, 1, 3200000, 5000000, 2004, 1, N'https://stimg.cardekho.com/images/carexteriorimages/630x420/Toyota/Fortuner/10903/1690544151440/front-left-side-47.jpg?tr=w-456')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (16, N'Glanza', N'The price of Toyota Glanza starts at Rs. 6.81 Lakh and goes upto Rs. 10 Lakh. Toyota Glanza is offered in 9 variants - the base model of Glanza is E and the top variant Toyota Glanza V AMT which comes at a price tag of Rs. 10 Lakh', 6, 7, 650000, 1000000, 2018, 1, N'https://stimg.cardekho.com/images/carexteriorimages/630x420/Toyota/Glanza/10231/1686812796183/front-left-side-47.jpg?tr=w-456')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (17, N'Seltos', N'The price of Kia Seltos starts at Rs. 10.90 Lakh and goes upto Rs. 20 Lakh. Kia Seltos is offered in 18 variants - the base model of Seltos is HTE and the top variant Kia Seltos X-Line Diesel AT which comes at a price tag of Rs. 20 Lakh.', 7, 1, 1100000, 2000000, 2019, 1, N'https://stimg.cardekho.com/images/carexteriorimages/630x420/Kia/Seltos-2023/8709/1688465684023/front-left-side-47.jpg?tr=w-456')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (18, N'Sonet', N'The price of Kia Sonet starts at Rs. 7.79 Lakh and goes upto Rs. 14.89 Lakh. Kia Sonet is offered in 23 variants - the base model of Sonet is HTE and the top variant Kia Sonet X-Line Diesel AT which comes at a price tag of Rs. 14.89 Lakh.', 7, 1, 700000, 1500000, 2020, 1, N'https://stimg.cardekho.com/images/carexteriorimages/630x420/Kia/Sonet/10879/1690461063637/front-left-side-47.jpg?imwidth=420&impolicy=resize')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (19, N'City', N'The price of Honda City starts at Rs. 11.57 Lakh and goes upto Rs. 16.05 Lakh. Honda City is offered in 7 variants - the base model of City is SV and the top variant Honda City ZX CVT which comes at a price tag of Rs. 16.05 Lakh.', 8, 3, 1100000, 1758000, 2007, 1, N'https://stimg.cardekho.com/images/carexteriorimages/630x420/Honda/City/9710/1677914238296/front-left-side-47.jpg?tr=w-456')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (20, N'Amaze', N'The price of Honda Amaze starts at Rs. 7.05 Lakh and goes upto Rs. 9.66 Lakh. Honda Amaze is offered in 5 variants - the base model of Amaze is E and the top variant Honda Amaze VX CVT which comes at a price tag of Rs. 9.66 Lakh.', 8, 3, 700000, 950000, 2015, 1, N'https://stimg.cardekho.com/images/carexteriorimages/630x420/Honda/Amaze/10519/1689589132736/front-left-side-47.jpg?tr=w-456')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (21, N'Civic', N'New car', 8, 3, 2000000, 3000000, 2010, 1, N'\images\cars\car-21\4884bb14-ffde-40be-af55-be7d3d7a54fa.jpg')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (22, N'Ertiga', N'Price: The Maruti Ertiga is priced between Rs 8.64 lakh and Rs 13.08 lakh (ex-showroom, Delhi).

Variants: Maruti’s MPV is available in four trims: LXi, VXi, ZXi and ZXi+. The top two trims have an option for a CNG kit as well.

Colours: The Ertiga is available in six monotone colours: Auburn Red, Magma Grey, Pearl Metallic Arctic White, Pearl Metallic', 1, 1, 8.64, 13.08, 2022, 1, N'\images\cars\car-22\d044d860-31f5-44fb-8db9-04b6c9afea46.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (23, N'Baleno', N'Latest Update: The Maruti Baleno is being offered with benefits of up to Rs 45,000 this September.

Price: The premium hatchback is retailed from Rs 6.61 lakh and Rs 9.88 lakh (ex-showroom Delhi).

Variants: The Baleno comes in four broad variants: Sigma, Delta, Zeta and Alpha.', 1, 7, 661000, 988000, 2022, 1, N'\images\cars\car-23\7e070044-b383-460d-8f54-4d4b559c0780.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (24, N'XUV700', N'Latest Update: More than a lakh units of the Mahindra XUV700 have been recalled.

Price: The Mahindra XUV700 is priced from Rs 14.01 lakh to Rs 26.18 lakh (ex-showroom Delhi).

Variants: Mahindra offers it in two broad trims: MX and AX. The AX trim is further divided into three broad variants: AX3, AX5', 5, 5, 1460000, 2618000, 2023, 1, N'\images\cars\car-24\d8f7c27a-f8f8-4a4c-abe3-219eef5b7d17.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (25, N'Nexon', N'Price: The outgoing Tata Nexon is priced from Rs 8 lakh to Rs 14.60 lakh (ex-showroom, Delhi).

Variants: It is offered in eight broad variants: XE, XM, XM (S), XM+ (S), XZ+, XZ+ (HS), XZ+ (L) and XZ+ (P). The Dark and Red Dark editions are available from XZ+, while the Kaziranga Edition is available on the top-spec XZ+ and XZA+ trims.', 4, 6, 800000, 1460000, 2023, 1, N'\images\cars\car-25\38f4772a-703e-4662-b067-e04d1f090b52.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (26, N'Punch', N'Latest Update: The Tata Punch now comes with a single-pane sunroof across all powertrain options. In related news, we have also compared the waiting period on the Punch with that of the Hyundai Exter.

Price: Tata has priced it from Rs 6 lakh to Rs 10.10 lakh (ex-showroom Delhi).', 4, 7, 600000, 1400000, 2022, 1, N'\images\cars\car-26\57ab6294-98e7-44f7-a12d-251999ae38dc.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (27, N'Tiago', N'Latest Update: Tata has launched the Tiago CNG with its twin-cylinder technology.

Price: It is now priced between Rs 5.60 lakh and Rs 8.15 lakh (ex-showroom Delhi).

Variants: The Tata Tiago is sold in six broad variants: XE, XM, XT(O), XT, XZ and XZ+.', 4, 7, 560000, 815000, 2022, 1, N'\images\cars\car-27\b4949180-b83e-42d1-b486-ff3e9ee06666.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (28, N'Bolero ', N'The Mahindra Bolero may not boast of great passenger comfort. But what it is, is the best-selling utility vehicle because of its outstanding functionality/practicality. Expect the fourth-generation Bolero to hit showrooms in 2026.', 5, 1, 100000, 1200000, 2022, 1, N'\images\cars\car-28\dda7dd8a-10ab-4280-ae16-fca35712d192.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (29, N'Scorpio 327 ', N'Mahindra Scorpio price for the base model starts at Rs. 13.00 Lakh and the top model price goes upto Rs. 16.81 Lakh (Avg. ex-showroom). Scorpio price for 4 variants is listed below.', 5, 1, 1300000, 1600000, 2023, 1, N'\images\cars\car-29\0a2f05cc-c4e6-4fd8-ae0d-a46c1248b84e.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (30, N'Toyota Land Cruiser', N'Toyota Land Cruiser price for the base model is Rs. 2.10 Crore (Avg. ex-showroom). Land Cruiser price for 1 variant is listed below.', 6, 5, 21000000, 21000000, 2022, 1, N'\images\cars\car-30\c9943e20-5b53-41b7-b59b-740961184f84.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (31, N'Toyota Rumion', N'Latest Update: The Toyota Rumion has been launched in India, with cars already reaching dealerships. Here’s how its prices compare with those of the Maruti Suzuki Ertiga and some other MPV rivals.

Price: The Rumion is priced from Rs 10.29 lakh to Rs 13.68 lakh (ex-showroom, Delhi).', 6, 1, 1029000, 1368000, 2023, 1, N'\images\cars\car-31\4893e55c-d870-4136-8a1a-cb044709502f.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (32, N'Toyota Vellfire', N'Latest Update: Toyota has launched the new-generation Vellfire in India.

Price: The luxury MPV is priced from Rs 1.20 crore to Rs 1.30 crore (ex-showroom Delhi).

Variant: It is being offered in two broad variants: Hi and VIP Executive Lounge.', 6, 5, 12000000, 13000000, 2022, 1, N'\images\cars\car-32\393406ee-a002-4ec5-a279-b362fc280468.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (33, N'EV6', N'Price: The Kia EV6 is priced between Rs 60.95 lakh and Rs 65.95 lakh (ex-showroom).

Variants: The electric SUV comes in a single top-of-the-line GT trim. There are two variants to pick from: GT Line RWD and GT Line AWD.', 7, 5, 6095000, 6595000, 2023, 1, N'\images\cars\car-33\40e7ac17-893d-4152-b95e-62d187a35ad7.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (34, N'Carens ', N'Kia Carens price for the base model starts at Rs. 10.45 Lakh and the top model price goes upto Rs. 18.95 Lakh (Avg. ex-showroom). Carens price for 21 variants is listed below.', 7, 1, 1045000, 1895000, 2023, 1, N'\images\cars\car-34\a0923ecd-11cb-411f-bf07-ddcfd21060af.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (35, N'Marazzo', N'Mahindra Marazzo price for the base model starts at Rs. 14.10 Lakh and the top model price goes upto Rs. 16.47 Lakh (Avg. ex-showroom). Marazzo price for 6 variants is listed below.', 5, 1, 1400000, 1647000, 2023, 1, N'\images\cars\car-35\e2a6ce88-9aec-46cd-8182-160ee8ed9e70.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (36, N'Bolero Neo', N'Mahindra Bolero Neo price for the base model starts at Rs. 9.63 Lakh and the top model price goes upto Rs. 12.14 Lakh (Avg. ex-showroom). Bolero Neo price for 4 variants is listed below.', 5, 1, 963000, 1214000, 2022, 1, N'\images\cars\car-36\6ae8252e-5d02-4224-b50d-60e78f89dec0.jpg')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (37, N'Toyota Innova Hycross', N'Latest Update: Nitin Gadkari has unveiled a flex-fuel Toyota Innova Hycross strong-hybrid prototype which runs on E85 ethanol blend fuel. We have also detailed all the changes made to the flex-fuel version of the premium MPV.

Price: Toyota retails the Innova Hycross from Rs 18.82 lakh to Rs 30.26 lakh (ex-showroom Delhi).', 6, 5, 1882000, 3026000, 2023, 1, N'\images\cars\car-37\c419690c-b947-4c46-920a-18686c484caa.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (39, N'XUV400', N'Mahindra XUV400 price for the base model starts at Rs. 15.99 Lakh and the top model price goes upto Rs. 19.19 Lakh (Avg. ex-showroom). XUV400 price for 4 variants is listed below.', 5, 1, 1500000, 1919000, 2022, 1, N'\images\cars\car-39\e5f2cece-bd37-4365-bc91-36fc3d898102.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (40, N'KUV100 NXT', N'Mahindra KUV100 NXT price for the base model starts at Rs. 6.21 Lakh and the top model price goes upto Rs. 7.93 Lakh (Avg. ex-showroom). KUV100 NXT price for 5 variants is listed below.', 5, 1, 621000, 793000, 2021, 1, N'\images\cars\car-40\8c8abede-a569-4bf8-9218-c9371f89bd47.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (41, N'Toyota Rush', N'Internationally, the Rush is powered by a 1.5-litre, four-cylinder petrol engine paired with a five-speed manual transmission and a four-speed automatic gearbox. This motor generates an output of 102bhp and 134Nm of torque.', 6, 3, 900000, 1350000, 2023, 1, N'\images\cars\car-41\5df555dd-edc1-4988-bdd9-308a99e6e3f4.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (42, N'i20', N'The Hyundai i20 has 1 Petrol Engine on offer. The Petrol engine is 1197 cc . It is available with Manual & Automatic transmission.Depending upon the variant and fuel type the i20 has a mileage of . The i20 is a 5 seater 4 cylinder car and has length of 3995, width of 1775 and a wheelbase of 2580.', 3, 3, 699000, 1100000, 2022, 1, N'\images\cars\car-42\1dcc6629-e1a2-4f3e-aac1-e75f1a68ef7d.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (43, N'Venue', N'The Hyundai Venue has 1 Diesel Engine and 2 Petrol Engine on offer. The Diesel engine is 1493 cc while the Petrol engine is 1197 cc and 998 cc . It is available with Manual & Automatic transmission.Depending upon the variant and fuel type the Venue has a mileage of . The Venue is a 5 seater 3 cylinder car and has length of 3995mm, width of 1770mm and a wheelbase of', 3, 7, 777000, 1348000, 2022, 1, N'\images\cars\car-43\79f73b1a-8d38-49ca-8070-1488f4417020.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (44, N'Hyundai Verna', N'Latest Update: Check out all the accessories Hyundai is offering for the new Verna. Also, you can find all its details from our first drive review of the 2023 Hyundai Verna.

Price: The 2023 Verna is priced from Rs 10.90 lakh to Rs 17.38 lakh (introductory ex-showroom pan India).', 3, 7, 1096000, 1378000, 2022, 1, N'\images\cars\car-44\d5ea00a3-bb34-4f9a-8dea-a402525ace1b.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (45, N'Brezza ', N'The Maruti Brezza has 1 Petrol Engine and 1 CNG Engine on offer. The Petrol engine is 1462 cc while the CNG engine is 1462 cc . It is available with Manual & Automatic transmission.Depending upon the variant and fuel type the Brezza has a mileage of 17.38 kmpl to 25.51 km/kg . The Brezza is a 5 seater 4 cylinder car and has length of 3995, width of 1790 and a wheelbase', 1, 1, 829000, 1414000, 2022, 1, N'\images\cars\car-45\195c7056-6f1f-4887-ae75-5f26c3500617.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (46, N'Elevate', N'Honda Elevate has been launched in India. In related news, Honda delivered 100 Elevate SUVs in a single day. We have also compared the prices of the Honda SUV with its rivals. We have also detailed the base-spec SV variant of the Elevate in images.', 8, 1, 1100000, 1600000, 2023, 1, N'\images\cars\car-46\ad731bdf-580f-41cb-a9b2-fd3277ec7a7d.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (47, N'WR-V', N'Honda has unveiled the new generation WR-V in Indonesia, which is based on the Amaze’s platform.
Launch: It is expected to come to India by August 2023.
Price: The new-generation WR-V could be priced from Rs 8 lakh onwards.', 8, 7, 829000, 1000000, 2010, 1, N'\images\cars\car-47\ac9ebbc1-e3ab-4bdc-b535-079b8ad7d6a4.webp')
INSERT [dbo].[Cars] ([Id], [Name], [Details], [BrandId], [CarTypeId], [StartingPrice], [EndPrice], [ManufacturingYear], [IsActive], [ImageURL]) VALUES (48, N'Creta', N'The Hyundai Creta gets an “Adventure” edition with cosmetic changes inside-out.
Price: Prices for the Creta range from Rs 10.87 lakh to Rs 19.20 lakh (ex-showroom Delhi).
Variants: It can be had in seven broad variants: E, EX, S, S+, SX Executive, SX and SX(O). The Knight Edition is only available on the S+ and S(O) trims, and the new newly launched “Adventure” edition is based on compact SUV’s SX and SX(O) variants.
Colours: The Hyundai Creta is being offered in six monotone and one dual-tone colour options: Polar white, Denim blue, Phantom black, Titan grey, Typhoon silver, Red mulberry and Polar white with Phantom black roof. A new Ranger Khaki paint option has also been introduced with the Creta’s “Adventure” edition.
Seating Capacity: It can seat up to five people.
Engine and Transmission: The Hyundai Creta comes with two engine options: a 1.5-litre naturally aspirated petrol (115PS/144Nm) and a 1.5-litre diesel (116PS/250Nm). Both units are mated with a 6-speed manual transmission as standard. For automatic options, the petrol unit gets a CVT gearbox and the diesel one comes with a 6-speed automatic transmission.', 3, 1, 1045000, 2000000, 2017, 1, N'\images\cars\car-48\0ed5c527-2ebf-4cb2-b356-ae7b17687bf5.webp')
SET IDENTITY_INSERT [dbo].[Cars] OFF
GO
SET IDENTITY_INSERT [dbo].[CarSpecifications] ON 

INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (3, 9, N'998 cc - 1197 cc', N'98.69bhp@5500rpm', N'147.6Nm@2000-4500rpm', 3, N'MacPherson Strut', N'Torsion Beam', N'telescopic damper ', 3995, 1765, 1550, 308, 5, 2520, 6, N'2*2', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (6, 11, N'1197 cc', N'81.80bhp@6000rpm', N'113.8Nm@4000rpm', 4, N'McPherson Strut', N'Coupled Torsion Beam Axle', N'Gas type', 3815, 1710, 1631, 391, 5, 2450, 5, N'2*2', N'6')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (8, 12, N'1482 cc - 1497 cc', N'157.57bhp@5500rpm', N'253Nm@1500-3500rpm', 4, N'Mcpherson strut with coil spring', N'Coupled Torsion Beam Axle', N'Gas Type', 4535, 1765, 1475, 528, 5, 2670, 6, N'2*2', N'6')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (9, 13, N'1198 cc - 1497 cc', N'88.77bhp@4000rpm', N'200Nm@1250-3000rpm', 4, N'Independent MacPherson Dual Path Strut with Coil Spring', N'Twist Beam with Coil Spring and Shock Absorber', N'Gas type', 3990, 1755, 1523, 345, 5, 2501, 5, N'2*2', N'2')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (10, 14, N'1997 cc - 2198 cc', N'400Nm@1750-2750rpm', N'172.45bhp@3500rpm', 4, N'Double Wishbone Suspension with Coil over Shocks with FDD & MTV-CL', N'Pentalink Suspension with WATT’s Linkage with FDD & MTV-CL', N'Gas type', 4662, 1917, 1857, 460, 7, 2750, 6, N'4*4', N'6')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (12, 16, N'1197 cc', N'88.50bhp@6000rpm', N'113Nm@4400rpm', 4, N'MacPherson Strut', N'Torsion Beam', N'Gas Type', 3990, 1745, 1500, 380, 5, 2520, 5, N'2*2', N'2-6')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (13, 17, N'1482 cc - 1497 cc', N'114.41bhp@4000rpm', N'250Nm@1500-2750rpm', 4, N'McPherson Strut With Coil Spring', N'Coupled Torsion Beam Axle With Coil Spring', N'Gas type', 4365, 1800, 1645, 433, 5, 2610, 6, N'2*2', N'6')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (14, 18, N'998 cc - 1493 cc', N'113.43bhp@4000rpm', N'250Nm@1500-2750rpm', 4, N'McPherson Strut with Coil Spring', N'Coupled Torsion Beam Axle with Coil Spring', N'Gas type', 3995, 1790, 1642, 392, 5, 2500, 6, N'2*2', N'6')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (15, 19, N'1498 cc', N'119.35bhp@6600rpm', N'145Nm@4300rpm', 4, N'McPherson Strut with Coil Spring', N'Torsion beam with Coil Spring', N'Telescopic Hydraulic Nitrogen Gas-filled', 4583, 1748, 1489, 506, 5, 2600, 6, N'2*2', N'6')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (16, 20, N'1199 cc', N'88.50bhp@6000rpm', N'110Nm@4800rpm', 4, N'McPherson Strut, Coil Spring', N'Torsion Bar, Coil Spring', N'Gas type', 3995, 1695, 1498, 420, 5, 2470, 5, N'2*2', N'2')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (18, 22, N'1462', N'101.65bhp@6000rpm', N'136.8Nm@4400rpm', 4, N'Mac Pherson Strut & Coil Spring', N'Torsion Beam & Coil Spring', N'Gas', 4395, 1735, 1690, 209, 7, 2740, 6, N'2WD', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (20, 23, N'1197', N'88.50bhp@6000rpm', N'113Nm@4400rpm', 4, N'MacPherson Strut', N'Torsion Beam', N'Gas', 3990, 1745, 1500, 318, 5, 2520, 180, N'2*2', N'2')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (21, 24, N'2198', N'182.38bhp@3500rpm', N'450Nm@1750-2800rpm', 4, N'McPherson Strut Independent Suspension with FSD and Stabilizer bar', N'Multi-Link Independent Suspension with FSD Stabilizer bar', N'Gas', 4695, 1890, 1755, 257, 7, 2750, 180, N'4*4', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (22, 25, N'1497', N'113.42bhp@3750rpm', N'260Nm@1500-2750rpm', 4, N'Independent, Lower Wishbone, McPherson Strut with Coil Spring', N'Semi-Independent; closed profile Twist beam with Coil Spring and shock absorber', N'Electric', 3993, 1811, 1606, 350, 5, 2498, 6, N'2', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (24, 26, N'1199', N'86.63bhp@6000rpm', N'115Nm@3250+/-100rpm', 3, N'Independent, Lower Wishbone, Mcpherson Strut With Coil Spring', N'Semi-independent Twist Beam With Coil Spring And Shock Absorber', N'Gas', 3827, 1742, 1615, 366, 5, 2445, 5, N'4*4', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (25, 27, N'1199', N'72bhp@6000rpm', N'95Nm@3500rpm', 3, N'Independent Lower Wishbone McPherson Strut with Coil Spring', N'Semi-Independent Closed Profile Twist Beam with Dual Path StrutSteering TypeElectric', N'Gas', 3765, 1677, 1535, 18, 5, 2400, 6, N'2*2', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (27, 28, N'1493', N'100bhp@3750rpm', N'260Nm@1750-2250rpm', 3, N'IFS Coil Spring', N'Rigid leaf Spring', N'Gas', 3995, 1745, 1880, 384, 7, 2680, 5, N'4*4', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (28, 29, N'2184', N'130.07bhp@3750rpm', N'300Nm@1600-2800rpm', 4, N'Double Wish-bone Type, Independent Front Coil Spring ', N'Multi Link Coil Spring Suspension and Anti-roll Bar', N'telescopic damper ', 4456, 1820, 1995, 60, 7, 2680, 6, N'4*4', N'5')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (29, 30, N'3346', N'304.41bhp@4000rpm', N'700Nm@1600-2600rpm', 6, N'Double Wishbone Independent', N'4-Link Rigid', N'Gas', 4685, 1980, 1945, 110, 5, 2850, 5, N'4*4', N'5')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (30, 31, N'1462', N'101.64bhp@6000rpm', N'136.8Nm@4400rpm', 4, N'Macpherson Strut & Coil Spring', N'Torsion Beam & Coil Spring', N'Gas', 4420, 1735, 1690, 45, 7, 2740, 5, N'2*2', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (31, 33, N'1462', N'320.55bhp', N'605Nm', 4, N'McPherson suspension', N'Multi-Link', N'telescopic damper ', 4695, 1890, 1550, 40, 5, 2900, 5, N'2*2', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (32, 34, N'1493', N'114.41bhp@4000rpm', N'250Nm@1500-2750rpm', 4, N'McPherson Strut with coil spring', N'Coupled Torsion Beam Axle with Coil Spring', N'Gas', 4540, 1800, 1708, 45, 5, 2780, 5, N'2*2', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (33, 35, N'1497', N'172.45bhp@3500rpm', N'400Nm@1750-2750rpm', 4, N'Double Wishbone Suspension with Coil over Shocks with FDD & MTV-CL', N'Pentalink Suspension with WATT’s Linkage with FDD & MTV-CL', N'gas', 4662, 1917, 1857, 40, 6, 2750, 5, N'4*4', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (34, 36, N'1497', N'172.45bhp@3500rpm', N'400Nm@1750-2750rpm', 4, N'Double Wishbone Suspension with Coil over Shocks with FDD & MTV-CL', N'Pentalink Suspension with WATT’s Linkage with FDD & MTV-CL', N'5', 3700, 1735, 1655, 35, 6, 2385, 5, N'4*4', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (35, 37, N'1987', N'183.72bhp@6600rpm', N'188Nm@4398-5196rpm', 4, N'MacPherson Strut', N'Semi-independent Torsion beam', N'Electric', 4755, 1845, 1790, 45, 6, 2850, 6, N'4*4', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (39, 39, N'1497', N'147.51Bhpbhp', N'310Nm', 4, N'McPherson Strut with coil spring', N'Twist Beam with Coil Spring', N'Electric', 4200, 1821, 1634, 45, 5, 1634, 5, N'4*4', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (40, 40, N'1200', N'172.45bhp@3500rpm', N'400Nm@1750-2750rpm', 2, N'McPherson Strut with coil spring', N'Semi-independent Torsion beam', N'Electric', 4200, 1821, 1634, 43, 5, 2600, 5, N'2*2', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (41, 41, N'1497', N'172.45bhp@3500rpm', N'188Nm@4398-5196rpm', 3, N'McPherson Strut with coil spring', N'Semi-independent Torsion beam', N'GAS', 3995, 1790, 1642, 392, 5, 2500, 4, N'4*4', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (42, 42, N'1200', N'86.76bhp@6000rpm', N'114.7Nm@4200rpm', 4, N'McPherson strut', N'Coupled torsion beam axle', N'GAS', 3995, 1775, 1505, 40, 5, 2580, 4, N'2*2', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (43, 43, N'1200', N'172.45bhp@3500rpm', N'400Nm@1750-2750rpm', 4, N'McPherson Strut with coil spring', N'Semi-independent Torsion beam', N'GAS', 3995, 1770, 1617, 45, 5, 2500, 6, N'2*2', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (44, 44, N'1482', N'157.57bhp@5500rpm', N'253Nm@1500-3500rpm', 4, N'Mcpherson strut with coil spring', N'Coupled Torsion Beam Axle', N'GAS', 4535, 1765, 1475, 42, 5, 2670, 5, N'2*2', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (46, 45, N'1462', N'101.65bhp@6000rpm', N'136.8Nm@4400rpm', 4, N'Mac Pherson Strut & Coil', N'Torsion Beam & Coil Spring', N'5', 0, 3995, 1685, 328, 5, 2500, 5, N'2*2', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (47, 46, N'1498 cc', N'119.35bhp@6600rpm', N'145Nm@4300rpm', 4, N'McPherson Strut with Coil Spring', N'Torsion Beam With coil Spring', N'Electric', 4312, 1790, 1650, 458, 5, 2650, 6, N'2*2', N'6')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (49, 47, N'1199 cc', N'172.45bhp@3500rpm', N'188Nm@4398-5196rpm', 4, N'McPherson Strut with coil spring', N'Twist Beam with Coil Spring', N'Electric', 4310, 1790, 1650, 465, 5, 2650, 6, N'2*2', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (50, 48, N'1397 cc - 1498 cc', N'113.45bhp@4000rpm', N'250Nm@1500-2750rpm', 4, N'McPherson Strut with coil spring', N'Coupled Torsion Beam Axle with Coil Spring', N'Electric', 4300, 1790, 1650, 450, 5, 2610, 6, N'2*2', N'4')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (51, 10, N'1956 cc', N'167.67bhp@3750rpm', N'350Nm@1750-2500rpm', 4, N'Independent Lower Wishbone McPherson Strut with Coil Spring & Anti Roll Bar', N'Semi Independent Twist Blade with Panhard Rod & Coil Spring', N' Telescopic', 4598, 1894, 1784, 425, 5, 2741, 6, N'2*2', N'6')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (53, 8, N'1497cc - 2184cc', N'130bhp@3750rpm', N'300Nm@1600-2800rpm', 4, N'Disc', N'Drum', N'  Disc', 3985, 1820, 1850, 600, 4, 2450, 6, N'4*4', N'2')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (54, 15, N'2694 cc - 2755 cc', N'201.15bhp@3000-3400rpm', N'500Nm@1600-2800rpm', 5, N'Double Wishbone', N'4-Link With Coil Spring', N'Gas type', 4795, 1855, 1835, 296, 7, 2745, 0, N'4*4 And 2*2', N'7')
INSERT [dbo].[CarSpecifications] ([Id], [CarId], [Displacement], [MaxPower], [MaxTorque], [Cylinder], [FrontSuspension], [RearSuspension], [ShockAbsorbers], [Length], [Width], [Height], [BootSpace], [SeatingCapacity], [WheelBase], [GearBox], [DriveType], [AirbagNo]) VALUES (55, 1, N'1197 cc', N'88.50bhp@6000rpm', N'113Nm@4400rpm', 4, N'  Mac Pherson Strut', N'Torsion Beam', N'  Disc', 3845, 1735, 1530, 268, 5, 2450, 5, N'2*2', N'2')
SET IDENTITY_INSERT [dbo].[CarSpecifications] OFF
GO
SET IDENTITY_INSERT [dbo].[CarTypes] ON 

INSERT [dbo].[CarTypes] ([Id], [TypeName]) VALUES (1, N'SUV')
INSERT [dbo].[CarTypes] ([Id], [TypeName]) VALUES (3, N'Sedan')
INSERT [dbo].[CarTypes] ([Id], [TypeName]) VALUES (5, N'Luxury')
INSERT [dbo].[CarTypes] ([Id], [TypeName]) VALUES (6, N'Electric')
INSERT [dbo].[CarTypes] ([Id], [TypeName]) VALUES (7, N'Hatchback')
SET IDENTITY_INSERT [dbo].[CarTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[CarXColors] ON 

INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (46, 23, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (48, 23, 4)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (52, 28, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (54, 29, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (56, 29, 3)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (57, 30, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (59, 30, 4)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (60, 35, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (62, 35, 4)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (63, 37, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (65, 37, 3)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (66, 37, 4)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (73, 39, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (76, 39, 4)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (79, 39, 3)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (81, 40, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (83, 40, 4)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (84, 41, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (86, 41, 3)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (87, 41, 4)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (88, 42, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (90, 42, 3)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (91, 42, 4)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (92, 43, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (94, 43, 4)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (95, 44, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (97, 44, 4)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (100, 45, 3)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (101, 45, 5)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (102, 36, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (104, 36, 4)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (106, 36, 3)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (115, 13, 4)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (116, 13, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (120, 13, 3)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (124, 25, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (125, 25, 3)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (126, 25, 4)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (144, 27, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (145, 27, 4)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (146, 27, 9)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (161, 24, 5)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (162, 24, 4)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (163, 24, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (164, 24, 3)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (165, 22, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (166, 22, 4)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (205, 26, 9)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (206, 26, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (207, 26, 3)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (208, 26, 4)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (211, 1, 4)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (212, 1, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (213, 1, 5)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (1141, 8, 1)
INSERT [dbo].[CarXColors] ([Id], [CarId], [ColorId]) VALUES (1142, 8, 3)
SET IDENTITY_INSERT [dbo].[CarXColors] OFF
GO
SET IDENTITY_INSERT [dbo].[CarXFeatures] ON 

INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (72, 1, 4, 4)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (73, 1, 4, 5)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (74, 1, 4, 14)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (80, 1, 6, 15)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (81, 1, 6, 16)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (82, 1, 6, 22)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (83, 1, 6, 23)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (84, 1, 6, 24)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1010, 10, 4, 2)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1011, 10, 4, 4)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1012, 10, 4, 5)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1013, 10, 5, 6)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1014, 10, 5, 7)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1015, 10, 5, 8)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1016, 9, 4, 17)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1017, 9, 4, 18)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1045, 8, 5, 2)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1046, 8, 5, 10)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1047, 8, 5, 20)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1061, 1, 7, 6)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1062, 1, 7, 25)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1063, 1, 7, 26)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1064, 1, 7, 27)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1065, 1, 7, 29)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1066, 1, 7, 30)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1067, 1, 7, 31)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1068, 1, 5, 2)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1069, 1, 5, 10)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1070, 1, 5, 11)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1071, 1, 5, 12)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1072, 1, 5, 17)
INSERT [dbo].[CarXFeatures] ([Id], [CarId], [FeatureTypeId], [FeatureId]) VALUES (1073, 1, 5, 21)
SET IDENTITY_INSERT [dbo].[CarXFeatures] OFF
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([Id], [CityName], [CountryId], [StateId], [IsActive]) VALUES (2, N'Surat', 1, 2, 1)
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [ColorName]) VALUES (1, N'Black')
INSERT [dbo].[Colors] ([Id], [ColorName]) VALUES (3, N'Red')
INSERT [dbo].[Colors] ([Id], [ColorName]) VALUES (4, N'Blue')
INSERT [dbo].[Colors] ([Id], [ColorName]) VALUES (5, N'gray')
INSERT [dbo].[Colors] ([Id], [ColorName]) VALUES (9, N'yellow')
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (1, N'India', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (3, N'Australia', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (6, N'Afghanistan', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (7, N'Bahrain', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (8, N'Bangladesh
', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (9, N'Brazil', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (10, N'China', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (11, N'Colombia', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (12, N'Canada', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (13, N'Comoros', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (14, N'Dominica', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (15, N'Egypt', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (16, N'El Salvador', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (18, N'Equatorial Guinea', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (19, N'Eritrea', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (20, N'Fiji', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (21, N'Finland', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (22, N'France', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (23, N'Gabon', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (24, N'The Gambia', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (25, N'Georgia', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (26, N'Germany', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (27, N'Ghana', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (28, N'Greece', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (29, N'Grenada', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (30, N'Iceland', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (31, N'Haiti', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (32, N'Indonesia', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (33, N'Iran', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (34, N'Ireland', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (35, N'Italy', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (36, N'Jamaica', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (37, N'Japan
', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (38, N'Jordan', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (39, N'Korea, South', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (40, N'Korea, North', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (41, N'Kuwait', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (42, N'Laos', 1)
INSERT [dbo].[Countries] ([Id], [CountryName], [IsActive]) VALUES (45, N'bangladesh', 1)
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
SET IDENTITY_INSERT [dbo].[Dealers] ON 

INSERT [dbo].[Dealers] ([Id], [DealerName], [MobileNumber], [Email], [DealerLocation], [BrandId], [IsAvailable]) VALUES (1, N'henil', N'9510245363', N'kanzariyajaydev@gmail.com', N'HALVAD', 1, 1)
SET IDENTITY_INSERT [dbo].[Dealers] OFF
GO
SET IDENTITY_INSERT [dbo].[Features] ON 

INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (2, N'Power Window', 5)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (4, N'ABS', 7)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (5, N'Anti Lock Braking System', 7)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (6, N'Driver Airbag', 7)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (7, N'Automatic Climate Control', 6)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (8, N'Air Conditioner', 5)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (9, N'Passenger Airbag', 7)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (10, N'Heater', 5)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (11, N'Height Adjustable Driver Seat', 5)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (12, N'Low Fuel Warning Light', 7)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (13, N'Parking Sensors', 6)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (14, N'Alloy Wheels', 4)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (15, N'Fog Lights - Front', 6)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (16, N'Fog Lights - Rear', 6)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (17, N'KeyLess Entry', 5)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (18, N'Engine Start/Stop Button', 5)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (19, N'Adjustable Headlights', 4)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (20, N'Power Adjustable Exterior Rear View Mirror', 5)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (21, N'Electric Folding Rear View Mirror', 5)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (22, N'LED Headlights', 6)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (23, N'LED DRLs', 6)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (24, N'LED Taillights', 6)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (25, N'Central Locking', 7)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (26, N'Power Door Locks', 7)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (27, N'Rear Seat Belts', 7)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (28, N'Seat Belt Warning', 7)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (29, N'Door Ajar Warning', 7)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (30, N'Engine Check Warning', 4)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (31, N'Speed Alert', 4)
INSERT [dbo].[Features] ([Id], [Name], [FeatureTypeId]) VALUES (32, N'Entertaiment', 5)
SET IDENTITY_INSERT [dbo].[Features] OFF
GO
SET IDENTITY_INSERT [dbo].[FeatureTypes] ON 

INSERT [dbo].[FeatureTypes] ([Id], [FeatureTypeName]) VALUES (4, N'Suspension, Steering & Brakes')
INSERT [dbo].[FeatureTypes] ([Id], [FeatureTypeName]) VALUES (5, N'Interiors')
INSERT [dbo].[FeatureTypes] ([Id], [FeatureTypeName]) VALUES (6, N'Exterior')
INSERT [dbo].[FeatureTypes] ([Id], [FeatureTypeName]) VALUES (7, N'Safety')
INSERT [dbo].[FeatureTypes] ([Id], [FeatureTypeName]) VALUES (8, N'string')
SET IDENTITY_INSERT [dbo].[FeatureTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[FeatureXFeaturetypes] ON 

INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (6, 4, 4)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (7, 4, 5)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (8, 4, 14)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (9, 5, 2)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (10, 5, 6)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (11, 5, 7)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (12, 5, 8)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (13, 5, 9)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (14, 5, 10)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (15, 5, 11)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (16, 5, 17)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (17, 5, 18)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (18, 6, 13)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (19, 6, 15)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (20, 6, 16)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (21, 6, 19)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (22, 6, 20)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (23, 6, 21)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (24, 6, 22)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (25, 6, 23)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (26, 6, 24)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (27, 7, 12)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (28, 7, 25)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (29, 7, 26)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (30, 7, 27)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (31, 7, 28)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (32, 7, 29)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (33, 7, 30)
INSERT [dbo].[FeatureXFeaturetypes] ([Id], [FeatureTypeId], [FeatureId]) VALUES (34, 7, 31)
SET IDENTITY_INSERT [dbo].[FeatureXFeaturetypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Mileages] ON 

INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (1, 1, N'Petrol', N'Manual', 17)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (2, 8, N'Petrol', N'Manual & Auto', 15)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (3, 9, N'Petrol', N'Auto', 21)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (4, 12, N'Petrol', N'Manual & Auto', 18)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (8, 14, N'Petrol', N'Manual & Auto', 15)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (10, 16, N'Petrol', N'Manual & Auto', 22)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (11, 11, N'Petrol', N'Manual', 20)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (13, 17, N'Petrol', N'Manual & Auto', 18)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (14, 18, N'Petrol', N'Manual & Auto', 18.2)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (15, 19, N'Petrol', N'Manual & Auto', 18.5)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (16, 20, N'Petrol', N'Manual & Auto', 19.2)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (17, 22, N'Petrol', N'automatic', 20.3)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (18, 25, N'deisle', N'automatic', 24.07)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (19, 26, N'deisle', N'automatic', 18.8)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (20, 27, N'Petrol', N'automatic', 19.01)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (21, 28, N'Diesel', N'Manual', 15)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (22, 29, N'Diesel', N'Manual', 15.19)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (23, 30, N'Diesel', N'automatic', 10)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (24, 31, N'Petrol', N'Manual', 17)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (25, 32, N'Petrol', N'Automatic ', 14)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (26, 33, N'electric', N'automatic', 500)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (27, 34, N'Petrol ', N'Manual, Clutchless Manual (IMT) & Automatic', 16)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (28, 35, N'Diesel', N' Manual', 16.5)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (30, 37, N'Diesel', N'auto', 23)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (33, 39, N'Diesel', N' Manual', 17)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (34, 40, N'Diesel', N' Manual', 18)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (35, 41, N'Diesel', N' Manual', 15)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (40, 42, N'Diesel', N' Manual', 22)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (41, 43, N'Diesel', N' Manual', 20)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (42, 44, N'petrol', N' Manual', 17)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (43, 45, N'petrol', N' Manual', 19)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (45, 46, N'Petrol', N'auto', 18)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (46, 47, N'Petrol', N' Manual', 18)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (48, 13, N'Diesel ', N'Manual & Auto', 20)
INSERT [dbo].[Mileages] ([Id], [CarId], [FuelType], [Transmission], [Average]) VALUES (49, 48, N'Diesel', N' Manual', 20)
SET IDENTITY_INSERT [dbo].[Mileages] OFF
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (5, 1, N'4', N'Review 1', N'henil', 1, 1, 0, CAST(N'2023-09-20T10:58:15.1601792' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (6, 8, N'4', N'Best car for SUV ', N'Nice Suv', 13, 14, 0, CAST(N'2023-10-16T14:23:58.1273888' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (7, 8, N'4', N'Best car for SUV ', N'Nice Suv', 4, 5, 0, CAST(N'2023-10-16T14:24:42.9194650' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (8, 8, N'4', N'This is nice car in SUv segment in Mahendra brand', N'Nice Suv', 3, 1, 0, CAST(N'2023-10-16T12:23:52.4806998' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (9, 1, N'5', N'this is best car ', N'Nice Suv', 0, 0, 0, CAST(N'2023-09-20T10:50:53.1190376' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (10, 10, N'4', N'nice car', N'SUV', 0, 0, 0, CAST(N'2023-09-20T10:51:48.8846739' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (11, 1, N'4', N'it is best ', N'comment 4', 0, 0, 0, CAST(N'2023-09-20T10:59:07.4543385' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (12, 45, N'3', N'Good Bracking system ', N'Safety', 1, 0, 0, CAST(N'2023-09-20T14:58:41.2026649' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (13, 9, N'4', N'Nice ', N'SUV', 6, 4, 0, CAST(N'2023-09-20T18:26:34.3356074' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (14, 8, N'4', N'it is best', N'jaydev', 1, 1, 0, CAST(N'2023-10-16T14:01:53.7513081' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (15, 8, N'2', N'good', N'deep', 3, 1, 0, CAST(N'2023-10-16T14:18:51.1042917' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (16, 8, N'4', N'good', N'deep', 0, 1, 0, CAST(N'2023-10-13T15:59:13.6404102' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (17, 8, N'4', N'good', N'deep', 0, 0, 0, CAST(N'2023-10-13T15:59:15.2707825' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (18, 8, N'4', N'good', N'deep', 0, 0, 0, CAST(N'2023-10-13T15:59:15.4922458' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (19, 8, N'4', N'good', N'deep', 2, 1, 0, CAST(N'2023-10-13T15:59:57.4239006' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (20, 8, N'4', N'good', N'deep', 1, 2, 0, CAST(N'2023-10-13T15:59:58.2498942' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (21, 8, N'4', N'good', N'deep', 1, 3, 0, CAST(N'2023-10-13T15:59:58.4166050' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (22, 8, N'2', N'review', N'deep', 2, 2, 0, CAST(N'2023-10-16T14:10:17.9590874' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (23, 8, N'2', N'review', N'deep', 0, 1, 0, CAST(N'2023-10-16T14:05:54.9519591' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (24, 8, N'2', N'review', N'deep', 2, 6, 0, CAST(N'2023-10-16T14:11:19.0573153' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (25, 8, N'2', N'it is best car', N'deep', 1, 1, 0, CAST(N'2023-10-16T14:04:57.8171420' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (26, 8, N'1', N'it is best car', N'henil', 2, 4, 0, CAST(N'2023-10-16T14:04:48.5164890' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (27, 8, N'1', N'it is right', N'hardik', 1, 1, 0, CAST(N'2023-10-16T14:01:13.0792316' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (28, 8, N'4', N'good1', N'deep', 1, 1, 0, CAST(N'2023-10-16T14:00:37.7788889' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (29, 8, N'4', N'deep', N'hardik', 1, 1, 0, CAST(N'2023-10-16T13:59:28.0060102' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (30, 8, N'4', N'it is best', N'deep', 2, 1, 0, CAST(N'2023-10-16T12:36:12.7574166' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (31, 8, N'4', N'description 1', N'test', 5, 3, 0, CAST(N'2023-10-16T12:35:53.7630701' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (32, 8, N'1', N'd2', N'deep', 7, 1, 0, CAST(N'2023-10-16T12:29:50.3140174' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (33, 8, N'1', N'review2', N'deep', 10, 2, 0, CAST(N'2023-10-16T18:19:23.3777901' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (34, 8, N'1', N'try', N'try', 13, 4, 0, CAST(N'2023-10-16T12:24:13.3951160' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (35, 8, N'3', N'review last', N'deep', 4, 1, 0, CAST(N'2023-10-16T18:06:08.0189433' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (36, 9, N'2', N'best car', N'jaydev', 4, 2, 0, CAST(N'2023-10-16T15:19:48.2039370' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (37, 8, N'3', N'it is best', N'ram', 1, 1, 0, CAST(N'2023-12-11T10:31:33.2234575' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (38, 10, N'2', N'0 to 100 achieve in 5 second.', N'good speed', 0, 0, 0, CAST(N'2023-12-12T10:44:50.8902794' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (39, 10, N'4', N'0 to 100 achieve in 5 second.', N'good speed', 0, 0, 0, CAST(N'2023-12-12T10:46:01.7313177' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (40, 42, N'3', N'0 to 100 achieve in 5 second.', N'speed', 0, 0, 0, CAST(N'2023-12-12T10:49:19.0857581' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (41, 8, N'4', N'xyz', N'Abc ', 1, 0, 0, CAST(N'2023-12-12T10:56:20.0652890' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (42, 8, N'4', N'xyz', N'Abc ', 0, 0, 0, CAST(N'2023-12-12T10:56:38.8913764' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (43, 11, N'4', N'nice', N'good', 1, 1, 0, CAST(N'2023-12-12T11:00:22.4234242' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (44, 11, N'5', N'0 to 100 achieve in 5 second', N'good speed', 0, 0, 0, CAST(N'2023-12-12T11:01:45.8448033' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (45, 9, N'2', N'bad', N'safety', 0, 0, 0, CAST(N'2023-12-12T15:18:58.3090300' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (46, 14, N'3', N'bad', N'safety', 0, 0, 0, CAST(N'2023-12-12T15:20:13.1277739' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (47, 1, N'2', N'bad', N'safety', 0, 0, 0, CAST(N'2023-12-12T15:39:36.2709615' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (48, 14, N'3', N'good', N'safety', 0, 0, 0, CAST(N'2023-12-12T16:17:03.8325975' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [CarId], [overallRating], [Descriptaion], [Title], [LikeCount], [DisLikeCount], [ViewCount], [Createddate]) VALUES (49, 11, N'3', N'it price is less', N'exter riview', 0, 0, 0, CAST(N'2023-12-12T16:29:29.5459162' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
SET IDENTITY_INSERT [dbo].[ReviewXComments] ON 

INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (1, 5, N'like 1', CAST(N'2023-09-16T15:46:54.6058014' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (2, 5, N'nice car', CAST(N'2023-09-20T10:50:17.2604371' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (3, 10, N'right', CAST(N'2023-09-20T10:52:08.5257261' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (4, 9, N'good', CAST(N'2023-09-20T10:58:37.7348716' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (5, 12, N'Yes, Good safety', CAST(N'2023-09-20T14:59:06.6814352' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (6, 8, N'good', CAST(N'2023-12-11T17:55:26.9534690' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (7, 8, N'yes', CAST(N'2023-12-11T18:24:47.7846072' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (8, 8, N'yes', CAST(N'2023-12-11T18:25:40.4421565' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (9, 8, N'yes', CAST(N'2023-12-11T18:50:27.6628440' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (10, 8, N'good', CAST(N'2023-12-11T18:54:50.2904374' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (11, 8, N'good', CAST(N'2023-12-11T18:57:01.8323340' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (12, 8, N'nice', CAST(N'2023-12-11T19:07:08.5200928' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (13, 8, N'ttt', CAST(N'2023-12-11T19:12:13.5729385' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (14, 8, N'yes', CAST(N'2023-12-11T19:12:42.0755342' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (15, 8, N'best', CAST(N'2023-12-11T19:14:53.9811537' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (16, 8, N'best', CAST(N'2023-12-11T19:17:40.1401774' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (17, 8, N'good', CAST(N'2023-12-12T10:38:22.7999868' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (18, 8, N'abcd', CAST(N'2023-12-12T10:38:58.7693166' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (19, 8, N'az', CAST(N'2023-12-12T10:42:38.5405388' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (20, 11, N'asdfg', CAST(N'2023-12-12T11:43:21.8383197' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (21, 11, N'az', CAST(N'2023-12-12T11:44:08.2361488' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (22, 11, N'good', CAST(N'2023-12-12T11:48:38.0103151' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (23, 11, N'right', CAST(N'2023-12-12T11:48:53.1032612' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (24, 8, N'right', CAST(N'2023-12-12T11:49:28.4052425' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (25, 9, N'bestr', CAST(N'2023-12-12T11:49:57.1602416' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (26, 9, N'good', CAST(N'2023-12-12T11:57:41.5374883' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (27, 9, N'c1', CAST(N'2023-12-12T11:59:22.4202116' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (28, 8, N'gfdg', CAST(N'2023-12-12T13:00:48.4733727' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (29, 9, N'test', CAST(N'2023-12-12T13:03:06.1155164' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (30, 10, N'yes', CAST(N'2023-12-12T15:16:07.8156497' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (31, 9, N'testt', CAST(N'2023-12-12T15:19:27.8709101' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (32, 10, N'nh', CAST(N'2023-12-12T15:36:26.4056957' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (33, 10, N'NHpatel', CAST(N'2023-12-12T15:37:02.8400540' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (35, 47, N'lll', CAST(N'2023-12-12T15:58:01.2368533' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (36, 42, N'ee', CAST(N'2023-12-12T16:03:12.8033204' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (37, 41, N'tt', CAST(N'2023-12-12T16:04:52.9137333' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (38, 45, N'klklk', CAST(N'2023-12-12T16:05:28.9983299' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (39, 36, N'rrrr', CAST(N'2023-12-12T16:06:54.1900857' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (40, 13, N'ff', CAST(N'2023-12-12T16:08:55.3323894' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (41, 46, N'comment ', CAST(N'2023-12-12T16:17:25.5296696' AS DateTime2))
INSERT [dbo].[ReviewXComments] ([Id], [ReviewId], [Comment], [Createddate]) VALUES (42, 49, N'really', CAST(N'2023-12-12T16:29:45.1288979' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ReviewXComments] OFF
GO
SET IDENTITY_INSERT [dbo].[States] ON 

INSERT [dbo].[States] ([Id], [StateName], [CountryId], [IsActive]) VALUES (2, N'Gujarat', 1, 1)
INSERT [dbo].[States] ([Id], [StateName], [CountryId], [IsActive]) VALUES (3, N'Ahmdabad', 1, 1)
INSERT [dbo].[States] ([Id], [StateName], [CountryId], [IsActive]) VALUES (4, N'Delhi', 1, 1)
INSERT [dbo].[States] ([Id], [StateName], [CountryId], [IsActive]) VALUES (5, N'Mumbai', 1, 1)
INSERT [dbo].[States] ([Id], [StateName], [CountryId], [IsActive]) VALUES (6, N'UP', 1, 1)
INSERT [dbo].[States] ([Id], [StateName], [CountryId], [IsActive]) VALUES (7, N'MP', 1, 1)
INSERT [dbo].[States] ([Id], [StateName], [CountryId], [IsActive]) VALUES (8, N'Bhutan', 1, 1)
SET IDENTITY_INSERT [dbo].[States] OFF
GO
SET IDENTITY_INSERT [dbo].[Variants] ON 

INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (1, 22, N'VXI', N'Auto', 900000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (3, 24, N'Ax3', N'diesle', 1500000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (4, 25, N' XMA Plus AMT S', N'Auto', 1300000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (5, 26, N'Creative DT S', N'Auto', 700000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (6, 27, N'XE CNG', N'Auto', 800000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (7, 28, N'Bolero B6 Opt', N'diesle', 1080000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (8, 29, N'Scorpio S MT 9STR', N'Manual', 1300000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (10, 30, N'ZX', N'Auto', 21000000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (11, 31, N'V AT', N'Auto', 1368000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (12, 32, N'Toyota Vellfire Hi', N'Auto', 12000000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (13, 33, N'EV6 GT line AWD', N'Auto', 6500000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (15, 34, N'Carens Premium', N'Auto', 1045000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (17, 35, N'Mahindra Marazzo M2 8 STR', N'manual', 1400000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (18, 36, N'Mahindra Neo N4', N'manual', 963000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (19, 37, N' G 7STR', N'auto', 1882000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (23, 39, N'EC Fast Charger', N'auto', 1599000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (24, 40, N'KUV100 NXT ', N'manual', 621000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (25, 41, N'Toyoto rush', N'auto', 793000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (27, 42, N'Sportz', N'manual', 780000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (28, 43, N'SX Knight DT', N'manual', 880000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (29, 44, N'SX IVT', N'auto', 1400000)
INSERT [dbo].[Variants] ([Id], [CarId], [VariantName], [Transmission], [Price]) VALUES (30, 23, N'DELTA', N'auto', 780000)
SET IDENTITY_INSERT [dbo].[Variants] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_Cars_CarId] FOREIGN KEY([CarId])
REFERENCES [dbo].[Cars] ([Id])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_Cars_CarId]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_Colors_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_Colors_ColorId]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_Dealers_DealerID] FOREIGN KEY([DealerID])
REFERENCES [dbo].[Dealers] ([Id])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_Dealers_DealerID]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_Variants_VariantId] FOREIGN KEY([VariantId])
REFERENCES [dbo].[Variants] ([Id])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_Variants_VariantId]
GO
ALTER TABLE [dbo].[CarImages]  WITH CHECK ADD  CONSTRAINT [FK_CarImages_Cars_CarId] FOREIGN KEY([CarId])
REFERENCES [dbo].[Cars] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarImages] CHECK CONSTRAINT [FK_CarImages_Cars_CarId]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Brands_BrandId]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_CarTypes_CarTypeId] FOREIGN KEY([CarTypeId])
REFERENCES [dbo].[CarTypes] ([Id])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_CarTypes_CarTypeId]
GO
ALTER TABLE [dbo].[CarSpecifications]  WITH CHECK ADD  CONSTRAINT [FK_CarSpecifications_Cars_CarId] FOREIGN KEY([CarId])
REFERENCES [dbo].[Cars] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarSpecifications] CHECK CONSTRAINT [FK_CarSpecifications_Cars_CarId]
GO
ALTER TABLE [dbo].[CarXColors]  WITH CHECK ADD  CONSTRAINT [FK_CarXColors_Cars_CarId] FOREIGN KEY([CarId])
REFERENCES [dbo].[Cars] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarXColors] CHECK CONSTRAINT [FK_CarXColors_Cars_CarId]
GO
ALTER TABLE [dbo].[CarXColors]  WITH CHECK ADD  CONSTRAINT [FK_CarXColors_Colors_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarXColors] CHECK CONSTRAINT [FK_CarXColors_Colors_ColorId]
GO
ALTER TABLE [dbo].[CarXFeatures]  WITH CHECK ADD  CONSTRAINT [FK_CarXFeatures_Cars_CarId] FOREIGN KEY([CarId])
REFERENCES [dbo].[Cars] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarXFeatures] CHECK CONSTRAINT [FK_CarXFeatures_Cars_CarId]
GO
ALTER TABLE [dbo].[CarXFeatures]  WITH CHECK ADD  CONSTRAINT [FK_CarXFeatures_Features_FeatureId] FOREIGN KEY([FeatureId])
REFERENCES [dbo].[Features] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarXFeatures] CHECK CONSTRAINT [FK_CarXFeatures_Features_FeatureId]
GO
ALTER TABLE [dbo].[CarXFeatures]  WITH CHECK ADD  CONSTRAINT [FK_CarXFeatures_FeatureTypes_FeatureTypeId] FOREIGN KEY([FeatureTypeId])
REFERENCES [dbo].[FeatureTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarXFeatures] CHECK CONSTRAINT [FK_CarXFeatures_FeatureTypes_FeatureTypeId]
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Cities_Countries_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Cities_Countries_CountryId]
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Cities_States_StateId] FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([Id])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Cities_States_StateId]
GO
ALTER TABLE [dbo].[Dealers]  WITH CHECK ADD  CONSTRAINT [FK_Dealers_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
GO
ALTER TABLE [dbo].[Dealers] CHECK CONSTRAINT [FK_Dealers_Brands_BrandId]
GO
ALTER TABLE [dbo].[Features]  WITH CHECK ADD  CONSTRAINT [FK_Features_FeatureTypes] FOREIGN KEY([FeatureTypeId])
REFERENCES [dbo].[FeatureTypes] ([Id])
GO
ALTER TABLE [dbo].[Features] CHECK CONSTRAINT [FK_Features_FeatureTypes]
GO
ALTER TABLE [dbo].[FeatureXFeaturetypes]  WITH CHECK ADD  CONSTRAINT [FK_FeatureXFeaturetypes_Features_FeatureId] FOREIGN KEY([FeatureId])
REFERENCES [dbo].[Features] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FeatureXFeaturetypes] CHECK CONSTRAINT [FK_FeatureXFeaturetypes_Features_FeatureId]
GO
ALTER TABLE [dbo].[FeatureXFeaturetypes]  WITH CHECK ADD  CONSTRAINT [FK_FeatureXFeaturetypes_FeatureTypes_FeatureTypeId] FOREIGN KEY([FeatureTypeId])
REFERENCES [dbo].[FeatureTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FeatureXFeaturetypes] CHECK CONSTRAINT [FK_FeatureXFeaturetypes_FeatureTypes_FeatureTypeId]
GO
ALTER TABLE [dbo].[Mileages]  WITH CHECK ADD  CONSTRAINT [FK_Mileages_Cars_CarId] FOREIGN KEY([CarId])
REFERENCES [dbo].[Cars] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Mileages] CHECK CONSTRAINT [FK_Mileages_Cars_CarId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Cars_CarId] FOREIGN KEY([CarId])
REFERENCES [dbo].[Cars] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Cars_CarId]
GO
ALTER TABLE [dbo].[ReviewXComments]  WITH CHECK ADD  CONSTRAINT [FK_ReviewXComments_Reviews_ReviewId] FOREIGN KEY([ReviewId])
REFERENCES [dbo].[Reviews] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ReviewXComments] CHECK CONSTRAINT [FK_ReviewXComments_Reviews_ReviewId]
GO
ALTER TABLE [dbo].[States]  WITH CHECK ADD  CONSTRAINT [FK_States_Countries_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[States] CHECK CONSTRAINT [FK_States_Countries_CountryId]
GO
ALTER TABLE [dbo].[Variants]  WITH CHECK ADD  CONSTRAINT [FK_Variants_Cars_CarId] FOREIGN KEY([CarId])
REFERENCES [dbo].[Cars] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Variants] CHECK CONSTRAINT [FK_Variants_Cars_CarId]
GO
