library(DatabaseConnector)
connectionDetails <-Eunomia::getEunomiaConnectionDetails()
connection <- connect(connectionDetails)
sql <-"SELECT * FROM @cdm.condition_occurrence
LIMIT 1;"
result <- renderTranslateQuerySql(connection, sql,cdm ="main")
