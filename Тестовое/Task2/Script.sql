CREATE TABLE [dbo].[Educations](
	[e_id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [int] NOT NULL,
	[pl_id] [int] NOT NULL,
	[e_status] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Educations] PRIMARY KEY CLUSTERED 
(
	[e_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobPlaces]    Script Date: 23.10.2022 1:36:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobPlaces](
	[jp_id] [int] IDENTITY(1,1) NOT NULL,
	[jp_name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_JobPlaces] PRIMARY KEY CLUSTERED 
(
	[jp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persons]    Script Date: 23.10.2022 1:36:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[p_id] [int] IDENTITY(1,1) NOT NULL,
	[p_name] [nvarchar](max) NOT NULL,
	[p_lastname] [nvarchar](max) NOT NULL,
	[p_surname] [nvarchar](max) NOT NULL,
	[p_tel] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[p_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonSkillLevel]    Script Date: 23.10.2022 1:36:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonSkillLevel](
	[Personsp_id] [int] NOT NULL,
	[skillLevelssl_id] [int] NOT NULL,
 CONSTRAINT [PK_PersonSkillLevel] PRIMARY KEY CLUSTERED 
(
	[Personsp_id] ASC,
	[skillLevelssl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Places]    Script Date: 23.10.2022 1:36:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Places](
	[pl_id] [int] IDENTITY(1,1) NOT NULL,
	[pl_name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Places] PRIMARY KEY CLUSTERED 
(
	[pl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrevJobs]    Script Date: 23.10.2022 1:36:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrevJobs](
	[pj_id] [int] IDENTITY(1,1) NOT NULL,
	[pj_dateStart] [datetime2](7) NOT NULL,
	[pj_dateFinish] [datetime2](7) NOT NULL,
	[p_id] [int] NOT NULL,
	[jp_id] [int] NOT NULL,
 CONSTRAINT [PK_PrevJobs] PRIMARY KEY CLUSTERED 
(
	[pj_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillLevels]    Script Date: 23.10.2022 1:36:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillLevels](
	[sl_id] [int] IDENTITY(1,1) NOT NULL,
	[sl_levelname] [nvarchar](max) NOT NULL,
	[s_id] [int] NOT NULL,
 CONSTRAINT [PK_SkillLevels] PRIMARY KEY CLUSTERED 
(
	[sl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 23.10.2022 1:36:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[s_id] [int] IDENTITY(1,1) NOT NULL,
	[s_name] [nvarchar](max) NOT NULL,
	[s_nestingLevel] [nvarchar](max) NOT NULL,
	[s_parentId] [int] NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_Educations_p_id]    Script Date: 23.10.2022 1:36:45 ******/
CREATE NONCLUSTERED INDEX [IX_Educations_p_id] ON [dbo].[Educations]
(
	[p_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Educations_pl_id]    Script Date: 23.10.2022 1:36:45 ******/
CREATE NONCLUSTERED INDEX [IX_Educations_pl_id] ON [dbo].[Educations]
(
	[pl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonSkillLevel_skillLevelssl_id]    Script Date: 23.10.2022 1:36:45 ******/
CREATE NONCLUSTERED INDEX [IX_PersonSkillLevel_skillLevelssl_id] ON [dbo].[PersonSkillLevel]
(
	[skillLevelssl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PrevJobs_jp_id]    Script Date: 23.10.2022 1:36:45 ******/
CREATE NONCLUSTERED INDEX [IX_PrevJobs_jp_id] ON [dbo].[PrevJobs]
(
	[jp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PrevJobs_p_id]    Script Date: 23.10.2022 1:36:45 ******/
CREATE NONCLUSTERED INDEX [IX_PrevJobs_p_id] ON [dbo].[PrevJobs]
(
	[p_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SkillLevels_s_id]    Script Date: 23.10.2022 1:36:45 ******/
CREATE NONCLUSTERED INDEX [IX_SkillLevels_s_id] ON [dbo].[SkillLevels]
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Skills_s_parentId]    Script Date: 23.10.2022 1:36:45 ******/
CREATE NONCLUSTERED INDEX [IX_Skills_s_parentId] ON [dbo].[Skills]
(
	[s_parentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Educations]  WITH CHECK ADD  CONSTRAINT [FK_Educations_Persons_p_id] FOREIGN KEY([p_id])
REFERENCES [dbo].[Persons] ([p_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Educations] CHECK CONSTRAINT [FK_Educations_Persons_p_id]
GO
ALTER TABLE [dbo].[Educations]  WITH CHECK ADD  CONSTRAINT [FK_Educations_Places_pl_id] FOREIGN KEY([pl_id])
REFERENCES [dbo].[Places] ([pl_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Educations] CHECK CONSTRAINT [FK_Educations_Places_pl_id]
GO
ALTER TABLE [dbo].[PersonSkillLevel]  WITH CHECK ADD  CONSTRAINT [FK_PersonSkillLevel_Persons_Personsp_id] FOREIGN KEY([Personsp_id])
REFERENCES [dbo].[Persons] ([p_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PersonSkillLevel] CHECK CONSTRAINT [FK_PersonSkillLevel_Persons_Personsp_id]
GO
ALTER TABLE [dbo].[PersonSkillLevel]  WITH CHECK ADD  CONSTRAINT [FK_PersonSkillLevel_SkillLevels_skillLevelssl_id] FOREIGN KEY([skillLevelssl_id])
REFERENCES [dbo].[SkillLevels] ([sl_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PersonSkillLevel] CHECK CONSTRAINT [FK_PersonSkillLevel_SkillLevels_skillLevelssl_id]
GO
ALTER TABLE [dbo].[PrevJobs]  WITH CHECK ADD  CONSTRAINT [FK_PrevJobs_JobPlaces_jp_id] FOREIGN KEY([jp_id])
REFERENCES [dbo].[JobPlaces] ([jp_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PrevJobs] CHECK CONSTRAINT [FK_PrevJobs_JobPlaces_jp_id]
GO
ALTER TABLE [dbo].[PrevJobs]  WITH CHECK ADD  CONSTRAINT [FK_PrevJobs_Persons_p_id] FOREIGN KEY([p_id])
REFERENCES [dbo].[Persons] ([p_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PrevJobs] CHECK CONSTRAINT [FK_PrevJobs_Persons_p_id]
GO
ALTER TABLE [dbo].[SkillLevels]  WITH CHECK ADD  CONSTRAINT [FK_SkillLevels_Skills_s_id] FOREIGN KEY([s_id])
REFERENCES [dbo].[Skills] ([s_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SkillLevels] CHECK CONSTRAINT [FK_SkillLevels_Skills_s_id]
GO
ALTER TABLE [dbo].[Skills]  WITH CHECK ADD  CONSTRAINT [FK_Skills_Skills_s_parentId] FOREIGN KEY([s_parentId])
REFERENCES [dbo].[Skills] ([s_id])
GO
ALTER TABLE [dbo].[Skills] CHECK CONSTRAINT [FK_Skills_Skills_s_parentId]
GO