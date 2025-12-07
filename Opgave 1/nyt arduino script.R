library(DBI)
library(serial)
library(RMariaDB)
library(stringr)
library(stringi)
library(logr)
library(ggplot2)
library(dplyr)

conarduino <- serialConnection(
  name = "mytest",
  #port = "cu.usbserial-146101",
  port = "COM3",
  mode = "9600,n,8,1",
  newline = 1,
  translation = "cr",
  handshake = "xonxoff",
  buffersize = 4096
)

log_open("log.txt")
open(conarduino)

arduino_obs <- c()
timestamp <- c()

while(TRUE) {
  tmp <- read.serialConnection(conarduino)
  if(length(tmp) > 0) {
    tmp_list <- str_split(tmp, "\n")[[1]]
    cleaned <- str_subset(tmp_list, "^---$", negate = TRUE)
    log_print(cleaned[2])
    Sys.sleep(0.5)
    arduino_obs <- as.numeric(c(arduino_obs, cleaned[2]))
    timestamp <- as.POSIXct(c(timestamp, as.POSIXct(Sys.time(), format="%Y-%m-%dT%H:%M:%OSZ", tz="CET")))
  }
}

df <- data.frame(timestamp, værdi=as.numeric(arduino_obs))
df <- df[1:2069,] #da målinger skulle have stoppet her.

ggplot(df, aes(x = timestamp, y = værdi)) +
  geom_line(size = 1) +
  scale_x_datetime(date_labels = "%H:%M:%S", date_breaks = "60 sec", timezone = "CET")+
  labs(
    title = "Test på trappen til 2. sal",
    x = "Tid",
    y = "Centimeter fra sensor"
  )+
  theme_minimal()+
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1))

df %>% count(værdi<155&værdi>5)


?count


close(conarduino)



