
/****** Object:  Table [dbo].[Label_Names]    Script Date: 3/14/2018 9:56:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Label_Names](
	[Label] [int] NULL,
	[LabelNames] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Metrics]    Script Date: 3/14/2018 9:56:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Metrics](
	[id] [varchar](30) NOT NULL,
	[avg_accuracy_micro] [float] NULL,
	[avg_accuracy_macro] [float] NULL,
 CONSTRAINT [unique_id2] UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Model]    Script Date: 3/14/2018 9:56:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model](
	[id] [nvarchar](255) NULL,
	[value] [varbinary](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewOut]    Script Date: 3/14/2018 9:56:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewOut](
	[LabelNames] [nvarchar](255) NULL,
	[Label] [nvarchar](255) NULL,
	[Id] [int] NULL,
	[PredictedLabel] [nvarchar](255) NULL,
	[Score.7] [float] NULL,
	[Score.16] [float] NULL,
	[Score.3] [float] NULL,
	[Score.19] [float] NULL,
	[Score.6] [float] NULL,
	[Score.18] [float] NULL,
	[Score.8] [float] NULL,
	[Score.15] [float] NULL,
	[Score.17] [float] NULL,
	[Score.11] [float] NULL,
	[Score.1] [float] NULL,
	[Score.0] [float] NULL,
	[Score.10] [float] NULL,
	[Score.14] [float] NULL,
	[Score.9] [float] NULL,
	[Score.4] [float] NULL,
	[Score.13] [float] NULL,
	[Score.5] [float] NULL,
	[Score.2] [float] NULL,
	[Score.12] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News_Test]    Script Date: 3/14/2018 9:56:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News_Test](
	[Label] [int] NULL,
	[Subject] [nvarchar](436) NULL,
	[Text] [nvarchar](max) NULL,
	[Id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News_To_Score]    Script Date: 3/14/2018 9:56:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News_To_Score](
	[Label] [int] NULL,
	[Subject] [varchar](max) NULL,
	[Text] [varchar](max) NULL,
	[Id] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News_Train]    Script Date: 3/14/2018 9:56:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News_Train](
	[Label] [int] NULL,
	[Subject] [nvarchar](480) NULL,
	[Text] [nvarchar](max) NULL,
	[Id] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Predictions]    Script Date: 3/14/2018 9:56:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Predictions](
	[LabelNames] [nvarchar](255) NULL,
	[Label] [nvarchar](255) NULL,
	[Id] [int] NULL,
	[PredictedLabel] [nvarchar](255) NULL,
	[Score.7] [float] NULL,
	[Score.4] [float] NULL,
	[Score.1] [float] NULL,
	[Score.5] [float] NULL,
	[Score.14] [float] NULL,
	[Score.16] [float] NULL,
	[Score.13] [float] NULL,
	[Score.3] [float] NULL,
	[Score.2] [float] NULL,
	[Score.0] [float] NULL,
	[Score.8] [float] NULL,
	[Score.12] [float] NULL,
	[Score.19] [float] NULL,
	[Score.6] [float] NULL,
	[Score.10] [float] NULL,
	[Score.9] [float] NULL,
	[Score.15] [float] NULL,
	[Score.17] [float] NULL,
	[Score.18] [float] NULL,
	[Score.11] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Predictions_Intermediate]    Script Date: 3/14/2018 9:56:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Predictions_Intermediate](
	[Label] [nvarchar](255) NULL,
	[Id] [int] NULL,
	[PredictedLabel] [nvarchar](255) NULL,
	[Score.7] [float] NULL,
	[Score.4] [float] NULL,
	[Score.1] [float] NULL,
	[Score.5] [float] NULL,
	[Score.14] [float] NULL,
	[Score.16] [float] NULL,
	[Score.13] [float] NULL,
	[Score.3] [float] NULL,
	[Score.2] [float] NULL,
	[Score.0] [float] NULL,
	[Score.8] [float] NULL,
	[Score.12] [float] NULL,
	[Score.19] [float] NULL,
	[Score.6] [float] NULL,
	[Score.10] [float] NULL,
	[Score.9] [float] NULL,
	[Score.15] [float] NULL,
	[Score.17] [float] NULL,
	[Score.18] [float] NULL,
	[Score.11] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Predictions_New]    Script Date: 3/14/2018 9:56:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Predictions_New](
	[LabelNames] [nvarchar](255) NULL,
	[Label] [nvarchar](255) NULL,
	[Id] [int] NULL,
	[PredictedLabel] [nvarchar](255) NULL,
	[Score.7] [float] NULL,
	[Score.4] [float] NULL,
	[Score.1] [float] NULL,
	[Score.5] [float] NULL,
	[Score.14] [float] NULL,
	[Score.16] [float] NULL,
	[Score.13] [float] NULL,
	[Score.3] [float] NULL,
	[Score.2] [float] NULL,
	[Score.0] [float] NULL,
	[Score.8] [float] NULL,
	[Score.12] [float] NULL,
	[Score.19] [float] NULL,
	[Score.6] [float] NULL,
	[Score.10] [float] NULL,
	[Score.9] [float] NULL,
	[Score.15] [float] NULL,
	[Score.17] [float] NULL,
	[Score.18] [float] NULL,
	[Score.11] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[evaluate]    Script Date: 3/14/2018 9:56:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[evaluate] @predictions_table varchar(max), @model_key varchar(max)

AS 
BEGIN

	-- Get the server and current database names.
	DECLARE @server_name varchar(max) = (CONVERT(VARCHAR,SERVERPROPERTY('ServerName')));
	DECLARE @database_name varchar(max) = db_name();

	-- Import the Predictions Table as an input to the Python code.
	DECLARE @inquery nvarchar(max) = N' SELECT * FROM ' + @predictions_table
	  
	TRUNCATE TABLE Metrics

	INSERT INTO Metrics 
	EXECUTE sp_execute_external_script @language = N'R',
     								   @script = N' 

##########################################################################################################################################
## Model evaluation metrics.
##########################################################################################################################################
evaluate_model <- function(data, model_key){
	## Confusion matrix: 
	Confusion_Matrix <- rxCrossTabs(~ Label:PredictedLabel, data, returnXtabs = TRUE)

	## Micro Average accuracy: 
	micro <- sum(diag(Confusion_Matrix))/sum(Confusion_Matrix)

	## Macro Average accuracy: 
	macro <- mean(diag(Confusion_Matrix)/rowSums(Confusion_Matrix))

	metrics <- c(model_key, micro, macro)
	return(metrics)
}
##########################################################################################################################################
## Evaluation 
##########################################################################################################################################
OutputDataSet <- data.frame(rbind(evaluate_model(data = InputDataSet, model_key = model_key)))	
'
, @input_data_1 = @inquery
, @params = N'@predictions_table varchar(max), @model_key varchar(max), @server_name varchar(max), @database_name varchar(max)'	
, @model_key = @model_key
, @predictions_table = @predictions_table 
, @server_name = @server_name
, @database_name = @database_name
;
END
GO
/****** Object:  StoredProcedure [dbo].[Initial_Run_Once_R]    Script Date: 3/14/2018 9:56:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[Initial_Run_Once_R]
AS 
BEGIN

EXEC train_model 'LR'
EXEC score 'News_Test', 'Predictions', 'LR'
EXEC evaluate 'Predictions', 'LR'
EXEC score 'News_To_Score', 'Predictions_New', 'LR'

END




/****** Object:  StoredProcedure [dbo].[score]    Script Date: 3/13/2018 10:14:21 PM ******/
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[score]    Script Date: 3/14/2018 9:56:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[score] @input varchar(max), @output varchar(max), @model_key varchar(max)

