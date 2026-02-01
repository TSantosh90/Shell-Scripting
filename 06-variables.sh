#!/bin/bash

Start_time=$(date +%s)

echo "Script executed at :$Start_time"

sleep 10

End_time=$(date +%s)

Total_time=(($End_time-$Start_time))

echo " Sript executed in : $Total_time"