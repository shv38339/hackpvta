# libraries
library(dplyr); library(ggplot2); library(lubridate)

# NOTE: please change file location to your working directory
#Read in the data
jan15 <- read.csv("~/Documents/UMass/Spring 2016/hackpvta/data/January2015.csv", header=FALSE)
feb15 <- read.csv("~/Documents/UMass/Spring 2016/hackpvta/data/February2015.csv", header=FALSE)
mar15 <- read.csv("~/Documents/UMass/Spring 2016/hackpvta/data/March2015.csv", header=FALSE)
apr15 <- read.csv("~/Documents/UMass/Spring 2016/hackpvta/data/April2015.csv", header=FALSE)
may15 <- read.csv("~/Documents/UMass/Spring 2016/hackpvta/data/May2015.csv", header=FALSE)
jun15 <- read.csv("~/Documents/UMass/Spring 2016/hackpvta/data/June2015.csv", header=FALSE)
jul15 <- read.csv("~/Documents/UMass/Spring 2016/hackpvta/data/July2015.csv", header=FALSE)
aug15 <- read.csv("~/Documents/UMass/Spring 2016/hackpvta/data/August2015.csv", header=FALSE)
sept15 <- read.csv("~//Documents/UMass/Spring 2016/hackpvta/data/September2015.csv", header=FALSE)
oct15 <- read.csv("~/Documents/UMass/Spring 2016/hackpvta/data/October2015.csv", header=FALSE)
nov15 <- read.csv("~/Documents/UMass/Spring 2016/hackpvta/data/November2015.csv", header=FALSE)
dec15 <- read.csv("~/Documents/UMass/Spring 2016/hackpvta/data/December2015.csv", header=FALSE)