AS 
BEGIN

	-- Get the server and current database names.
	DECLARE @server_name varchar(max) = (CONVERT(VARCHAR,SERVERPROPERTY('ServerName')));
	DECLARE @database_name varchar(max) = db_name();

	-- Compute the predictions. 
	EXECUTE sp_execute_external_script @language = N'R',
     					               @script = N' 

##########################################################################################################################################
##	Define the connection string and compute contexts.
##########################################################################################################################################
connection_string <- paste("Driver=SQL Server;Server=", server_name, ";Database=", database_name, ";Trusted_Connection=true;", sep="")
sql <- RxInSqlServer(connectionString = connection_string, num_tasks = 1)

##########################################################################################################################################
##	Get the column information.
##########################################################################################################################################
# Get the factor levels of the label.
colInfo1 <- list()
colInfo1$Label$type <- "factor"
News_Train_sql1 <- RxSqlServerData(table = "News_Train", connectionString = connection_string, colInfo = colInfo1)
colInfo <- rxCreateColInfo(News_Train_sql1)

########################################################################################################################################## 
## Retrieve the trained model.
########################################################################################################################################## 
# Create an Odbc connection with SQL Server using the name of the table storing the model. 
OdbcModel <- RxOdbcData(table = "Model", connectionString = connection_string) 

