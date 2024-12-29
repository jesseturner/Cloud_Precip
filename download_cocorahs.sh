#! /usr/bin/bash

for date in "12/28/2024";

do

    clean_date="${date//\//}"
    url="https://data.cocorahs.org/export/exportreports.aspx?ReportType=Daily&dtf=1&Format=XML&ReportDateType=reportdate&Date="$date"&TimesInGMT=True"
    echo $url

	wget -O cocorahs/$clean_date $url
    echo "Cocorahs collected for "$date

done