#Label Variables
colnames(jan15)<-c("vehicle_id","time","latitude","longitude","speed","direction","OffRouteStatus","CommStatus","operational_status","server_time","route","trip","inbound_outbound","deviation","onboard","vehicle_name","run_id","run_name","stop_name","operator_record_id","route_name","stop_report","scheduled_headway","target_headway","alarm_state","GPSStatus","alights","boards","confidence_level","message_type_id","stop_dwell_time","PTV_health_alert","stop_id","stationary_status","OutOfOrderMessageType","stationary_duration","odometer_value","MDTFlags","v39","v40")
colnames(feb15)<-c("vehicle_id","time","latitude","longitude","speed","direction","OffRouteStatus","CommStatus","operational_status","server_time","route","trip","inbound_outbound","deviation","onboard","vehicle_name","run_id","run_name","stop_name","operator_record_id","route_name","stop_report","scheduled_headway","target_headway","alarm_state","GPSStatus","alights","boards","confidence_level","message_type_id","stop_dwell_time","PTV_health_alert","stop_id","stationary_status","OutOfOrderMessageType","stationary_duration","odometer_value","MDTFlags","v39","v40")
colnames(mar15)<-c("vehicle_id","time","latitude","longitude","speed","direction","OffRouteStatus","CommStatus","operational_status","server_time","route","trip","inbound_outbound","deviation","onboard","vehicle_name","run_id","run_name","stop_name","operator_record_id","route_name","stop_report","scheduled_headway","target_headway","alarm_state","GPSStatus","alights","boards","confidence_level","message_type_id","stop_dwell_time","PTV_health_alert","stop_id","stationary_status","OutOfOrderMessageType","stationary_duration","odometer_value","MDTFlags","v39","v40")
colnames(apr15)<-c("vehicle_id","time","latitude","longitude","speed","direction","OffRouteStatus","CommStatus","operational_status","server_time","route","trip","inbound_outbound","deviation","onboard","vehicle_name","run_id","run_name","stop_name","operator_record_id","route_name","stop_report","scheduled_headway","target_headway","alarm_state","GPSStatus","alights","boards","confidence_level","message_type_id","stop_dwell_time","PTV_health_alert","stop_id","stationary_status","OutOfOrderMessageType","stationary_duration","odometer_value","MDTFlags","v39","v40")
colnames(may15)<-c("vehicle_id","time","latitude","longitude","speed","direction","OffRouteStatus","CommStatus","operational_status","server_time","route","trip","inbound_outbound","deviation","onboard","vehicle_name","run_id","run_name","stop_name","operator_record_id","route_name","stop_report","scheduled_headway","target_headway","alarm_state","GPSStatus","alights","boards","confidence_level","message_type_id","stop_dwell_time","PTV_health_alert","stop_id","stationary_status","OutOfOrderMessageType","stationary_duration","odometer_value","MDTFlags","v39","v40")
colnames(jun15)<-c("vehicle_id","time","latitude","longitude","speed","direction","OffRouteStatus","CommStatus","operational_status","server_time","route","trip","inbound_outbound","deviation","onboard","vehicle_name","run_id","run_name","stop_name","operator_record_id","route_name","stop_report","scheduled_headway","target_headway","alarm_state","GPSStatus","alights","boards","confidence_level","message_type_id","stop_dwell_time","PTV_health_alert","stop_id","stationary_status","OutOfOrderMessageType","stationary_duration","odometer_value","MDTFlags","v39","v40")
colnames(jul15)<-c("vehicle_id","time","latitude","longitude","speed","direction","OffRouteStatus","CommStatus","operational_status","server_time","route","trip","inbound_outbound","deviation","onboard","vehicle_name","run_id","run_name","stop_name","operator_record_id","route_name","stop_report","scheduled_headway","target_headway","alarm_state","GPSStatus","alights","boards","confidence_level","message_type_id","stop_dwell_time","PTV_health_alert","stop_id","stationary_status","OutOfOrderMessageType","stationary_duration","odometer_value","MDTFlags","v39","v40")
colnames(aug15)<-c("vehicle_id","time","latitude","longitude","speed","direction","OffRouteStatus","CommStatus","operational_status","server_time","route","trip","inbound_outbound","deviation","onboard","vehicle_name","run_id","run_name","stop_name","operator_record_id","route_name","stop_report","scheduled_headway","target_headway","alarm_state","GPSStatus","alights","boards","confidence_level","message_type_id","stop_dwell_time","PTV_health_alert","stop_id","stationary_status","OutOfOrderMessageType","stationary_duration","odometer_value","MDTFlags","v39","v40")
colnames(sept15)<-c("vehicle_id","time","latitude","longitude","speed","direction","OffRouteStatus","CommStatus","operational_status","server_time","route","trip","inbound_outbound","deviation","onboard","vehicle_name","run_id","run_name","stop_name","operator_record_id","route_name","stop_report","scheduled_headway","target_headway","alarm_state","GPSStatus","alights","boards","confidence_level","message_type_id","stop_dwell_time","PTV_health_alert","stop_id","stationary_status","OutOfOrderMessageType","stationary_duration","odometer_value","MDTFlags","v39","v40")
colnames(oct15)<-c("vehicle_id","time","latitude","longitude","speed","direction","OffRouteStatus","CommStatus","operational_status","server_time","route","trip","inbound_outbound","deviation","onboard","vehicle_name","run_id","run_name","stop_name","operator_record_id","route_name","stop_report","scheduled_headway","target_headway","alarm_state","GPSStatus","alights","boards","confidence_level","message_type_id","stop_dwell_time","PTV_health_alert","stop_id","stationary_status","OutOfOrderMessageType","stationary_duration","odometer_value","MDTFlags","v39","v40")
colnames(nov15)<-c("vehicle_id","time","latitude","longitude","speed","direction","OffRouteStatus","CommStatus","operational_status","server_time","route","trip","inbound_outbound","deviation","onboard","vehicle_name","run_id","run_name","stop_name","operator_record_id","route_name","stop_report","scheduled_headway","target_headway","alarm_state","GPSStatus","alights","boards","confidence_level","message_type_id","stop_dwell_time","PTV_health_alert","stop_id","stationary_status","OutOfOrderMessageType","stationary_duration","odometer_value","MDTFlags","v39","v40")
colnames(dec15)<-c("vehicle_id","time","latitude","longitude","speed","direction","OffRouteStatus","CommStatus","operational_status","server_time","route","trip","inbound_outbound","deviation","onboard","vehicle_name","run_id","run_name","stop_name","operator_record_id","route_name","stop_report","scheduled_headway","target_headway","alarm_state","GPSStatus","alights","boards","confidence_level","message_type_id","stop_dwell_time","PTV_health_alert","stop_id","stationary_status","OutOfOrderMessageType","stationary_duration","odometer_value","MDTFlags","v39","v40")

# Combine all months. Wham bam thank you mam.
library(dplyr); library(ggplot2)
all.months <- tbl_df(rbind(jan15, feb15, mar15, apr15, may15, jun15, 
                           jul15, aug15, sept15, oct15, nov15, dec15))

# Updated with time; month, day, hour, minute, and seconds, and hour-seconds
library(lubridate)
all.months1 <- mutate(all.months, month = month(time), day = wday(time, label = FALSE),
                      hour = hour(time), minute = minute(time), second = second(time), hm = hour + minute/60)
rm(all.months)
d1 <- all.months1 # shorten the name
rm(all.months1)

# Let's filter the following; routes 30/31, exclude months 6/7/8
d2 <- filter(d1, route_name == "30" | route_name == "31", month != 6 & month != 7 & month != 8)
d2[, 41:46] # THIS WILL BE THE DATA SET WE WORK WITH

# Go to file name "query-viz.R" to proceed

