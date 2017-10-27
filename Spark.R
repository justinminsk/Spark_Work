library(sparklyr)

sc <- spark_connect(master = "local")

install.packages(c("nycflights13", "Lahman"))

library(dplyr)

iris_tbl <- copy_to(sc, iris)

flights_tbl <- copy_to(sc, nycflights13::flights, "flights")

batting_tbl <- copy_to(sc, Lahman::Batting, "batting")

src_tbls(sc)