# Read the model from SQL.  
logistic_model <- rxReadObject(OdbcModel, model_key)

# Set the Compute Context to SQL.
rxSetComputeContext(sql)

##########################################################################################################################################
##	Point to the testing set and use the colInfo to specify the orders of the levels.
##########################################################################################################################################
News_Test_sql <- RxSqlServerData(table = input,
                                 connectionString = connection_string,
                                 colInfo = colInfo)

##########################################################################################################################################
## Logistic Regresssion scoring.
##########################################################################################################################################
# Make Predictions while featurizing the text variables separately on the fly.
# This will automatically use the same text transformation as in the training, encoded in logistic_model.

Predictions_Intermediate_sql <- RxSqlServerData(table = "Predictions_Intermediate", connectionString = connection_string)

rxPredict(modelObject = logistic_model,
          data = News_Test_sql,
		  outData = Predictions_Intermediate_sql,
          extraVarsToWrite = c("Label", "Id"),
		  overwrite = TRUE)
'
, @params = N'@input varchar(max), @model_key varchar(max), @server_name varchar(max), @database_name varchar(max)'	  
, @input = @input
, @model_key = @model_key
, @server_name = @server_name
, @database_name = @database_name

-- Join the Predictions table with the Label names to get the actual predicted labels.
DECLARE @sql0 nvarchar(max);
SELECT @sql0 = N'
DROP TABLE if exists ' + @output 
EXEC sp_executesql @sql0

DECLARE @sql nvarchar(max);
SELECT @sql = N'
SELECT LabelNames, Predictions_Intermediate.*
INTO ' + @output +'
FROM Predictions_Intermediate INNER JOIN Label_Names 
ON Predictions_Intermediate.PredictedLabel = Label_Names.Label'
EXEC sp_executesql @sql

-- Drop the intermediate table. 
TRUNCATE TABLE Predictions_Intermediate;


