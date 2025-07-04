
ALTER DATABASE [IITEST] SET ARITHABORT OFF 
GO
ALTER DATABASE [IITEST] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [IITEST] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IITEST] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IITEST] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IITEST] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IITEST] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IITEST] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IITEST] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IITEST] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IITEST] SET  DISABLE_BROKER 
GO
ALTER DATABASE [IITEST] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IITEST] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IITEST] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IITEST] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IITEST] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IITEST] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IITEST] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IITEST] SET RECOVERY FULL 
GO
ALTER DATABASE [IITEST] SET  MULTI_USER 
GO
ALTER DATABASE [IITEST] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IITEST] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IITEST] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IITEST] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [IITEST] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'IITEST', N'ON'
GO
USE [IITEST]
GO
/****** Object:  Table [dbo].[answer]    Script Date: 13.06.2025 15:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[answer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idquest] [int] NOT NULL,
	[answer] [varchar](100) NOT NULL,
	[istrue] [bit] NOT NULL,
 CONSTRAINT [PK_answer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[doljn]    Script Date: 13.06.2025 15:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[doljn](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[groups]    Script Date: 13.06.2025 15:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](10) NOT NULL,
 CONSTRAINT [PK_group] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[login]    Script Date: 13.06.2025 15:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [varchar](25) NOT NULL,
	[pass] [varchar](50) NOT NULL,
	[rights] [varchar](20) NOT NULL,
	[idstud] [int] NOT NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[questions]    Script Date: 13.06.2025 15:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[questions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idsubject] [int] NOT NULL,
	[question] [varchar](100) NOT NULL,
 CONSTRAINT [PK_questions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[student]    Script Date: 13.06.2025 15:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](50) NOT NULL,
	[lname] [varchar](50) NOT NULL,
	[mname] [varchar](50) NOT NULL,
	[dtBrthDay] [date] NOT NULL,
	[adres] [varchar](255) NULL,
	[idgroup] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[subjects]    Script Date: 13.06.2025 15:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[subjects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[teacher]    Script Date: 13.06.2025 15:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[teacher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](50) NOT NULL,
	[lname] [varchar](50) NOT NULL,
	[mname] [varchar](50) NULL,
	[phone] [varchar](20) NULL,
	[iddoljn] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[teachers_score]    Script Date: 13.06.2025 15:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teachers_score](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idtest] [int] NOT NULL,
	[idteacher] [int] NOT NULL,
	[score] [int] NOT NULL,
	[dtscore] [date] NOT NULL,
 CONSTRAINT [PK_teachers_score] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[test_results]    Script Date: 13.06.2025 15:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test_results](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NOT NULL,
	[subject_id] [int] NOT NULL,
	[score] [int] NOT NULL,
	[test_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[vstud]    Script Date: 13.06.2025 15:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vstud]
AS
SELECT s.id id, fname Фамилия, lname Имя, mname Отчество, FORMAT(dtBrthDay, 'dd.MM.yyyy') [дата рождения], adres адрес, title группа FROM student s
INNER JOIN groups g
ON
s.idgroup = g.id

GO
/****** Object:  View [dbo].[vteacher]    Script Date: 13.06.2025 15:10:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vteacher]
AS
SELECT s.id id, fname Фамилия, lname Имя, mname Отчество, phone телефон, title должность FROM teacher s
INNER JOIN doljn g
ON
s.iddoljn = g.id

GO
SET IDENTITY_INSERT [dbo].[answer] ON 

INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (1, 1, N'Бизнес-процесс', 1)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (2, 1, N'Система управления', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (3, 1, N'Объект данных', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (4, 2, N'Система управления ресурсами', 1)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (5, 2, N'Система разработки программного обеспечения', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (6, 2, N'Система управления проектами', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (7, 3, N'Задача', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (8, 3, N'Проект', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (9, 3, N'Сделка', 1)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (10, 4, N'Потребность в товаре', 1)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (11, 4, N'Производство товара', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (12, 4, N'Цена товара', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (13, 5, N'Цена товара', 1)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (14, 5, N'Популярность товара', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (15, 5, N'Качество товара', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (16, 6, N'Валовой доход', 1)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (17, 6, N'Чистый доход', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (18, 6, N'Операционный доход', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (19, 7, N'Метод оценки сильных и слабых сторон', 1)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (20, 7, N'Метод прогнозирования рынка', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (21, 7, N'Метод анализа конкуренции', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (22, 8, N'Группа людей, на которую направлены маркетинговые усилия', 1)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (23, 8, N'Все потенциальные покупатели', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (24, 8, N'Конкуренты', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (25, 9, N'Фредерик Тейлор', 1)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (26, 9, N'Питер Друкер', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (27, 9, N'Генри Форд', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (28, 10, N'Метод анализа сильных и слабых сторон компании', 1)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (29, 10, N'Метод оценки финансового состояния', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (30, 10, N'Метод прогнозирования спроса', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (31, 11, N'Первый закон', 1)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (32, 11, N'Второй закон', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (33, 11, N'Третий закон', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (34, 12, N'Сила, умноженная на расстояние', 1)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (35, 12, N'Продукт силы', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (36, 12, N'Сила, действующая на тело', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (37, 13, N'Последовательность действий для решения задачи', 1)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (38, 13, N'Структура данных', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (39, 13, N'Язык программирования', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (40, 14, N'Python', 1)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (41, 14, N'Ассемблер', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (42, 14, N'C', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (43, 15, N'Программа, переводящая код на другой язык', 1)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (44, 15, N'Программа для отладки', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (45, 15, N'Программа для тестирования', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (46, 16, N'Метод анализа систем и процессов', 1)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (47, 16, N'Метод проектирования', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (48, 16, N'Метод оценки эффективности', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (49, 17, N'Графическое представление данных', 1)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (50, 17, N'Таблица данных', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (51, 17, N'Текстовый отчет', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (52, 18, N'Способность иметь права и обязанности', 1)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (53, 18, N'Способность выполнять обязанности', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (54, 18, N'Способность заключать сделки', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (55, 19, N'Конституция', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (56, 19, N'Закон', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (57, 19, N'Указ президента', 1)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (58, 20, N'Обязанность отвечать за свои действия', 1)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (59, 20, N'Обязанность выполнять законы', 0)
INSERT [dbo].[answer] ([id], [idquest], [answer], [istrue]) VALUES (60, 20, N'Обязанность платить налоги', 0)
SET IDENTITY_INSERT [dbo].[answer] OFF
SET IDENTITY_INSERT [dbo].[doljn] ON 

INSERT [dbo].[doljn] ([id], [title]) VALUES (1, N'Ассистент')
INSERT [dbo].[doljn] ([id], [title]) VALUES (2, N'Доцент')
INSERT [dbo].[doljn] ([id], [title]) VALUES (3, N'Профессор')
INSERT [dbo].[doljn] ([id], [title]) VALUES (4, N'Старший преподаватель')
INSERT [dbo].[doljn] ([id], [title]) VALUES (5, N'Лектор')
INSERT [dbo].[doljn] ([id], [title]) VALUES (6, N'Научный сотрудник')
SET IDENTITY_INSERT [dbo].[doljn] OFF
SET IDENTITY_INSERT [dbo].[groups] ON 

INSERT [dbo].[groups] ([id], [title]) VALUES (1, N'ЭВ - 23')
INSERT [dbo].[groups] ([id], [title]) VALUES (2, N'ПР - 12')
INSERT [dbo].[groups] ([id], [title]) VALUES (3, N'МЛ - 59')
INSERT [dbo].[groups] ([id], [title]) VALUES (4, N'БПР - 19')
INSERT [dbo].[groups] ([id], [title]) VALUES (5, N'КС - 32')
SET IDENTITY_INSERT [dbo].[groups] OFF
SET IDENTITY_INSERT [dbo].[login] ON 

INSERT [dbo].[login] ([id], [login], [pass], [rights], [idstud]) VALUES (1, N'user', N'user', N'user', 2)
SET IDENTITY_INSERT [dbo].[login] OFF
SET IDENTITY_INSERT [dbo].[questions] ON 

INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (1, 1, N'Какое из следующих понятий относится к бизнес-информатике?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (2, 1, N'Что такое ERP-система?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (3, 1, N'Какой из следующих элементов не относится к бизнес-процессам?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (4, 2, N'Что такое спрос в экономике?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (5, 2, N'Какой из следующих факторов влияет на предложение?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (6, 2, N'Какой термин обозначает общую сумму всех доходов?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (7, 3, N'Что такое SWOT-анализ?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (8, 3, N'Какой из перечисленных элементов не входит в менеджмент?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (9, 3, N'Кто является основателем теории управления?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (10, 4, N'Что такое целевая аудитория в маркетинге?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (11, 4, N'Какой из следующих методов не относится к маркетинговым?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (12, 4, N'Что такое SWOT-анализ в маркетинге?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (13, 5, N'Какой закон движения Ньютона описывает инерцию?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (14, 5, N'Что такое момент силы?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (15, 5, N'Какой из следующих терминов относится к электричеству?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (16, 6, N'Что такое алгоритм в программировании?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (17, 6, N'Какой из следующих языков программирования является высокоуровневым?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (18, 6, N'Что такое компилятор?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (19, 7, N'Что такое системный анализ?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (20, 7, N'Какой из следующих методов не относится к системному анализу?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (21, 7, N'Что такое диаграмма потоков данных?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (22, 8, N'Что такое правоспособность?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (23, 8, N'Какой из следующих актов не является правовым?')
INSERT [dbo].[questions] ([id], [idsubject], [question]) VALUES (24, 8, N'Что такое юридическая ответственность?')
SET IDENTITY_INSERT [dbo].[questions] OFF
SET IDENTITY_INSERT [dbo].[student] ON 

INSERT [dbo].[student] ([id], [fname], [lname], [mname], [dtBrthDay], [adres], [idgroup]) VALUES (2, N'Селиванов', N'Сергей', N'Петрович', CAST(N'2003-10-12' AS Date), N'г. Москва, ул. Буденного 34-12', 1)
INSERT [dbo].[student] ([id], [fname], [lname], [mname], [dtBrthDay], [adres], [idgroup]) VALUES (3, N'Щеглинский', N'Андрей', N'Владимирович', CAST(N'2024-08-23' AS Date), N'г. Москва, ул. Николаева 21-10', 1)
INSERT [dbo].[student] ([id], [fname], [lname], [mname], [dtBrthDay], [adres], [idgroup]) VALUES (4, N'Сергеева', N'Валентина', N'Семеновна', CAST(N'2024-09-18' AS Date), N'г. Москва, пр-т. Независимости 132-9', 2)
SET IDENTITY_INSERT [dbo].[student] OFF
SET IDENTITY_INSERT [dbo].[subjects] ON 

INSERT [dbo].[subjects] ([id], [title]) VALUES (1, N'Бизнес-информатика')
INSERT [dbo].[subjects] ([id], [title]) VALUES (2, N'Экономика')
INSERT [dbo].[subjects] ([id], [title]) VALUES (3, N'Менеджмент')
INSERT [dbo].[subjects] ([id], [title]) VALUES (4, N'Маркетинг')
INSERT [dbo].[subjects] ([id], [title]) VALUES (5, N'Техническая механика')
INSERT [dbo].[subjects] ([id], [title]) VALUES (6, N'Программирование')
INSERT [dbo].[subjects] ([id], [title]) VALUES (7, N'Системный анализ')
INSERT [dbo].[subjects] ([id], [title]) VALUES (8, N'Основы права')
SET IDENTITY_INSERT [dbo].[subjects] OFF
SET IDENTITY_INSERT [dbo].[teacher] ON 

INSERT [dbo].[teacher] ([id], [fname], [lname], [mname], [phone], [iddoljn]) VALUES (1, N'Мирошниченко', N'Валентина', N'Николаевна', N'345-876-654', 2)
INSERT [dbo].[teacher] ([id], [fname], [lname], [mname], [phone], [iddoljn]) VALUES (2, N'Еремеев', N'Николай', N'Валентинович', N'545-766-123', 2)
INSERT [dbo].[teacher] ([id], [fname], [lname], [mname], [phone], [iddoljn]) VALUES (3, N'Николаев', N'Сергей', N'Петрович', N'234-655-443', 3)
SET IDENTITY_INSERT [dbo].[teacher] OFF
ALTER TABLE [dbo].[answer]  WITH CHECK ADD  CONSTRAINT [FK_answer_questions] FOREIGN KEY([idquest])
REFERENCES [dbo].[questions] ([id])
GO
ALTER TABLE [dbo].[answer] CHECK CONSTRAINT [FK_answer_questions]
GO
ALTER TABLE [dbo].[login]  WITH CHECK ADD  CONSTRAINT [FK_login_student] FOREIGN KEY([idstud])
REFERENCES [dbo].[student] ([id])
GO
ALTER TABLE [dbo].[login] CHECK CONSTRAINT [FK_login_student]
GO
ALTER TABLE [dbo].[questions]  WITH CHECK ADD  CONSTRAINT [FK_questions_subjects] FOREIGN KEY([idsubject])
REFERENCES [dbo].[subjects] ([id])
GO
ALTER TABLE [dbo].[questions] CHECK CONSTRAINT [FK_questions_subjects]
GO
ALTER TABLE [dbo].[student]  WITH CHECK ADD  CONSTRAINT [FK_student_groups] FOREIGN KEY([idgroup])
REFERENCES [dbo].[groups] ([id])
GO
ALTER TABLE [dbo].[student] CHECK CONSTRAINT [FK_student_groups]
GO
ALTER TABLE [dbo].[teacher]  WITH CHECK ADD  CONSTRAINT [FK_teacher_doljn] FOREIGN KEY([iddoljn])
REFERENCES [dbo].[doljn] ([id])
GO
ALTER TABLE [dbo].[teacher] CHECK CONSTRAINT [FK_teacher_doljn]
GO
ALTER TABLE [dbo].[teachers_score]  WITH CHECK ADD  CONSTRAINT [FK_teachers_score_teacher] FOREIGN KEY([idteacher])
REFERENCES [dbo].[teacher] ([id])
GO
ALTER TABLE [dbo].[teachers_score] CHECK CONSTRAINT [FK_teachers_score_teacher]
GO
ALTER TABLE [dbo].[teachers_score]  WITH CHECK ADD  CONSTRAINT [FK_teachers_score_test_results] FOREIGN KEY([idtest])
REFERENCES [dbo].[test_results] ([id])
GO
ALTER TABLE [dbo].[teachers_score] CHECK CONSTRAINT [FK_teachers_score_test_results]
GO
ALTER TABLE [dbo].[test_results]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[student] ([id])
GO
ALTER TABLE [dbo].[test_results]  WITH CHECK ADD FOREIGN KEY([subject_id])
REFERENCES [dbo].[subjects] ([id])
GO
USE [master]
GO
ALTER DATABASE [IITEST] SET  READ_WRITE 
GO
