CREATE TABLE sandbox.43342120_titanic (
    PassengerId Int64, 
    Survived Int8, 
    Pclass Int16, 
    Name String, 
    Sex String, 
    Age String, 
    SibSp  Int8, 
    Parch Int32, 
    Ticket String, 
    Fare String, 
    Cabin  String, 
    Embarked  String) 
ENGINE=TinyLog;

INSERT INTO sandbox.43342120_titanic 
SELECT * FROM url(
'https://raw.githubusercontent.com/dmitrii12334/clickhouse/main/titanic', CSVWithNames, 'PassengerId Int64, Survived Int8, Pclass Int16, Name String, Sex String, Age String, SibSp Int8, Parch Int32, Ticket String, Fare String, Cabin  String, Embarked  String'
);

CREATE TABLE sandbox.43342120_video_game_sales (
    Rank UInt32,
    Name String,
    Platform String,
    Year String,
    Genre String,
    Publisher String,
    NA_Sales Float32,
    EU_Sales Float32,
    JP_Sales Float32,
    Other_Sales Float32,
    Global_Sales Float32
) ENGINE = Log;

INSERT INTO sandbox.43342120_video_game_sales SELECT * FROM url('https://raw.githubusercontent.com/dmitrii12334/clickhouse/main/vgsale', CSVWithNames, 'Rank UInt32,
    Name String,
    Platform String,
    Year String,
    Genre String,
    Publisher String,
    NA_Sales Float32,
    EU_Sales Float32,
    JP_Sales Float32,
    Other_Sales Float32,
    Global_Sales Float32');