;
END
GO
/****** Object:  StoredProcedure [dbo].[scorenew]    Script Date: 3/14/2018 9:56:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[scorenew] @in varchar(max), @out varchar(max), @model_key varchar(max)

AS 
BEGIN



exec [dbo].[score] @input = @in, @output = @out, @model_key = @model_key
DECLARE @sql nvarchar(max);
SELECT @sql = N'
SELECT LabelNames, PredictedLabel, I.Subject, I.Text, I.Id
FROM ' + @out  + ' O
JOIN ' + @in + ' I 
ON O.Id = I.Id'

EXEC sp_executesql @sql;

END
GO
/****** Object:  StoredProcedure [dbo].[train_model]    Script Date: 3/14/2018 9:56:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[train_model] @model_key varchar(max) 

AS 
BEGIN

	-- Get the server and current database names.
	DECLARE @server_name varchar(max) = (CONVERT(VARCHAR,SERVERPROPERTY('ServerName')));
	DECLARE @database_name varchar(max) = db_name();

	-- Train the model on the training set.	
	EXECUTE sp_execute_external_script @language = N'R',
									   @script = N' 

##########################################################################################################################################
##	Define the connection string and compute contexts.
##########################################################################################################################################
connection_string <- paste("Driver=SQL Server;Server=", server_name, ";Database=", database_name, ";Trusted_Connection=true;", sep="")
sql <- RxInSqlServer(connectionString = connection_string, num_tasks = 1)

##########################################################################################################################################
##	Get the column information.
##########################################################################################################################################
# Get the factor levels of the label.
colInfo1 <- list()
colInfo1$Label$type <- "factor"
News_Train_sql1 <- RxSqlServerData(table = "News_Train", connectionString = connection_string, colInfo = colInfo1)
colInfo <- rxCreateColInfo(News_Train_sql1)

# Set the compute context to SQL. 
rxSetComputeContext(sql) 

##########################################################################################################################################
##	Point to the training set and use the colInfo to specify the orders of the levels.
##########################################################################################################################################
# NOTE: When using sp_execute_external_script, it is also possible to use InputDataset in order to get a data frame containing the data below.
# RxSqlServerData is used instead of a data frame so that the data does not have to be entirely loaded into memory.

News_Train_sql <- RxSqlServerData(table = "News_Train",
								  connectionString = connection_string,
								  colInfo = colInfo)

##########################################################################################################################################
##	Specify the training formula.
##########################################################################################################################################
## The Subject and Text are featurized separately in order to give to the words in the Subject the same weight as those in the Text. 
training_formula = "Label ~ SubjectPreprocessed + TextPreprocessed"

##########################################################################################################################################
##	Specify the features that will be created on the fly while training.. 
##########################################################################################################################################
# Define the transformation to be used to generate features. 
## Here, for each of the Subject and the Text separately, we: 
## - Remove stopwords, diacritics, punctuation and numbers.
## - Change capital letters to lower case. 
## - Hash the different words and characters. 
## The parameters or options can be further optimized by parameter sweeping.
text_transform_list <- list(featurizeText(vars = c(SubjectPreprocessed = "Subject",
                                                   TextPreprocessed = "Text"),
                                          language = "English", 
                                          stopwordsRemover = stopwordsDefault(), 
                                          case = "lower",
                                          keepDiacritics = FALSE, 
                                          keepPunctuations = FALSE, 
                                          keepNumbers = FALSE,  
                                          wordFeatureExtractor = ngramHash(ngramLength = 2, hashBits = 17, seed = 4),
                                          charFeatureExtractor = ngramHash(ngramLength = 3, hashBits = 17, seed = 4), 
                                          vectorNormalizer = "l2")) 

##########################################################################################################################################
## Train a multiclass logistic regression model. 
##########################################################################################################################################
# Parameters of models have been chosen for illustrative purposes, and can be further optimized.

# Train a logistic regression model. 
logistic_model <- rxLogisticRegression(formula = training_formula,
                                       data = News_Train_sql,
                                       type = "multiClass",
                                       l2Weight = 1, 
                                       l1Weight = 1,
                                       mlTransforms = text_transform_list,
                                       trainThreads = 4)

##########################################################################################################################################
## Save the model to SQL Server. 
##########################################################################################################################################
# Set the compute context back to local for model uploading to SQL Server.
rxSetComputeContext("local")

# Serialize and write the model to SQL Server for future use. This is done by using an Odbc connection.
OdbcModel <- RxOdbcData(table = "Model", connectionString = connection_string)
rxOpen(OdbcModel, "w")
rxWriteObject(OdbcModel, model_key, logistic_model)
rxClose(OdbcModel)
'
, @params = N'@model_key varchar(max) , @server_name varchar(max), @database_name varchar(max)'
, @model_key = @model_key
, @server_name = @server_name
, @database_name = @database_name

;
END
GO
