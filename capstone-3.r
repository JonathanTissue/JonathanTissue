{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "0970eccc",
   "metadata": {
    "papermill": {
     "duration": 0.00957,
     "end_time": "2023-08-15T17:46:38.674860",
     "exception": false,
     "start_time": "2023-08-15T17:46:38.665290",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Install the necessary packages"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "93fb3741",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:46:38.696582Z",
     "iopub.status.busy": "2023-08-15T17:46:38.693984Z",
     "iopub.status.idle": "2023-08-15T17:47:36.890341Z",
     "shell.execute_reply": "2023-08-15T17:47:36.888108Z"
    },
    "papermill": {
     "duration": 58.211108,
     "end_time": "2023-08-15T17:47:36.894426",
     "exception": false,
     "start_time": "2023-08-15T17:46:38.683318",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    }
   ],
   "source": [
    "install.packages(\"tidyverse\")\n",
    "install.packages(\"lubridate\")\n",
    "install.packages(\"ggplot2\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "a44ee050",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:47:36.947294Z",
     "iopub.status.busy": "2023-08-15T17:47:36.915443Z",
     "iopub.status.idle": "2023-08-15T17:47:37.653898Z",
     "shell.execute_reply": "2023-08-15T17:47:37.651849Z"
    },
    "papermill": {
     "duration": 0.751266,
     "end_time": "2023-08-15T17:47:37.656374",
     "exception": false,
     "start_time": "2023-08-15T17:47:36.905108",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching core tidyverse packages\u001b[22m ──────────────────────── tidyverse 2.0.0 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mdplyr    \u001b[39m 1.1.2     \u001b[32m✔\u001b[39m \u001b[34mreadr    \u001b[39m 2.1.4\n",
      "\u001b[32m✔\u001b[39m \u001b[34mforcats  \u001b[39m 1.0.0     \u001b[32m✔\u001b[39m \u001b[34mstringr  \u001b[39m 1.5.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2  \u001b[39m 3.4.3     \u001b[32m✔\u001b[39m \u001b[34mtibble   \u001b[39m 3.2.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mlubridate\u001b[39m 1.9.2     \u001b[32m✔\u001b[39m \u001b[34mtidyr    \u001b[39m 1.3.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mpurrr    \u001b[39m 1.0.1     \n",
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[36mℹ\u001b[39m Use the conflicted package (\u001b[3m\u001b[34m<http://conflicted.r-lib.org/>\u001b[39m\u001b[23m) to force all conflicts to become errors\n"
     ]
    }
   ],
   "source": [
    "library(tidyverse)\n",
    "library(lubridate)\n",
    "library(ggplot2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "8a558894",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:47:37.677307Z",
     "iopub.status.busy": "2023-08-15T17:47:37.675058Z",
     "iopub.status.idle": "2023-08-15T17:47:37.696681Z",
     "shell.execute_reply": "2023-08-15T17:47:37.694827Z"
    },
    "papermill": {
     "duration": 0.034616,
     "end_time": "2023-08-15T17:47:37.699364",
     "exception": false,
     "start_time": "2023-08-15T17:47:37.664748",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "'/kaggle/working'"
      ],
      "text/latex": [
       "'/kaggle/working'"
      ],
      "text/markdown": [
       "'/kaggle/working'"
      ],
      "text/plain": [
       "[1] \"/kaggle/working\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "getwd()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "26668176",
   "metadata": {
    "papermill": {
     "duration": 0.009013,
     "end_time": "2023-08-15T17:47:37.717128",
     "exception": false,
     "start_time": "2023-08-15T17:47:37.708115",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Upload data"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "7ae93d52",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:47:37.738019Z",
     "iopub.status.busy": "2023-08-15T17:47:37.736336Z",
     "iopub.status.idle": "2023-08-15T17:48:10.445117Z",
     "shell.execute_reply": "2023-08-15T17:48:10.443256Z"
    },
    "papermill": {
     "duration": 32.722379,
     "end_time": "2023-08-15T17:48:10.447952",
     "exception": false,
     "start_time": "2023-08-15T17:47:37.725573",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1mRows: \u001b[22m\u001b[34m371249\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m634858\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m769204\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m823488\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m785932\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m701339\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m558685\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m337735\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m181806\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m190301\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m190445\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m258678\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m13\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (7): ride_id, rideable_type, start_station_name, start_station_id, end_...\n",
      "\u001b[32mdbl\u001b[39m  (4): start_lat, start_lng, end_lat, end_lng\n",
      "\u001b[34mdttm\u001b[39m (2): started_at, ended_at\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n"
     ]
    }
   ],
   "source": [
    "Apr_2022 <- read_csv(\"/kaggle/input/capstonecyclisttripdata/202204-divvy-tripdata.csv\")\n",
    "May_2022 <- read_csv(\"/kaggle/input/capstonecyclisttripdata/202205-divvy-tripdata.csv\")\n",
    "Jun_2022 <- read_csv(\"/kaggle/input/capstonecyclisttripdata/202206-divvy-tripdata.csv\")\n",
    "Jul_2022 <- read_csv(\"/kaggle/input/capstonecyclisttripdata/202207-divvy-tripdata.csv\")\n",
    "Aug_2022 <- read_csv(\"/kaggle/input/capstonecyclisttripdata/202208-divvy-tripdata.csv\")\n",
    "Sep_2022 <- read_csv(\"/kaggle/input/capstonecyclisttripdata/202209-divvy-publictripdata.csv\")\n",
    "Oct_2022 <- read_csv(\"/kaggle/input/capstonecyclisttripdata/202210-divvy-tripdata.csv\")\n",
    "Nov_2022 <- read_csv(\"/kaggle/input/capstonecyclisttripdata/202211-divvy-tripdata.csv\")\n",
    "Dec_2022 <- read_csv(\"/kaggle/input/capstonecyclisttripdata/202212-divvy-tripdata.csv\")\n",
    "Jan_2023 <- read_csv(\"/kaggle/input/capstonecyclisttripdata/202301-divvy-tripdata.csv\")\n",
    "Feb_2023 <- read_csv(\"/kaggle/input/capstonecyclisttripdata/202302-divvy-tripdata.csv\")\n",
    "Mar_2023 <- read_csv(\"/kaggle/input/capstonecyclisttripdata/202303-divvy-tripdata.csv\")\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0281dc50",
   "metadata": {
    "papermill": {
     "duration": 0.011505,
     "end_time": "2023-08-15T17:48:10.471130",
     "exception": false,
     "start_time": "2023-08-15T17:48:10.459625",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Check column names using colnames function to ensure consistency before merging files"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "8e0e34bc",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:48:10.497462Z",
     "iopub.status.busy": "2023-08-15T17:48:10.495293Z",
     "iopub.status.idle": "2023-08-15T17:48:10.593460Z",
     "shell.execute_reply": "2023-08-15T17:48:10.590871Z"
    },
    "papermill": {
     "duration": 0.114336,
     "end_time": "2023-08-15T17:48:10.596468",
     "exception": false,
     "start_time": "2023-08-15T17:48:10.482132",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "colnames(Apr_2022)\n",
    "colnames(May_2022)\n",
    "colnames(Jun_2022)\n",
    "colnames(Jul_2022)\n",
    "colnames(Aug_2022)\n",
    "colnames(Sep_2022)\n",
    "colnames(Oct_2022)\n",
    "colnames(Nov_2022)\n",
    "colnames(Dec_2022)\n",
    "colnames(Jan_2023)\n",
    "colnames(Feb_2023)\n",
    "colnames(Mar_2023)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "417e1cfc",
   "metadata": {
    "papermill": {
     "duration": 0.01285,
     "end_time": "2023-08-15T17:48:10.622287",
     "exception": false,
     "start_time": "2023-08-15T17:48:10.609437",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Combine data into one file for analysis"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "4266d45e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:48:10.651901Z",
     "iopub.status.busy": "2023-08-15T17:48:10.649943Z",
     "iopub.status.idle": "2023-08-15T17:48:17.750221Z",
     "shell.execute_reply": "2023-08-15T17:48:17.748313Z"
    },
    "papermill": {
     "duration": 7.117839,
     "end_time": "2023-08-15T17:48:17.752812",
     "exception": false,
     "start_time": "2023-08-15T17:48:10.634973",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "all_trips <- bind_rows(Apr_2022,May_2022,Jun_2022,Jul_2022,Aug_2022,Sep_2022,Oct_2022,Nov_2022,Dec_2022,Jan_2023,Feb_2023,Mar_2023)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "77290014",
   "metadata": {
    "papermill": {
     "duration": 0.012855,
     "end_time": "2023-08-15T17:48:17.778536",
     "exception": false,
     "start_time": "2023-08-15T17:48:17.765681",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Examine the new table (all_trips)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "82296274",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:48:17.807960Z",
     "iopub.status.busy": "2023-08-15T17:48:17.806308Z",
     "iopub.status.idle": "2023-08-15T17:48:22.537230Z",
     "shell.execute_reply": "2023-08-15T17:48:22.535472Z"
    },
    "papermill": {
     "duration": 4.748483,
     "end_time": "2023-08-15T17:48:22.539826",
     "exception": false,
     "start_time": "2023-08-15T17:48:17.791343",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "5803720"
      ],
      "text/latex": [
       "5803720"
      ],
      "text/markdown": [
       "5803720"
      ],
      "text/plain": [
       "[1] 5803720"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>5803720</li><li>13</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 5803720\n",
       "\\item 13\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 5803720\n",
       "2. 13\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 5803720      13"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 13</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>ride_id</th><th scope=col>rideable_type</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>start_station_id</th><th scope=col>end_station_name</th><th scope=col>end_station_id</th><th scope=col>start_lat</th><th scope=col>start_lng</th><th scope=col>end_lat</th><th scope=col>end_lng</th><th scope=col>member_casual</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>3564070EEFD12711</td><td>electric_bike</td><td>2022-04-06 17:42:48</td><td>2022-04-06 17:54:36</td><td><span style=white-space:pre-wrap>Paulina St &amp; Howard St     </span></td><td><span style=white-space:pre-wrap>515         </span></td><td>University Library (NU) </td><td><span style=white-space:pre-wrap>605         </span></td><td>42.01913</td><td>-87.67353</td><td>42.05294</td><td>-87.67345</td><td>member</td></tr>\n",
       "\t<tr><td>0B820C7FCF22F489</td><td>classic_bike </td><td>2022-04-24 19:23:07</td><td>2022-04-24 19:43:17</td><td><span style=white-space:pre-wrap>Wentworth Ave &amp; Cermak Rd  </span></td><td><span style=white-space:pre-wrap>13075       </span></td><td><span style=white-space:pre-wrap>Green St &amp; Madison St   </span></td><td>TA1307000120</td><td>41.85308</td><td>-87.63193</td><td>41.88189</td><td>-87.64879</td><td>member</td></tr>\n",
       "\t<tr><td>89EEEE32293F07FF</td><td>classic_bike </td><td>2022-04-20 19:29:08</td><td>2022-04-20 19:35:16</td><td><span style=white-space:pre-wrap>Halsted St &amp; Polk St       </span></td><td>TA1307000121</td><td><span style=white-space:pre-wrap>Green St &amp; Madison St   </span></td><td>TA1307000120</td><td>41.87184</td><td>-87.64664</td><td>41.88189</td><td>-87.64879</td><td>member</td></tr>\n",
       "\t<tr><td>84D4751AEB31888D</td><td>classic_bike </td><td>2022-04-22 21:14:06</td><td>2022-04-22 21:23:29</td><td><span style=white-space:pre-wrap>Wentworth Ave &amp; Cermak Rd  </span></td><td><span style=white-space:pre-wrap>13075       </span></td><td>Delano Ct &amp; Roosevelt Rd</td><td>KA1706005007</td><td>41.85308</td><td>-87.63193</td><td>41.86749</td><td>-87.63219</td><td>casual</td></tr>\n",
       "\t<tr><td>5664BCF0D1DE7A8B</td><td>electric_bike</td><td>2022-04-16 15:56:30</td><td>2022-04-16 16:02:11</td><td><span style=white-space:pre-wrap>Halsted St &amp; Polk St       </span></td><td>TA1307000121</td><td>Clinton St &amp; Madison St </td><td>TA1305000032</td><td>41.87181</td><td>-87.64657</td><td>41.88224</td><td>-87.64107</td><td>member</td></tr>\n",
       "\t<tr><td>AA9EB7BD2E1FC128</td><td>classic_bike </td><td>2022-04-21 16:52:33</td><td>2022-04-21 16:56:51</td><td>Desplaines St &amp; Randolph St</td><td><span style=white-space:pre-wrap>15535       </span></td><td><span style=white-space:pre-wrap>Canal St &amp; Adams St     </span></td><td><span style=white-space:pre-wrap>13011       </span></td><td>41.88462</td><td>-87.64457</td><td>41.87926</td><td>-87.63990</td><td>member</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 13\n",
       "\\begin{tabular}{lllllllllllll}\n",
       " ride\\_id & rideable\\_type & started\\_at & ended\\_at & start\\_station\\_name & start\\_station\\_id & end\\_station\\_name & end\\_station\\_id & start\\_lat & start\\_lng & end\\_lat & end\\_lng & member\\_casual\\\\\n",
       " <chr> & <chr> & <dttm> & <dttm> & <chr> & <chr> & <chr> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t 3564070EEFD12711 & electric\\_bike & 2022-04-06 17:42:48 & 2022-04-06 17:54:36 & Paulina St \\& Howard St      & 515          & University Library (NU)  & 605          & 42.01913 & -87.67353 & 42.05294 & -87.67345 & member\\\\\n",
       "\t 0B820C7FCF22F489 & classic\\_bike  & 2022-04-24 19:23:07 & 2022-04-24 19:43:17 & Wentworth Ave \\& Cermak Rd   & 13075        & Green St \\& Madison St    & TA1307000120 & 41.85308 & -87.63193 & 41.88189 & -87.64879 & member\\\\\n",
       "\t 89EEEE32293F07FF & classic\\_bike  & 2022-04-20 19:29:08 & 2022-04-20 19:35:16 & Halsted St \\& Polk St        & TA1307000121 & Green St \\& Madison St    & TA1307000120 & 41.87184 & -87.64664 & 41.88189 & -87.64879 & member\\\\\n",
       "\t 84D4751AEB31888D & classic\\_bike  & 2022-04-22 21:14:06 & 2022-04-22 21:23:29 & Wentworth Ave \\& Cermak Rd   & 13075        & Delano Ct \\& Roosevelt Rd & KA1706005007 & 41.85308 & -87.63193 & 41.86749 & -87.63219 & casual\\\\\n",
       "\t 5664BCF0D1DE7A8B & electric\\_bike & 2022-04-16 15:56:30 & 2022-04-16 16:02:11 & Halsted St \\& Polk St        & TA1307000121 & Clinton St \\& Madison St  & TA1305000032 & 41.87181 & -87.64657 & 41.88224 & -87.64107 & member\\\\\n",
       "\t AA9EB7BD2E1FC128 & classic\\_bike  & 2022-04-21 16:52:33 & 2022-04-21 16:56:51 & Desplaines St \\& Randolph St & 15535        & Canal St \\& Adams St      & 13011        & 41.88462 & -87.64457 & 41.87926 & -87.63990 & member\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 13\n",
       "\n",
       "| ride_id &lt;chr&gt; | rideable_type &lt;chr&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | start_station_name &lt;chr&gt; | start_station_id &lt;chr&gt; | end_station_name &lt;chr&gt; | end_station_id &lt;chr&gt; | start_lat &lt;dbl&gt; | start_lng &lt;dbl&gt; | end_lat &lt;dbl&gt; | end_lng &lt;dbl&gt; | member_casual &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 3564070EEFD12711 | electric_bike | 2022-04-06 17:42:48 | 2022-04-06 17:54:36 | Paulina St &amp; Howard St      | 515          | University Library (NU)  | 605          | 42.01913 | -87.67353 | 42.05294 | -87.67345 | member |\n",
       "| 0B820C7FCF22F489 | classic_bike  | 2022-04-24 19:23:07 | 2022-04-24 19:43:17 | Wentworth Ave &amp; Cermak Rd   | 13075        | Green St &amp; Madison St    | TA1307000120 | 41.85308 | -87.63193 | 41.88189 | -87.64879 | member |\n",
       "| 89EEEE32293F07FF | classic_bike  | 2022-04-20 19:29:08 | 2022-04-20 19:35:16 | Halsted St &amp; Polk St        | TA1307000121 | Green St &amp; Madison St    | TA1307000120 | 41.87184 | -87.64664 | 41.88189 | -87.64879 | member |\n",
       "| 84D4751AEB31888D | classic_bike  | 2022-04-22 21:14:06 | 2022-04-22 21:23:29 | Wentworth Ave &amp; Cermak Rd   | 13075        | Delano Ct &amp; Roosevelt Rd | KA1706005007 | 41.85308 | -87.63193 | 41.86749 | -87.63219 | casual |\n",
       "| 5664BCF0D1DE7A8B | electric_bike | 2022-04-16 15:56:30 | 2022-04-16 16:02:11 | Halsted St &amp; Polk St        | TA1307000121 | Clinton St &amp; Madison St  | TA1305000032 | 41.87181 | -87.64657 | 41.88224 | -87.64107 | member |\n",
       "| AA9EB7BD2E1FC128 | classic_bike  | 2022-04-21 16:52:33 | 2022-04-21 16:56:51 | Desplaines St &amp; Randolph St | 15535        | Canal St &amp; Adams St      | 13011        | 41.88462 | -87.64457 | 41.87926 | -87.63990 | member |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id          rideable_type started_at          ended_at           \n",
       "1 3564070EEFD12711 electric_bike 2022-04-06 17:42:48 2022-04-06 17:54:36\n",
       "2 0B820C7FCF22F489 classic_bike  2022-04-24 19:23:07 2022-04-24 19:43:17\n",
       "3 89EEEE32293F07FF classic_bike  2022-04-20 19:29:08 2022-04-20 19:35:16\n",
       "4 84D4751AEB31888D classic_bike  2022-04-22 21:14:06 2022-04-22 21:23:29\n",
       "5 5664BCF0D1DE7A8B electric_bike 2022-04-16 15:56:30 2022-04-16 16:02:11\n",
       "6 AA9EB7BD2E1FC128 classic_bike  2022-04-21 16:52:33 2022-04-21 16:56:51\n",
       "  start_station_name          start_station_id end_station_name        \n",
       "1 Paulina St & Howard St      515              University Library (NU) \n",
       "2 Wentworth Ave & Cermak Rd   13075            Green St & Madison St   \n",
       "3 Halsted St & Polk St        TA1307000121     Green St & Madison St   \n",
       "4 Wentworth Ave & Cermak Rd   13075            Delano Ct & Roosevelt Rd\n",
       "5 Halsted St & Polk St        TA1307000121     Clinton St & Madison St \n",
       "6 Desplaines St & Randolph St 15535            Canal St & Adams St     \n",
       "  end_station_id start_lat start_lng end_lat  end_lng   member_casual\n",
       "1 605            42.01913  -87.67353 42.05294 -87.67345 member       \n",
       "2 TA1307000120   41.85308  -87.63193 41.88189 -87.64879 member       \n",
       "3 TA1307000120   41.87184  -87.64664 41.88189 -87.64879 member       \n",
       "4 KA1706005007   41.85308  -87.63193 41.86749 -87.63219 casual       \n",
       "5 TA1305000032   41.87181  -87.64657 41.88224 -87.64107 member       \n",
       "6 13011          41.88462  -87.64457 41.87926 -87.63990 member       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "spc_tbl_ [5,803,720 × 13] (S3: spec_tbl_df/tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:5803720] \"3564070EEFD12711\" \"0B820C7FCF22F489\" \"89EEEE32293F07FF\" \"84D4751AEB31888D\" ...\n",
      " $ rideable_type     : chr [1:5803720] \"electric_bike\" \"classic_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : POSIXct[1:5803720], format: \"2022-04-06 17:42:48\" \"2022-04-24 19:23:07\" ...\n",
      " $ ended_at          : POSIXct[1:5803720], format: \"2022-04-06 17:54:36\" \"2022-04-24 19:43:17\" ...\n",
      " $ start_station_name: chr [1:5803720] \"Paulina St & Howard St\" \"Wentworth Ave & Cermak Rd\" \"Halsted St & Polk St\" \"Wentworth Ave & Cermak Rd\" ...\n",
      " $ start_station_id  : chr [1:5803720] \"515\" \"13075\" \"TA1307000121\" \"13075\" ...\n",
      " $ end_station_name  : chr [1:5803720] \"University Library (NU)\" \"Green St & Madison St\" \"Green St & Madison St\" \"Delano Ct & Roosevelt Rd\" ...\n",
      " $ end_station_id    : chr [1:5803720] \"605\" \"TA1307000120\" \"TA1307000120\" \"KA1706005007\" ...\n",
      " $ start_lat         : num [1:5803720] 42 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num [1:5803720] -87.7 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ end_lat           : num [1:5803720] 42.1 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num [1:5803720] -87.7 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ member_casual     : chr [1:5803720] \"member\" \"member\" \"member\" \"casual\" ...\n",
      " - attr(*, \"spec\")=\n",
      "  .. cols(\n",
      "  ..   ride_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   rideable_type = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   started_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   ended_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   start_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   start_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   member_casual = \u001b[31mcol_character()\u001b[39m\n",
      "  .. )\n",
      " - attr(*, \"problems\")=<externalptr> \n"
     ]
    },
    {
     "data": {
      "text/plain": [
       "   ride_id          rideable_type        started_at                 \n",
       " Length:5803720     Length:5803720     Min.   :2022-04-01 00:01:48  \n",
       " Class :character   Class :character   1st Qu.:2022-06-18 23:27:00  \n",
       " Mode  :character   Mode  :character   Median :2022-08-13 11:37:32  \n",
       "                                       Mean   :2022-08-25 07:04:55  \n",
       "                                       3rd Qu.:2022-10-14 18:04:21  \n",
       "                                       Max.   :2023-03-31 23:59:28  \n",
       "                                                                    \n",
       "    ended_at                   start_station_name start_station_id  \n",
       " Min.   :2022-04-01 00:02:15   Length:5803720     Length:5803720    \n",
       " 1st Qu.:2022-06-18 23:51:55   Class :character   Class :character  \n",
       " Median :2022-08-13 12:00:07   Mode  :character   Mode  :character  \n",
       " Mean   :2022-08-25 07:23:54                                        \n",
       " 3rd Qu.:2022-10-14 18:19:10                                        \n",
       " Max.   :2023-04-03 11:41:11                                        \n",
       "                                                                    \n",
       " end_station_name   end_station_id       start_lat       start_lng     \n",
       " Length:5803720     Length:5803720     Min.   :41.64   Min.   :-87.84  \n",
       " Class :character   Class :character   1st Qu.:41.88   1st Qu.:-87.66  \n",
       " Mode  :character   Mode  :character   Median :41.90   Median :-87.64  \n",
       "                                       Mean   :41.90   Mean   :-87.65  \n",
       "                                       3rd Qu.:41.93   3rd Qu.:-87.63  \n",
       "                                       Max.   :42.07   Max.   :-87.52  \n",
       "                                                                       \n",
       "    end_lat         end_lng       member_casual     \n",
       " Min.   : 0.00   Min.   :-88.14   Length:5803720    \n",
       " 1st Qu.:41.88   1st Qu.:-87.66   Class :character  \n",
       " Median :41.90   Median :-87.64   Mode  :character  \n",
       " Mean   :41.90   Mean   :-87.65                     \n",
       " 3rd Qu.:41.93   3rd Qu.:-87.63                     \n",
       " Max.   :42.37   Max.   :  0.00                     \n",
       " NA's   :5855    NA's   :5855                       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "colnames(all_trips)  #List of column names\n",
    "nrow(all_trips)  #How many rows are in data frame?\n",
    "dim(all_trips)  #Dimensions of the data frame?\n",
    "head(all_trips)  #See the first 6 rows of data frame.  Also tail(all_trips)\n",
    "str(all_trips)  #See list of columns and data types (numeric, character, etc)\n",
    "summary(all_trips)  #Statistical summary of data. Mainly fo"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "32bf5375",
   "metadata": {
    "papermill": {
     "duration": 0.013862,
     "end_time": "2023-08-15T17:48:22.567579",
     "exception": false,
     "start_time": "2023-08-15T17:48:22.553717",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Currently, the data can only be aggregated at the ride-level, which is too granular.  Adding additional columns will create more options for aggregation."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "58d47b39",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:48:22.599061Z",
     "iopub.status.busy": "2023-08-15T17:48:22.597459Z",
     "iopub.status.idle": "2023-08-15T17:48:35.776092Z",
     "shell.execute_reply": "2023-08-15T17:48:35.774179Z"
    },
    "papermill": {
     "duration": 13.19724,
     "end_time": "2023-08-15T17:48:35.778754",
     "exception": false,
     "start_time": "2023-08-15T17:48:22.581514",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# Add columns that list the date, month, day, and year of each ride\n",
    "# This will allow us to aggregate ride data for each month, day, or year ... before completing these operations we could only aggregate at the ride level\n",
    "# https://www.statmethods.net/input/dates.html more on date formats in R found at that link\n",
    "all_trips$date <- as.Date(all_trips$started_at) #The default format is yyyy-mm-dd\n",
    "all_trips$month <- format(as.Date(all_trips$date), \"%m\")\n",
    "all_trips$day <- format(as.Date(all_trips$date), \"%d\")\n",
    "all_trips$year <- format(as.Date(all_trips$date), \"%Y\")\n",
    "all_trips$day_of_week <- format(as.Date(all_trips$date), \"%A\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4e648bbf",
   "metadata": {
    "papermill": {
     "duration": 0.014095,
     "end_time": "2023-08-15T17:48:35.807411",
     "exception": false,
     "start_time": "2023-08-15T17:48:35.793316",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Add a \"ride_length\" calculation to all_trips (in seconds)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "7636ca85",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:48:35.838768Z",
     "iopub.status.busy": "2023-08-15T17:48:35.837181Z",
     "iopub.status.idle": "2023-08-15T17:48:35.895529Z",
     "shell.execute_reply": "2023-08-15T17:48:35.893670Z"
    },
    "papermill": {
     "duration": 0.076986,
     "end_time": "2023-08-15T17:48:35.898179",
     "exception": false,
     "start_time": "2023-08-15T17:48:35.821193",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "all_trips$ride_length <- difftime(all_trips$ended_at,all_trips$started_at)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8125361c",
   "metadata": {
    "papermill": {
     "duration": 0.013492,
     "end_time": "2023-08-15T17:48:35.925262",
     "exception": false,
     "start_time": "2023-08-15T17:48:35.911770",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Inspect the structure of the new columns to ensure everything was formatted correctly"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "d6e56870",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:48:35.956251Z",
     "iopub.status.busy": "2023-08-15T17:48:35.954684Z",
     "iopub.status.idle": "2023-08-15T17:48:36.012647Z",
     "shell.execute_reply": "2023-08-15T17:48:36.010313Z"
    },
    "papermill": {
     "duration": 0.076907,
     "end_time": "2023-08-15T17:48:36.015752",
     "exception": false,
     "start_time": "2023-08-15T17:48:35.938845",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "spc_tbl_ [5,803,720 × 19] (S3: spec_tbl_df/tbl_df/tbl/data.frame)\n",
      " $ ride_id           : chr [1:5803720] \"3564070EEFD12711\" \"0B820C7FCF22F489\" \"89EEEE32293F07FF\" \"84D4751AEB31888D\" ...\n",
      " $ rideable_type     : chr [1:5803720] \"electric_bike\" \"classic_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : POSIXct[1:5803720], format: \"2022-04-06 17:42:48\" \"2022-04-24 19:23:07\" ...\n",
      " $ ended_at          : POSIXct[1:5803720], format: \"2022-04-06 17:54:36\" \"2022-04-24 19:43:17\" ...\n",
      " $ start_station_name: chr [1:5803720] \"Paulina St & Howard St\" \"Wentworth Ave & Cermak Rd\" \"Halsted St & Polk St\" \"Wentworth Ave & Cermak Rd\" ...\n",
      " $ start_station_id  : chr [1:5803720] \"515\" \"13075\" \"TA1307000121\" \"13075\" ...\n",
      " $ end_station_name  : chr [1:5803720] \"University Library (NU)\" \"Green St & Madison St\" \"Green St & Madison St\" \"Delano Ct & Roosevelt Rd\" ...\n",
      " $ end_station_id    : chr [1:5803720] \"605\" \"TA1307000120\" \"TA1307000120\" \"KA1706005007\" ...\n",
      " $ start_lat         : num [1:5803720] 42 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num [1:5803720] -87.7 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ end_lat           : num [1:5803720] 42.1 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num [1:5803720] -87.7 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ member_casual     : chr [1:5803720] \"member\" \"member\" \"member\" \"casual\" ...\n",
      " $ date              : Date[1:5803720], format: \"2022-04-06\" \"2022-04-24\" ...\n",
      " $ month             : chr [1:5803720] \"04\" \"04\" \"04\" \"04\" ...\n",
      " $ day               : chr [1:5803720] \"06\" \"24\" \"20\" \"22\" ...\n",
      " $ year              : chr [1:5803720] \"2022\" \"2022\" \"2022\" \"2022\" ...\n",
      " $ day_of_week       : chr [1:5803720] \"Wednesday\" \"Sunday\" \"Wednesday\" \"Friday\" ...\n",
      " $ ride_length       : 'difftime' num [1:5803720] 708 1210 368 563 ...\n",
      "  ..- attr(*, \"units\")= chr \"secs\"\n",
      " - attr(*, \"spec\")=\n",
      "  .. cols(\n",
      "  ..   ride_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   rideable_type = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   started_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   ended_at = \u001b[34mcol_datetime(format = \"\")\u001b[39m,\n",
      "  ..   start_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_name = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   end_station_id = \u001b[31mcol_character()\u001b[39m,\n",
      "  ..   start_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   start_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lat = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   end_lng = \u001b[32mcol_double()\u001b[39m,\n",
      "  ..   member_casual = \u001b[31mcol_character()\u001b[39m\n",
      "  .. )\n",
      " - attr(*, \"problems\")=<externalptr> \n"
     ]
    }
   ],
   "source": [
    "str(all_trips)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1b077006",
   "metadata": {
    "papermill": {
     "duration": 0.014067,
     "end_time": "2023-08-15T17:48:36.043590",
     "exception": false,
     "start_time": "2023-08-15T17:48:36.029523",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Convert \"ride_length\" from Factor to numeric so we can run calculations on the data"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "79b241df",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:48:36.075819Z",
     "iopub.status.busy": "2023-08-15T17:48:36.074188Z",
     "iopub.status.idle": "2023-08-15T17:48:43.169495Z",
     "shell.execute_reply": "2023-08-15T17:48:43.167136Z"
    },
    "papermill": {
     "duration": 7.115066,
     "end_time": "2023-08-15T17:48:43.173289",
     "exception": false,
     "start_time": "2023-08-15T17:48:36.058223",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "FALSE"
      ],
      "text/latex": [
       "FALSE"
      ],
      "text/markdown": [
       "FALSE"
      ],
      "text/plain": [
       "[1] FALSE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "is.factor(all_trips$ride_length)\n",
    "all_trips$ride_length <- as.numeric(as.character(all_trips$ride_length))\n",
    "is.numeric(all_trips$ride_length)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "48c63c13",
   "metadata": {
    "papermill": {
     "duration": 0.014914,
     "end_time": "2023-08-15T17:48:43.202385",
     "exception": false,
     "start_time": "2023-08-15T17:48:43.187471",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Remove \"bad\" data\n",
    "\n",
    "Remove all rides with length values of less than 60 seconds, or greater than 24 hours.  Such values are likely invalid, and may represent bikes being removed for maintenance, errors in data entry, etc."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "5e3a941c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:48:43.235334Z",
     "iopub.status.busy": "2023-08-15T17:48:43.233604Z",
     "iopub.status.idle": "2023-08-15T17:48:49.583766Z",
     "shell.execute_reply": "2023-08-15T17:48:49.581885Z"
    },
    "papermill": {
     "duration": 6.369301,
     "end_time": "2023-08-15T17:48:49.586409",
     "exception": false,
     "start_time": "2023-08-15T17:48:43.217108",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "all_trips_clean <- all_trips %>%\n",
    "        filter(!(ride_length<60)) %>%\n",
    "        filter(!(ride_length>86400))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0ac33f44",
   "metadata": {
    "papermill": {
     "duration": 0.01419,
     "end_time": "2023-08-15T17:48:49.615277",
     "exception": false,
     "start_time": "2023-08-15T17:48:49.601087",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Conduct descriptive analysis on ride length"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "8cb787dd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:48:49.647346Z",
     "iopub.status.busy": "2023-08-15T17:48:49.645721Z",
     "iopub.status.idle": "2023-08-15T17:48:52.400074Z",
     "shell.execute_reply": "2023-08-15T17:48:52.398215Z"
    },
    "papermill": {
     "duration": 2.773085,
     "end_time": "2023-08-15T17:48:52.402563",
     "exception": false,
     "start_time": "2023-08-15T17:48:49.629478",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. \n",
       "   60.0   356.0   616.0   975.2  1096.0 86396.0 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "summary(all_trips_clean$ride_length)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5c4ed812",
   "metadata": {
    "papermill": {
     "duration": 0.014318,
     "end_time": "2023-08-15T17:48:52.431153",
     "exception": false,
     "start_time": "2023-08-15T17:48:52.416835",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Compare members and casual users with regard to ride length"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "af696422",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:48:52.464039Z",
     "iopub.status.busy": "2023-08-15T17:48:52.462356Z",
     "iopub.status.idle": "2023-08-15T17:49:06.329082Z",
     "shell.execute_reply": "2023-08-15T17:49:06.327339Z"
    },
    "papermill": {
     "duration": 13.886389,
     "end_time": "2023-08-15T17:49:06.331830",
     "exception": false,
     "start_time": "2023-08-15T17:48:52.445441",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>all_trips_clean$member_casual</th><th scope=col>all_trips_clean$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>1311.364</td></tr>\n",
       "\t<tr><td>member</td><td> 748.353</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " all\\_trips\\_clean\\$member\\_casual & all\\_trips\\_clean\\$ride\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 1311.364\\\\\n",
       "\t member &  748.353\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| all_trips_clean$member_casual &lt;chr&gt; | all_trips_clean$ride_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 1311.364 |\n",
       "| member |  748.353 |\n",
       "\n"
      ],
      "text/plain": [
       "  all_trips_clean$member_casual all_trips_clean$ride_length\n",
       "1 casual                        1311.364                   \n",
       "2 member                         748.353                   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>all_trips_clean$member_casual</th><th scope=col>all_trips_clean$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>776</td></tr>\n",
       "\t<tr><td>member</td><td>533</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " all\\_trips\\_clean\\$member\\_casual & all\\_trips\\_clean\\$ride\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 776\\\\\n",
       "\t member & 533\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| all_trips_clean$member_casual &lt;chr&gt; | all_trips_clean$ride_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 776 |\n",
       "| member | 533 |\n",
       "\n"
      ],
      "text/plain": [
       "  all_trips_clean$member_casual all_trips_clean$ride_length\n",
       "1 casual                        776                        \n",
       "2 member                        533                        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>all_trips_clean$member_casual</th><th scope=col>all_trips_clean$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>86396</td></tr>\n",
       "\t<tr><td>member</td><td>86390</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " all\\_trips\\_clean\\$member\\_casual & all\\_trips\\_clean\\$ride\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 86396\\\\\n",
       "\t member & 86390\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| all_trips_clean$member_casual &lt;chr&gt; | all_trips_clean$ride_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 86396 |\n",
       "| member | 86390 |\n",
       "\n"
      ],
      "text/plain": [
       "  all_trips_clean$member_casual all_trips_clean$ride_length\n",
       "1 casual                        86396                      \n",
       "2 member                        86390                      "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>all_trips_clean$member_casual</th><th scope=col>all_trips_clean$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>60</td></tr>\n",
       "\t<tr><td>member</td><td>60</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " all\\_trips\\_clean\\$member\\_casual & all\\_trips\\_clean\\$ride\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 60\\\\\n",
       "\t member & 60\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| all_trips_clean$member_casual &lt;chr&gt; | all_trips_clean$ride_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 60 |\n",
       "| member | 60 |\n",
       "\n"
      ],
      "text/plain": [
       "  all_trips_clean$member_casual all_trips_clean$ride_length\n",
       "1 casual                        60                         \n",
       "2 member                        60                         "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "aggregate(all_trips_clean$ride_length ~ all_trips_clean$member_casual, FUN = mean)\n",
    "aggregate(all_trips_clean$ride_length ~ all_trips_clean$member_casual, FUN = median)\n",
    "aggregate(all_trips_clean$ride_length ~ all_trips_clean$member_casual, FUN = max)\n",
    "aggregate(all_trips_clean$ride_length ~ all_trips_clean$member_casual, FUN = min)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "79468cb0",
   "metadata": {
    "papermill": {
     "duration": 0.014997,
     "end_time": "2023-08-15T17:49:06.404472",
     "exception": false,
     "start_time": "2023-08-15T17:49:06.389475",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "View ride lengths by user type/day of week"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "fb62f86f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:49:06.438380Z",
     "iopub.status.busy": "2023-08-15T17:49:06.436776Z",
     "iopub.status.idle": "2023-08-15T17:49:11.795805Z",
     "shell.execute_reply": "2023-08-15T17:49:11.794023Z"
    },
    "papermill": {
     "duration": 5.379254,
     "end_time": "2023-08-15T17:49:11.798716",
     "exception": false,
     "start_time": "2023-08-15T17:49:06.419462",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 14 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>all_trips_clean$member_casual</th><th scope=col>all_trips_clean$day_of_week</th><th scope=col>all_trips_clean$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Friday   </td><td>1239.6656</td></tr>\n",
       "\t<tr><td>member</td><td>Friday   </td><td> 737.0159</td></tr>\n",
       "\t<tr><td>casual</td><td>Monday   </td><td>1323.3438</td></tr>\n",
       "\t<tr><td>member</td><td>Monday   </td><td> 718.5610</td></tr>\n",
       "\t<tr><td>casual</td><td>Saturday </td><td>1480.1581</td></tr>\n",
       "\t<tr><td>member</td><td>Saturday </td><td> 837.7598</td></tr>\n",
       "\t<tr><td>casual</td><td>Sunday   </td><td>1504.6089</td></tr>\n",
       "\t<tr><td>member</td><td>Sunday   </td><td> 829.1693</td></tr>\n",
       "\t<tr><td>casual</td><td>Thursday </td><td>1173.1924</td></tr>\n",
       "\t<tr><td>member</td><td>Thursday </td><td> 724.7750</td></tr>\n",
       "\t<tr><td>casual</td><td>Tuesday  </td><td>1176.4242</td></tr>\n",
       "\t<tr><td>member</td><td>Tuesday  </td><td> 712.4337</td></tr>\n",
       "\t<tr><td>casual</td><td>Wednesday</td><td>1116.3952</td></tr>\n",
       "\t<tr><td>member</td><td>Wednesday</td><td> 711.8111</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 14 × 3\n",
       "\\begin{tabular}{lll}\n",
       " all\\_trips\\_clean\\$member\\_casual & all\\_trips\\_clean\\$day\\_of\\_week & all\\_trips\\_clean\\$ride\\_length\\\\\n",
       " <chr> & <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Friday    & 1239.6656\\\\\n",
       "\t member & Friday    &  737.0159\\\\\n",
       "\t casual & Monday    & 1323.3438\\\\\n",
       "\t member & Monday    &  718.5610\\\\\n",
       "\t casual & Saturday  & 1480.1581\\\\\n",
       "\t member & Saturday  &  837.7598\\\\\n",
       "\t casual & Sunday    & 1504.6089\\\\\n",
       "\t member & Sunday    &  829.1693\\\\\n",
       "\t casual & Thursday  & 1173.1924\\\\\n",
       "\t member & Thursday  &  724.7750\\\\\n",
       "\t casual & Tuesday   & 1176.4242\\\\\n",
       "\t member & Tuesday   &  712.4337\\\\\n",
       "\t casual & Wednesday & 1116.3952\\\\\n",
       "\t member & Wednesday &  711.8111\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 14 × 3\n",
       "\n",
       "| all_trips_clean$member_casual &lt;chr&gt; | all_trips_clean$day_of_week &lt;chr&gt; | all_trips_clean$ride_length &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| casual | Friday    | 1239.6656 |\n",
       "| member | Friday    |  737.0159 |\n",
       "| casual | Monday    | 1323.3438 |\n",
       "| member | Monday    |  718.5610 |\n",
       "| casual | Saturday  | 1480.1581 |\n",
       "| member | Saturday  |  837.7598 |\n",
       "| casual | Sunday    | 1504.6089 |\n",
       "| member | Sunday    |  829.1693 |\n",
       "| casual | Thursday  | 1173.1924 |\n",
       "| member | Thursday  |  724.7750 |\n",
       "| casual | Tuesday   | 1176.4242 |\n",
       "| member | Tuesday   |  712.4337 |\n",
       "| casual | Wednesday | 1116.3952 |\n",
       "| member | Wednesday |  711.8111 |\n",
       "\n"
      ],
      "text/plain": [
       "   all_trips_clean$member_casual all_trips_clean$day_of_week\n",
       "1  casual                        Friday                     \n",
       "2  member                        Friday                     \n",
       "3  casual                        Monday                     \n",
       "4  member                        Monday                     \n",
       "5  casual                        Saturday                   \n",
       "6  member                        Saturday                   \n",
       "7  casual                        Sunday                     \n",
       "8  member                        Sunday                     \n",
       "9  casual                        Thursday                   \n",
       "10 member                        Thursday                   \n",
       "11 casual                        Tuesday                    \n",
       "12 member                        Tuesday                    \n",
       "13 casual                        Wednesday                  \n",
       "14 member                        Wednesday                  \n",
       "   all_trips_clean$ride_length\n",
       "1  1239.6656                  \n",
       "2   737.0159                  \n",
       "3  1323.3438                  \n",
       "4   718.5610                  \n",
       "5  1480.1581                  \n",
       "6   837.7598                  \n",
       "7  1504.6089                  \n",
       "8   829.1693                  \n",
       "9  1173.1924                  \n",
       "10  724.7750                  \n",
       "11 1176.4242                  \n",
       "12  712.4337                  \n",
       "13 1116.3952                  \n",
       "14  711.8111                  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "aggregate(all_trips_clean$ride_length ~ all_trips_clean$member_casual + all_trips_clean$day_of_week, FUN = mean)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9e371166",
   "metadata": {
    "papermill": {
     "duration": 0.015546,
     "end_time": "2023-08-15T17:49:11.830168",
     "exception": false,
     "start_time": "2023-08-15T17:49:11.814622",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Arrange days of week so that they are in order"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "6c5e96aa",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:49:11.865116Z",
     "iopub.status.busy": "2023-08-15T17:49:11.863415Z",
     "iopub.status.idle": "2023-08-15T17:49:12.059207Z",
     "shell.execute_reply": "2023-08-15T17:49:12.057200Z"
    },
    "papermill": {
     "duration": 0.215569,
     "end_time": "2023-08-15T17:49:12.061667",
     "exception": false,
     "start_time": "2023-08-15T17:49:11.846098",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "all_trips_clean$day_of_week <- ordered(all_trips_clean$day_of_week, levels=c(\"Sunday\", \"Monday\", \"Tuesday\", \"Wednesday\", \"Thursday\", \"Friday\", \"Saturday\"))\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f662ae9b",
   "metadata": {
    "papermill": {
     "duration": 0.015338,
     "end_time": "2023-08-15T17:49:12.092322",
     "exception": false,
     "start_time": "2023-08-15T17:49:12.076984",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Rerun code to show ride lengths by rider type/day of week "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "97717b8a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:49:12.127352Z",
     "iopub.status.busy": "2023-08-15T17:49:12.125695Z",
     "iopub.status.idle": "2023-08-15T17:49:16.039963Z",
     "shell.execute_reply": "2023-08-15T17:49:16.038177Z"
    },
    "papermill": {
     "duration": 3.934598,
     "end_time": "2023-08-15T17:49:16.042411",
     "exception": false,
     "start_time": "2023-08-15T17:49:12.107813",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 14 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>all_trips_clean$member_casual</th><th scope=col>all_trips_clean$day_of_week</th><th scope=col>all_trips_clean$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Sunday   </td><td>1504.6089</td></tr>\n",
       "\t<tr><td>member</td><td>Sunday   </td><td> 829.1693</td></tr>\n",
       "\t<tr><td>casual</td><td>Monday   </td><td>1323.3438</td></tr>\n",
       "\t<tr><td>member</td><td>Monday   </td><td> 718.5610</td></tr>\n",
       "\t<tr><td>casual</td><td>Tuesday  </td><td>1176.4242</td></tr>\n",
       "\t<tr><td>member</td><td>Tuesday  </td><td> 712.4337</td></tr>\n",
       "\t<tr><td>casual</td><td>Wednesday</td><td>1116.3952</td></tr>\n",
       "\t<tr><td>member</td><td>Wednesday</td><td> 711.8111</td></tr>\n",
       "\t<tr><td>casual</td><td>Thursday </td><td>1173.1924</td></tr>\n",
       "\t<tr><td>member</td><td>Thursday </td><td> 724.7750</td></tr>\n",
       "\t<tr><td>casual</td><td>Friday   </td><td>1239.6656</td></tr>\n",
       "\t<tr><td>member</td><td>Friday   </td><td> 737.0159</td></tr>\n",
       "\t<tr><td>casual</td><td>Saturday </td><td>1480.1581</td></tr>\n",
       "\t<tr><td>member</td><td>Saturday </td><td> 837.7598</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 14 × 3\n",
       "\\begin{tabular}{lll}\n",
       " all\\_trips\\_clean\\$member\\_casual & all\\_trips\\_clean\\$day\\_of\\_week & all\\_trips\\_clean\\$ride\\_length\\\\\n",
       " <chr> & <ord> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Sunday    & 1504.6089\\\\\n",
       "\t member & Sunday    &  829.1693\\\\\n",
       "\t casual & Monday    & 1323.3438\\\\\n",
       "\t member & Monday    &  718.5610\\\\\n",
       "\t casual & Tuesday   & 1176.4242\\\\\n",
       "\t member & Tuesday   &  712.4337\\\\\n",
       "\t casual & Wednesday & 1116.3952\\\\\n",
       "\t member & Wednesday &  711.8111\\\\\n",
       "\t casual & Thursday  & 1173.1924\\\\\n",
       "\t member & Thursday  &  724.7750\\\\\n",
       "\t casual & Friday    & 1239.6656\\\\\n",
       "\t member & Friday    &  737.0159\\\\\n",
       "\t casual & Saturday  & 1480.1581\\\\\n",
       "\t member & Saturday  &  837.7598\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 14 × 3\n",
       "\n",
       "| all_trips_clean$member_casual &lt;chr&gt; | all_trips_clean$day_of_week &lt;ord&gt; | all_trips_clean$ride_length &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| casual | Sunday    | 1504.6089 |\n",
       "| member | Sunday    |  829.1693 |\n",
       "| casual | Monday    | 1323.3438 |\n",
       "| member | Monday    |  718.5610 |\n",
       "| casual | Tuesday   | 1176.4242 |\n",
       "| member | Tuesday   |  712.4337 |\n",
       "| casual | Wednesday | 1116.3952 |\n",
       "| member | Wednesday |  711.8111 |\n",
       "| casual | Thursday  | 1173.1924 |\n",
       "| member | Thursday  |  724.7750 |\n",
       "| casual | Friday    | 1239.6656 |\n",
       "| member | Friday    |  737.0159 |\n",
       "| casual | Saturday  | 1480.1581 |\n",
       "| member | Saturday  |  837.7598 |\n",
       "\n"
      ],
      "text/plain": [
       "   all_trips_clean$member_casual all_trips_clean$day_of_week\n",
       "1  casual                        Sunday                     \n",
       "2  member                        Sunday                     \n",
       "3  casual                        Monday                     \n",
       "4  member                        Monday                     \n",
       "5  casual                        Tuesday                    \n",
       "6  member                        Tuesday                    \n",
       "7  casual                        Wednesday                  \n",
       "8  member                        Wednesday                  \n",
       "9  casual                        Thursday                   \n",
       "10 member                        Thursday                   \n",
       "11 casual                        Friday                     \n",
       "12 member                        Friday                     \n",
       "13 casual                        Saturday                   \n",
       "14 member                        Saturday                   \n",
       "   all_trips_clean$ride_length\n",
       "1  1504.6089                  \n",
       "2   829.1693                  \n",
       "3  1323.3438                  \n",
       "4   718.5610                  \n",
       "5  1176.4242                  \n",
       "6   712.4337                  \n",
       "7  1116.3952                  \n",
       "8   711.8111                  \n",
       "9  1173.1924                  \n",
       "10  724.7750                  \n",
       "11 1239.6656                  \n",
       "12  737.0159                  \n",
       "13 1480.1581                  \n",
       "14  837.7598                  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "aggregate(all_trips_clean$ride_length ~ all_trips_clean$member_casual + all_trips_clean$day_of_week, FUN = mean)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "316715e8",
   "metadata": {
    "papermill": {
     "duration": 0.015544,
     "end_time": "2023-08-15T17:49:16.073571",
     "exception": false,
     "start_time": "2023-08-15T17:49:16.058027",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Analyze ridership data by type and weekday"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "2435bad5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:49:16.108251Z",
     "iopub.status.busy": "2023-08-15T17:49:16.106590Z",
     "iopub.status.idle": "2023-08-15T17:49:22.159896Z",
     "shell.execute_reply": "2023-08-15T17:49:22.158045Z"
    },
    "papermill": {
     "duration": 6.073432,
     "end_time": "2023-08-15T17:49:22.162447",
     "exception": false,
     "start_time": "2023-08-15T17:49:16.089015",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'member_casual'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A grouped_df: 14 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>weekday</th><th scope=col>number_of_rides</th><th scope=col>average_duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Sun</td><td>380221</td><td>1504.6089</td></tr>\n",
       "\t<tr><td>casual</td><td>Mon</td><td>269367</td><td>1323.3438</td></tr>\n",
       "\t<tr><td>casual</td><td>Tue</td><td>264992</td><td>1176.4242</td></tr>\n",
       "\t<tr><td>casual</td><td>Wed</td><td>270349</td><td>1116.3952</td></tr>\n",
       "\t<tr><td>casual</td><td>Thu</td><td>304572</td><td>1173.1924</td></tr>\n",
       "\t<tr><td>casual</td><td>Fri</td><td>333036</td><td>1239.6656</td></tr>\n",
       "\t<tr><td>casual</td><td>Sat</td><td>460476</td><td>1480.1581</td></tr>\n",
       "\t<tr><td>member</td><td>Sun</td><td>387997</td><td> 829.1693</td></tr>\n",
       "\t<tr><td>member</td><td>Mon</td><td>473081</td><td> 718.5610</td></tr>\n",
       "\t<tr><td>member</td><td>Tue</td><td>531484</td><td> 712.4337</td></tr>\n",
       "\t<tr><td>member</td><td>Wed</td><td>533531</td><td> 711.8111</td></tr>\n",
       "\t<tr><td>member</td><td>Thu</td><td>537638</td><td> 724.7750</td></tr>\n",
       "\t<tr><td>member</td><td>Fri</td><td>477924</td><td> 737.0159</td></tr>\n",
       "\t<tr><td>member</td><td>Sat</td><td>440895</td><td> 837.7598</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A grouped\\_df: 14 × 4\n",
       "\\begin{tabular}{llll}\n",
       " member\\_casual & weekday & number\\_of\\_rides & average\\_duration\\\\\n",
       " <chr> & <ord> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Sun & 380221 & 1504.6089\\\\\n",
       "\t casual & Mon & 269367 & 1323.3438\\\\\n",
       "\t casual & Tue & 264992 & 1176.4242\\\\\n",
       "\t casual & Wed & 270349 & 1116.3952\\\\\n",
       "\t casual & Thu & 304572 & 1173.1924\\\\\n",
       "\t casual & Fri & 333036 & 1239.6656\\\\\n",
       "\t casual & Sat & 460476 & 1480.1581\\\\\n",
       "\t member & Sun & 387997 &  829.1693\\\\\n",
       "\t member & Mon & 473081 &  718.5610\\\\\n",
       "\t member & Tue & 531484 &  712.4337\\\\\n",
       "\t member & Wed & 533531 &  711.8111\\\\\n",
       "\t member & Thu & 537638 &  724.7750\\\\\n",
       "\t member & Fri & 477924 &  737.0159\\\\\n",
       "\t member & Sat & 440895 &  837.7598\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A grouped_df: 14 × 4\n",
       "\n",
       "| member_casual &lt;chr&gt; | weekday &lt;ord&gt; | number_of_rides &lt;int&gt; | average_duration &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| casual | Sun | 380221 | 1504.6089 |\n",
       "| casual | Mon | 269367 | 1323.3438 |\n",
       "| casual | Tue | 264992 | 1176.4242 |\n",
       "| casual | Wed | 270349 | 1116.3952 |\n",
       "| casual | Thu | 304572 | 1173.1924 |\n",
       "| casual | Fri | 333036 | 1239.6656 |\n",
       "| casual | Sat | 460476 | 1480.1581 |\n",
       "| member | Sun | 387997 |  829.1693 |\n",
       "| member | Mon | 473081 |  718.5610 |\n",
       "| member | Tue | 531484 |  712.4337 |\n",
       "| member | Wed | 533531 |  711.8111 |\n",
       "| member | Thu | 537638 |  724.7750 |\n",
       "| member | Fri | 477924 |  737.0159 |\n",
       "| member | Sat | 440895 |  837.7598 |\n",
       "\n"
      ],
      "text/plain": [
       "   member_casual weekday number_of_rides average_duration\n",
       "1  casual        Sun     380221          1504.6089       \n",
       "2  casual        Mon     269367          1323.3438       \n",
       "3  casual        Tue     264992          1176.4242       \n",
       "4  casual        Wed     270349          1116.3952       \n",
       "5  casual        Thu     304572          1173.1924       \n",
       "6  casual        Fri     333036          1239.6656       \n",
       "7  casual        Sat     460476          1480.1581       \n",
       "8  member        Sun     387997           829.1693       \n",
       "9  member        Mon     473081           718.5610       \n",
       "10 member        Tue     531484           712.4337       \n",
       "11 member        Wed     533531           711.8111       \n",
       "12 member        Thu     537638           724.7750       \n",
       "13 member        Fri     477924           737.0159       \n",
       "14 member        Sat     440895           837.7598       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "all_trips_clean %>% \n",
    "  mutate(weekday = wday(started_at, label = TRUE)) %>%  #creates weekday field using wday()\n",
    "  group_by(member_casual, weekday) %>%  #groups by usertype and weekday\n",
    "  summarise(number_of_rides = n()   #calculates the number of rides and average duration \n",
    "  ,average_duration = mean(ride_length)) %>%   # calculates the average duration\n",
    "  arrange(member_casual, weekday) # sorts\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5b90e622",
   "metadata": {
    "papermill": {
     "duration": 0.015871,
     "end_time": "2023-08-15T17:49:22.195211",
     "exception": false,
     "start_time": "2023-08-15T17:49:22.179340",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Visualize ride totals by day/rider type"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "85b15269",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:49:22.230667Z",
     "iopub.status.busy": "2023-08-15T17:49:22.229062Z",
     "iopub.status.idle": "2023-08-15T17:49:28.354038Z",
     "shell.execute_reply": "2023-08-15T17:49:28.352247Z"
    },
    "papermill": {
     "duration": 6.14555,
     "end_time": "2023-08-15T17:49:28.356616",
     "exception": false,
     "start_time": "2023-08-15T17:49:22.211066",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'member_casual'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdd3xV5f3A8Sc7JGFPBZygKIii9qfWgQO14qoWAQdOnLgqWlEcCI6qFRFEsLit\nVZyIVq0brBu1btQ6CoLK3iRk3N8fwUgVw00k9+KT9/uve889Oef7EOH18dyVkUgkAgAAv36Z\n6R4AAIC1Q9gBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAEQiO90DpM38+fPTPcIP\n8vPz8/LyysvLlyxZku5ZUqRBgwa5ubllZWVLly5N9ywpUg+XXFBQkJOTU1paumzZsnTPkiL1\ncMmFhYXZ2dkrVqxYvnx5umdJkXV2yU2bNk33CKRf/Q27ioqKdepbNzIzMysqKsrLy9M9SOpk\nZmZmZGTUnyVnZGTUtyWH+vpbDiHUtyX7LcM6wlOxAACREHYAAJEQdgAAkRB2AACREHYAAJEQ\ndgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACR\nEHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAA\nkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkchO9wAAUcl48eVUnm52l81TeTpgHeeK\nHQBAJIQdAEAkhB0AQCSEHQBAJLx5AqhD3kkAkEqu2AEARELYAQBEwlOxkDqelwSgTrliBwAQ\nCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcA\nEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEH\nABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlh\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQiex0D5A2TZo0SfcIP8jMzAwhZGVl\nNW3aNN2zpEjlkrOzs+vbklMp7X+2lpwC68iSc3Nz0z5JylQuOS8vLycnJ92z/GD+/PnpHoF1\nQv0Nu2XLlqV7hB/k5eXl5uZWVFSsU1PVqfz8/JycnPq25BSfMe1/tg0aNEjxGS059Ro0aJCd\nnV1WVlZcXJzeSVKmoKAgKyurXi2ZX5H6G3YrVqxIJBLpnmKl7OzsEEIikSgpKUn3LCmSk5NT\nGXb1Z8m5ubkpPmPa/2zr4ZLz8vJSfMa0L7ny/1jq1d/l/Pz8rKys8vLy+rNkfkW8xg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEtnpHgCAX7eMF19O5elmd9k8laeDXxdX7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACLh405ImxR/RELwKQkAxM4VOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEhkp3sA\nAPilGl47NGXnqgihJIRw2TUpOyMkzxU7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBIZKd7AAD4lcnfr0947a2U\nnW52l81Tdi5+7VyxAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIRBrCrmTRwuUVidSfFwAgbtkpPl/x/NdPPP6qXcbc\nc3Kbwtoeo+LF+256bPLb0xdnbdFlh2PPPG7jBlmVD3z36uATr3p/1V1PvvP+/Zvm/7KRAQB+\nHVIadomK4rHnX7+wvOKXHOSLhy66fvx/+w04/fimZY/fPHrwOWX3jDklI4QQwoJ/L2jQ/MCz\nTuxctfMmhbm/bGQAgF+NlIbdu3cOfqvR7uHbJ2p/iMSK4eM/7tBveK8eG4cQOlwdDjvm2nu/\n6XfEeoUhhFkfLWqy5W9/+9vOazoKAECEUvcau0X/eeTyJ5dffOkfVt1YUTb3gTFX9u/X99De\nR5xxwdXPTZ3/o59KJEq++mp61d2ShZOnFZfvt+f6lXfzmu66dVHum5O+q7z77qKSpt2alC9f\n9O2sBV7EBwDUNym6Ylex4tsrL/7b786/uWNB1qrb7x509tMlXU48a3D7RhlTX3l85KCTy2+6\nY5/1C6p2KC/+8uxzrprw8J2Vd1csfS+EsGXBD2N3Lsh++oOFlbffWVJa8a+RvUdNLU0ksgtb\n7nvEWScf2LVqz2nTpn377bdVdzfbbLOMjIw6WGttZGVlhRAyMjJycnLSPUuKZGam4Y076f3j\nTf2S0/6fUz1ccur/VbHk+iCZJZeWlqZgEtZ9KQq7p669aN62A/pv1yJR/sM1ueK5Ex7+bNGV\n9w7sXJAdQth0sy5lbxx535iP9hm2/c8dp6JkaQihRc4PddgiJ6t0UWkIoXzFjIUZWRs12+nq\nvw9rXL7otX/cct24i/I63nVspyaVe06YMOGuu+6q+sGXX345Ly9vbS/0F8nKymrcuHG6p4hZ\nffvjrW/rDZZcP6x2ySWpnyOFkvktz5kzJwWTsO5LRdjNem30bR+1GXvH7j/avuTrdxKJxAV9\nD111Y2HZ1yFsHxLlxSWlIYSy4pIQQnFxceWjmXkFIYR5pRVtcldeCZhTWp7dNDuEkJXb9sEH\nH/z+MC26Hz7o06f7PH/LB8f+ZZe6WhgAwLokFWE3+6X3Viz+5vg//L5qyz9OOvyZwq1vGZaf\nkVX4wP13rXodPyMjK4SwbPa9ffvfX7Wxd+/elTeGjzs1hElTl5e2yV15se3T5WWNO6/+f2W2\na9Xg+fmzq+6efPLJxx57bNXdpUuXLlmy5JeubS0pLCzMz88vKytbuHBhumdJkcLCWn/eTe3N\nnTs39SetUlRUlOIzpne9IYSGDRum+IyWnHqNGjVK8RlXu+RU/+1KrbT/lvkVSUXYbXr0hcMP\nWfncf6Ji0cBzh+w8+IrDWjUvaDEzVLzxxOzS3698UV3itosHLex+1h97rF/Q6qiJE48KIZQt\nn9rryB9eYxcSpW1z//rEK7N3369dCKF0ydtTFq/otUebEMKCT0cPvOajK28a1bryYl6ifNI3\ny5psu1nVGHl5eas+9zp37txEYl15i0XVJOvOSFGqb3+8aV9v6gdI+5JTz5Lrg3q4ZGotFWGX\n33rDDq1X3q58jV2TDTfZpE1hCOv336b5necPyz+pV6e2Rf9+5rbHPp47ZFDL6o6VkTOwV6fz\nbh3yfOs/dWpS8uio4YVt9+63fmEIodEmfZovO+X8y24+/fC9Gmcsm/L03ZOXNryk/2bVHQ0A\nICKp/uaJHzngkutL/nrjA2Ovnl+a03bjrudcNXjrwjW896dDn8tPKxnx9+EXzy3O2HTr7sMG\nnlj5TG5mdothoy+7few9N1x+YXF2o006dDl/xNBuRfXuzVMAQL2V6rDLyGo6ceLEVe427nXq\n4F6n/uz+2Q06/fA87Pc/s/cxA/c+ZjU75zXtfMoFV56ytmYFAPhVScNniQEAUBeEHQBAJIQd\nAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAk0vyVYlTJePHlFJ9xdpfNU3xGAKBO\nuWIHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCd88UZ2G1w5N\n3cn265O6cwEAMXLFDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEtnpHgCAta/h\ntUNTc6KKEMJ+fVJzLmCNXLEDAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiESNwq7imy8+q7xVPOvNS88bcObgPz/z\nxeK6GAsAgJrKTnK/FQtfPWLXAyZ+3mbF0g8TZfMP3rL703OXhxDGDL/5jk/eP3KDorocEgCA\n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\npwEAoNaS+vy5RPni2aXlG/bpWtfTAABQa0mFXUZW0e5N8r+4Y0pdTwMAQK0l+Y0RGfc9PmzF\nk0cdO+zO75aW1e1EAADUSrKvses16NHW6+Xcecmxd116QrM2bRpk/c8bKKZPn14HswEAUAPJ\nhl2LFi1atOix4TZ1OgwAALWXbNg98sgjdToHAAC/UJKvsQMAYF0n7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAi\nkZ2a0yTK5j8y7uYnX3l3bnHmeu07HtTvlH27tantwSpevO+mxya/PX1x1hZddjj2zOM2bpBV\n+cB3rw4+8ar3V9315Dvv379p/i+bHQDg1yFFYff0lef+7cOGx5x05pZtC9977t6bhgwovvHO\ng9sX1eJQXzx00fXj/9tvwOnHNy17/ObRg88pu2fMKRkhhBAW/HtBg+YHnnVi56qdNynMXUsr\nAABY16Ui7MpLpo99a073K/9ycOemIYSOnbb65o0+j46devAV29f4WIkVw8d/3KHf8F49Ng4h\ndLg6HHbMtfd+0++I9QpDCLM+WtRky9/+9red13QUAIAIpeI1duXFX2248cY9N2n4/YaMbo3z\nVixcEkKoKJv7wJgr+/fre2jvI8644Ornps7/0c8mEiVffTW96m7JwsnTisv323P9yrt5TXfd\nuij3zUnfVd59d1FJ025Nypcv+nbWgkQdLwoAYF2Tiit2uY13HTFi16q7pUum3jZzyUYndggh\n3D3o7KdLupx41uD2jTKmvvL4yEEnl990xz7rF1TtXF785dnnXDXh4Tsr765Y+l4IYcuCH8bu\nXJD99AcLK2+/s6S04l8je4+aWppIZBe23PeIs04+sGvVniNHjrzrrruq7r788st5eXnVT15S\n6zX/GrRo0eKnGy05Jqtdb7DkuFhypYjXG37+t7yqOXPmpGAS1n0peo1dla/e/MeokbeXbdLz\nwr3bFs+d8PBni668d2DnguwQwqabdSl748j7xny0z7CffYq2omRpCKFFTlbVlhY5WaWLSkMI\n5StmLMzI2qjZTlf/fVjj8kWv/eOW68ZdlNfxrmM7Nan7ZQEApF/qwq5k/tTbbhj11Lvzuvc6\n9Yoj9szPyJjz9TuJROKCvoeuulth2dchbB8S5cUlpSGEsuKSEEJxcXHlo5l5BSGEeaUVbXJX\nPok8p7Q8u2l2CCErt+2DDz74/WFadD980KdP93n+lg+O/csulZv23HPPdu3a/TBPSUlpaWn1\nM+f8wjWv25YsWfLTjZYck9WuN1hyXCy5UsTrDT//W4afSlHYLf7y2YHnjc7qut81447evMXK\nzx/JLszNyCp84P67MlbZMyMjK4SwbPa9ffvfX7Wxd+/elTeGjzs1hElTl5e2yV35LOqny8sa\nd2682pNu16rB8/NnV93t0qVLly5dqu7OnTs3kVjDK/Hi/peiKpdXZckxWe16gyXHxZIrRbze\n8PO/ZfipVLx5IlGx7IoLxuTtdcZNl5xUVXUhhILW+4aKZU/MLs1ZKfvuoReNevHbEEJBq6Mm\nTpw4ceLEh8dfk5nddOL3OrTq0TY364lXVuZa6ZK3pyxese0ebUIICz4dfUL/Ad+tqPj+rOWT\nvlnWZMvNUrBAAIB1QSqu2C379u6PlpWe0LXwrSlTqjbmNOi4deft+2/T/M7zh+Wf1KtT26J/\nP3PbYx/PHTKoZXXHysgZ2KvTebcOeb71nzo1KXl01PDCtnv3W78whNBokz7Nl51y/mU3n374\nXo0zlk15+u7JSxte0l/YAQD1RSrCbuEnX4UQbr36ilU3Nt7k4rtH/OaAS64v+euND4y9en5p\nTtuNu55z1eCtC9dwQb1Dn8tPKxnx9+EXzy3O2HTr7sMGnlj5TG5mdothoy+7few9N1x+YXF2\no006dDl/xNBuRXFfngcA+EEqwm79Pa6auMfqH8rIatzr1MG9Tv3Zn81u0Knqs06qfmbvYwbu\nfcxqds5r2vmUC6485ReMCgDw65WK19gBAJACwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEtnpHiBtcnJyEolE\nuqdIp5ycnHSPkGr1bcn1bb3BkusHS16t0tLSFEzCuq/+hl1RUVFGRkb1+6xIzShp0qhRo59u\ntOSYrHa9wZLjYsmVIl5v+Pnf8qrmzp2bgklY99XfsJs/f/4ar9g1TM0oabLafwUsOSY/9w+9\nJcfEkitFvN4g2qgJr7EDAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIhEdqpOVPHifTc9Nvnt6Yuz\ntuiyw7FnHrdxg6w6ONRaPAsAwK9Miq7YffHQRdePf3WnQ0+89OyjCz5/dvA54xJ1cKi1eBYA\ngF+dlIRdYsXw8R936Hd5rx47dd5u17OvHrBkxhP3frN0LR9qLZ4FAOBXKBVhV7Jw8rTi8v32\nXL/ybl7TXbcuyn1z0nchhIqyuQ+MubJ/v76H9j7ijAuufm7q/B/9bCJR8tVX05M5VDUPAQDU\nB6l4jd2Kpe+FELYs+OFcnQuyn/5gYQjh7kFnP13S5cSzBrdvlDH1lcdHDjq5/KY79lm/oGrP\n8uIvzz7nqgkP37nGQ1XzUKUnnnhi8uTJVXcvvvji7OyUvcRwXdSwYcN0j5Bq9W3J9W29wZLr\nB0tercWLF6dgEtZ9qSibipKlIYQWOT+8j6FFTlbpotLiuRMe/mzRlfcO7FyQHULYdLMuZW8c\ned+Yj/YZtn1ND1X9Q5X+85//PPvss1V3L7vssry8vOonL0l2ib9Kq12+Jcfk5/4Lt+SYWHKl\niNcbfv63vCphR6VUhF1mXkEIYV5pRZvclc/8ziktz26aveTrdxKJxAV9D11158Kyr0PYPiTK\ni0tKQwhlxSUhhOLi4uoPVf1DlTp06NCjR4+qu2VlZWsefei1tVlwzWVnZyeyshKJxIoVK1Jz\nxhBCScnq/iVM7ZIrKipKS0vXvPdaUt+WvPr1htQtOScnJ5GZacl1ah1Zcnl5eVL/qK4N6f2L\nHNadJcPqpCLscgq2CmHS1OWlbXJX/j/Hp8vLGndunF2Ym5FV+MD9d2WssnNGRlYIYdnse/v2\nv79qY+/evStvDB936moPVc1Zqg7Ss2fPnj17Vt2dO3duIrGuvGu2sLCwQYMG5eXl9ed/uYqK\nirKysurVkhs2bFgPl5yXl1dWVlZ/ltyoUaPc3NzS0tL6s+TGjRtnZmbWq99y5ZJLS0uXLFmS\n7lngx1Lx5on8Jnu0zc164pXZlXdLl7w9ZfGKbfdoU9B631Cx7InZpTkrZd899KJRL34bQiho\nddTEiRMnTpz48PhrMrObTvxeh1Y9Vnuoas6SggUCAKwLUvJxJxk5A3t1+uzWIc+//enML96/\n5eLhhW337rd+YW7D7ftv0/xv5w976qW3vvrikwk3D3rs47l77tSyFodaw0MAAPVAit4W2qHP\n5aeVjPj78IvnFmdsunX3YQNPrHz69YBLri/5640PjL16fmlO2427nnPV4K0Lc2p3qOofAgCI\nXsa68zqzFFsHX2NXVla2YMGCdM+SIkVFRfn5+aWlpQsXLlzz3lGofMFZPVzyihUrFi1alO5Z\nUqTyNXYlJSX16gVnOTk59XDJxcXF69pr7Fq0aJHuEUi/FH2lGAAAdU3YAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgB\nAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELY\nAQBEQtgBAERC2AEARCIjkUike4b0mDt37rqz9tmzZ8+fP79Bgwbt27dP9ywpMmvWrAULFtSr\nJX/33XcLFy4sLCxs27ZtumdJkW+//XbRokVFRUXrr79+umdJkZkzZy5ZsqRRo0Zt2rRJ9ywp\nMmPGjKVLlzZu3Lh169bpniVFpk+fvnz58iZNmrRq1Srds/yPFi1apHsE0q/+ht065dprrx0/\nfvyWW2551113pXuWFLniiiseeeSRbt26jRs3Lt2zpMgll1zyxBNP7LDDDqNHj073LCkyaNCg\nZ599drfddhs+fHi6Z0mRc845Z/LkyT169Pjzn/+c7llSZMCAAa+//nrPnj2HDh2a7llS5MQT\nT3znnXcOOeSQwYMHp3sW+DFPxQIARELYAQBEQtgBAETCa+zWCZ988sn06dMbNWr0f//3f+me\nJUU+/vjjGTNmNGnSZPvtt0/3LCny4YcffvPNN82aNdt2223TPUuKvPfee7NmzWrZsuXWW2+d\n7llS5N133509e3arVq26du2a7llS5O233543b956663XuXPndM+SIlOmTFmwYEHbtm232GKL\ndM8CPybsAAAi8f/t3XdAE2cbAPDnshPCCJElS0AQRQXqqNaNSq0DkSJTwd0q2opSFXGCitRF\nBbVqxQpacYtS6uqwaq2tn9WqjNpWQUDZCAFCSPJ+fwQj2hppC8Qcz++vu/feO57nLnl5khvB\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "all_trips_clean %>% \n",
    "  mutate(weekday = wday(started_at, label = TRUE)) %>% \n",
    "  group_by(member_casual, weekday) %>% \n",
    "  summarise(number_of_rides = n()\n",
    "            ,average_duration = mean(ride_length)) %>% \n",
    "  arrange(member_casual, weekday)  %>% \n",
    "  ggplot(aes(x = weekday, y = number_of_rides, fill = member_casual)) +\n",
    "  geom_col(position = \"dodge\")\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b035140b",
   "metadata": {
    "papermill": {
     "duration": 0.016315,
     "end_time": "2023-08-15T17:49:28.389317",
     "exception": false,
     "start_time": "2023-08-15T17:49:28.373002",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Visualize trip length data"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "bb8555e6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:49:28.425587Z",
     "iopub.status.busy": "2023-08-15T17:49:28.423880Z",
     "iopub.status.idle": "2023-08-15T17:49:34.753879Z",
     "shell.execute_reply": "2023-08-15T17:49:34.751989Z"
    },
    "papermill": {
     "duration": 6.350574,
     "end_time": "2023-08-15T17:49:34.756229",
     "exception": false,
     "start_time": "2023-08-15T17:49:28.405655",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'member_casual'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdeaCVc/7A8e+5e7fbnrQihSQ7kz0MQxjbRFkiRLaxZRsxiJ9dsmfsxj5lH8wg\nYiwzmho7GVuIpL1u3e2c3x/XXKFu56ZzzvW9r9c/znnOOc/z+aZO756z3EQqlQoAAPzy5eV6\nAAAAVg5hBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQiYJcD5BZ8+bNq6mpyfUU\n3ystLS0sLKyqqiovL8/1LNlTXFxcUlKSTCbnz5+f61myp6CgoHnz5iGEefPmNZ2vAU8kEi1b\ntgwhLFy4sLq6OtfjZE+LFi3y8vIWL15cUVGR61myxxNarmf5sTZt2uR6BHIv8rBLJpONKuwS\niUReXl4ikWhUU2VBXl5eCKFJrTo/P7921clkMplM5nqcLMnLy6tddSqValL/u+sW3qRWXfuE\nFprYqkMIeXl5Te13OL8gXooFAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIREGWj3fHMYeWjBwzaJVmtVenvzriyIvfWvIOw+58cPc2JSGEEJIv3H/D4y9O+nx+/rp9\n+g454bDuzfLr3Q4A0KRlM+xS//3H7Q9Pm7NfKlW3ac5/5jRr99sTj1yvbsuazYtqL3w87uyr\nHvhs8HHHH96m+ombrh9xSvU9Nx6dWPZ2AIAmLkth9/VLo8/+08vfzK340fZv3p3XuvdWW221\n3o8fkKoc9cB7PQePGrBT9xBCz0vDfodeft9Xgw/sWLj07Z2aZ2UdAACNV5bCru0GA848d49k\n1fRTz7h0ye1vzKtos3HrmkXzZsxPrtqhdd2Jt4q5L05dXHPCjp1rrxa32XbDsqtfnzD9d7t+\nvNTtBw5ac4Vna3H5yBV+bEOlQqgIIXHBFVk7IgDQdGQp7Ipade3ZKtRUlvxo++QFVcl/XLP/\nte9XpVIFzVfZ5cATh/12gxBC5cI3Qwi9S78fb73Sgr+/Pbdy26Vvr7s6ceLEsWPH1l095phj\nOnbsmJk1rbiCgoIWLVrkeorsyc/PDyEkEokmteq8vO8+mVRWVpZa4u0HcUskvvvXWbNmzYqL\ni3M7TDbVLryoqKj2d3sTUVBQEEIoLCxsUn+0a/8X5+XlNbZVz58/P9cj0Chk+8MTS6qp/HJu\nIn+Ntlteeu8FrWrmvfbXW668+ezite4a0qt1smJhCKF94fdPke0L86vmVS1re93VadOmPfvs\ns3VXhwwZsty/XX788nDm5eXlNam/82olEokmuOoQQlFRUa5HyIHCwsJcj5ADBQUFta3TpHhC\naySEHbVy+RyUX9RlibNr7fsdcOaUvw8cf8vbQ67YJq+4NIQwqyrZsei70x7fVtUUtClY1va6\nfbZv3/5Xv/pV3dWSkpKqqu+zr5FIJpM1NTW5niJ78vLy8vPzU6lUdXV1rmfJnkQiUft3fCP8\nHZhRtUlXXV3ddM5ThhAKCgoSiURNTU0ymcz1LNmTn5+fl5fnCQ0alcb1j8tNOzQbP3tGCKGw\ndP0QJry/qKpj0Xf/JJqyqLrVeq2Wtb1uD1tttdVWW21Vd3XOnDlz584N9cr+yfTq6up58+Zl\n/bA5U1paWlpamkqllvv/IiZFRUUtW7YMIcyfP7/p/GWfl5fXtm3bEEJ5eXllZWWux8metm3b\nJhKJioqK8vLyXM+SPS1btiwqKqqqqmpS54pqn9CSyWSTekLjFySXX1A8Z8r1Rww9bnrl//7O\nS9VM+Kq8de+1QwglrXfoUpT/5Cszam+pWjBp4vzKTXbouKztuRgfAKBxyWXYtVxzYLvy6Wec\nf9PEt6d8+M5/7ht9+osLWxw1dO0QQkgUDh/Q68Nbzxs/acq0j9+65ZxRzbvsPLhz82VuBwBo\n8nL5UmxeQfsLrj//9jH3XH3hWYsLWq7Zs88Zo0duXPbde657Drzw2IrR9446Z+biRI8N+10w\n/MhEvdsBAJq4RNxvcJ4zZ85y39+aze+xq5W44Iom+B67ZDI5a9asXM+SPXXvsZs1a1YTfI/d\nvHnzmtp77PLy8srLy5vge+wqKiqa4HvsampqZs+enetZfqx9+/a5HoHcy+VLsQAArETCDgAg\nEo3r604AoKGy/I6aihAKLroqm0eE9DljBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlh\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQ\nCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcA\nEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEH\nABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlh\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAlhBwAQiYJcD0ButLh8ZDYPVxFC4cWjs3lEAGiCnLEDAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIREGuB8is5s2b5+UtJ16rszPK\nEgoLC9u0aZP1w/5A9ledl5eX81VnUyKRqL3QqlWr3E6SE2VlZalUKtdTZE/t80xJSUlxcXGu\nZ8me2lUXFRXl/I929p/Q8vPzc77qH5k9e3auR6BRiDzsKioqlvu3S1F2RllCTU3NokWLsn7Y\nH8j+qpPJZHl5edYPmzMFBQXNmjULISxatKjpJE4ikSgrKwshVFRUVFdn/2/bnCkrK0skElVV\nVZWVlbmeJXuaNWtWUFDgCQ0alcjDrrq6erl/u+TkGaGioiLrh/2B7K86hJDzVWdTKpWqDbvK\nyspkMpnrcbKk7gR5U0uc5s2bJxKJmpqaJvWbvPb0ZGNYdfaf0FKpVM5XDUvlPXYAAJEQdgAA\nkYj8pViAJqXF5SOzdqxUCBUhhJGXZ+2IwHI5YwcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEH\nABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlh\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAlhBwAQiYJcDwDZ0+Lykdk8XEUIxZdek80jAtDECTsgTtns+Kra/5x7SdaOCLBUXooF\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiERBrgcAMq7F5SOzdqyK2v+MuDBrRwSgjjN2AACREHYAAJEQ\ndgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACR\nEHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAA\nkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYA\nAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2\nAACREHYAAJEQdgAAkSjI8vHuOObQkpFjBq3S7H8bki/cf8PjL076fH7+un36DjnhsO7N8pd3\nUz0PAQBourJ5xi7133/c9vC0OdWpVN2mj8edfdUDr26575HnnnRI6UfPjjjl5tTybqrnIQAA\nTVmWzth9/dLos//08jdzK36wNVU56oH3eg4eNWCn7iGEnpeG/Q69/L6vBh/Yqfkyb+pYuMyH\nAAA0bVk6Y9d2gwFnnnvxFZeeseTGirkvTl1c03/HzrVXi9tsu2FZ0esTptdzUz0PAQBo4rJ0\nxq6oVdeerUJNZcmSGysXvhlC6F36/QzrlRb8/e259dxUue0yH1Jr2rRp7777bt3VPn36NG/e\n6E7m5eXlFRcX53qKHGiaqy4qKkqlmtz7BQoLCxOJRK6nyLb8/Pwm+Ju8aa46kUg0tlVXVFQs\n/040Adn+8MSSkhULQwjtC7//6EP7wvyqeVX13FTPQ2pNnDhx5MiRdVfvvvvujh071j9G9v8o\nFBQUtGjRIuuH/YHsrzovL68JrjqEUFZWlovD/kD2F96sWbPl3ynDsr/q4uLinP9l7wktOxrD\nE9qPCDtq5fLrTvKKS0MIs6qSdVu+raopKCuo56Z6HgIA0MTlMokKS9cPYcL7i6o6Fn33b9wp\ni6pbrdeqnpvqeUitXXfddfvtt6+7WlNTM3PmzPrHyP7plMrKyvnz52f9sD+Q/VUnk8nZs2dn\n/bA/kJNTZ7Nnz04mk8u/XyZlf+Hz5s2rqqpa/v0yKfurLi8vX7RoUdYP+wOe0LKjMTyhwVLl\nMuxKWu/QpejGJ1+ZsX3/riGEqgWTJs6vHLBDx3puKmm92rIeUquoqKioqKju6pw5cxrn25sa\n51SZ1mRX3WQXnusRcqAJrrpp/g5vmqvmFyGnP3kiUTh8QK8Pbz1v/KQp0z5+65ZzRjXvsvPg\nzs3ru6mehwAANG05fndaz4EXHlsx+t5R58xcnOixYb8Lhh+ZWN5N9TwEAKApy2rY5Rd1feyx\nx36wKZG/86HDdz50afde1k31PAQAoAnL6UuxAACsPMIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nBQ2696wvPp6xsOqn29dZZ52VNA8AACso3bBb/O2zv9tm4JMfzFrqralUauWNBADAikg37P60\n1+CnPpy/xzFn7rrBGgWJjI4EAMCKSDfsLnx9xpoDH3r8hj0zOg0AACssrQ9PpGrmz6iqWX3g\nBpmeBgCAFZZW2CXyy7ZvXfLxHRMzPQ0AACssza87Sdz/xAWVTx085II7py+szuxEAACskHTf\nYzfgzEdX7VR45x+H3HXuEW07dmyW/4MPUHz++ecZmA0AgAZIN+zat2/fvv1Oq2+U0WEAAFhx\n6Ybdww8/nNE5AAD4mRr2kyfKv/zP2EefeffjaeU1BZ3WXO83ew/YtFtZhiYDAKBBGhB24/44\n6KD/e7Ai+f0PmRhx0tH7jbjngZG/y8BgAAA0TJqfig2f/OWgARc80KHf4Q88888vv5k5e8a0\n18ePPWL7VR+8YMDghz7N5IQAAKQl3TN2V5z0WFmXIe8/e3Np3nefh91sh99t2q9/cvWOD/7+\nyrDvtRmbEACAtKR7xu7+GeVrH3ViXdXVSuSVnnj8Ootm3JeBwQAAaJh0w64sL2/x9MU/3b54\n+uJEvs9PAADkXrphd9Jarf5717ETZ1csubFy7qTjb5nSqueJGRgMAICGSfc9doeNHXnuer/f\neo0NDz/+sK036FkSFn301it3XHfblPKia/5yWEZHBAAgHemGXet1jn33mYKDjz1rzEVnjvnf\nxrbrbHf99X8+ulfrDA0HAED6GvA9dl13OOqF94784v1/v/PRtIpQ3HnN3pus2y3dl3IBAMiw\nhv3kiRASXXtt1rVXRkYBAODnqC/sNt5440Re8aR/v1Z7uZ57Tp48eSXPBQBAA9UXdmVlZYm8\n4trLrVt7Ix0AQKNWX9i99NJLdZeff/75zA8DAMCKS/fDD1tuueUVXyz46favXzlh2x0Hr9SR\nAABYEcv58MS8T/77VWVNCOG1115b8733PljY8oe3p97+64uvvPRppqYDACBtywm7cbv2PXzK\nrNrL9/7mV/cu7T4t1zhuZU8FAECDLSfstho5asycxSGEo48+ut8FVx2wSrMf3SGvsMWWvxuQ\nqekAAEjbcsJunYGHrhNCCOH+++/f+/ChwzqXZWEmAABWQLpfULysT8WmkuXzF4aWLUpX3kgA\nAKyIn/sjwb54dp92q6y7UkYBAODnSPeMXapmwXUnHXnncxNnLqpecvvXUz9LNOudgcEAoDEq\n6T8wvPRaNo84o8862Twcv2jpnrGbPHL7E667f17r7mt3qv700097bbDRhhv0Kpg5LdF2hxse\nfTqjIwIATU1pft5aB7yY6yly76oebUrb7ZH+/dM9Y3fWte+063PhlFdGpGoWrFnWZpvr7hrR\nrcWibyb06b7bgs7NV2hUAABWpnTP2L00r3KNQXuEEBL5ZYM7lI6fNDOE0KxDv7uGrHHhgJsz\nOCAAAOlJ94xdm4JE1fyq2st9uzZ/8NEvw15rhBBW37frnFuuCuH0DM0Xn5L+A8Mrr2fziN6c\nAcDPkqqsqCksLkg03h3WK1k9J1XQOj87B8u1dM/YDe3S4r+3X/J5RU0IodueXb548k+1279+\nbnqmRgMAcuf+ddu3Wv2Pr//plK6typoV5bfusObBZ92VDGHiHWdsvMaqzYrLuvfue9597y75\nkAWfvXjSoF1WW6V1cfO2vTbe8fybnkz+vB2+Ofbifuuv3ryouH2XXgeceOWXlTVpHu72ddq1\n6XFVxZx/Hbx977LitgtqUuks+auX79l/583atSgpbbXKFv0P+svrM+pueu+x6/fefpP2rZoX\nFDXr1GODQ0+/Zlb19/tMVn17/ZmHb9CjY0lhYct23X498ITXvl1ce9Pp3Vq27PaD81//OX/T\nRCLxaUVNmjtvkHTP2A277ciRO1zRo/1qH8yY2uOQoeV/OGbLw1bdt3vVlVe+3Xa9K1bs2ABA\nY1b+zT3bHD/7oJPO6dut+LEbLr7n4kM/+PjWd54rP+WUsw+p+eTq/7t25ODNdtp9zjYti0II\nC6c9stG6+09NdDnosCN7ts9/44W/nHf07o+8cvvkO4es2A5nTPrjJg++stN+hw7fq8UbE8be\nf82pz7744dR/j2mWF9I5XLJ61qEb7Tpz28EXXXNCs7zlnx38+h8XrrX9uan2mx8y7IwO+bMe\nuvWWQVs/Pe+DT47o3vLzvx7XZ+8bW67Tb+jvz2hbVP3uyw/ddfmJr07rMeXu3WsfO3q3jU59\n7usdBh6139Bu86ZOHHPz9Tu9NHX2l48UpnFScrk7b5B0w65Tv8smj+t0/k2P5yVC807D7jtp\n7EGjr3gtlWrZY5exTw9bgQMDAI1c9eKPT33uy8t37BxCOPSg9Zq122PyI/+d8PXHW7cuDiHs\n2eONngeOv/aL+dv0bhdCuOI3Q6cmek6YOmnLdiUhhBAueWT4xvuMOuz/zt1nxJqtVmCHc6dM\nGP7QB1fss3YIIaQuu/3YjQ8fc9PBT/xh3J6rp3O4+Z//35xrJj5z/CZpLTVVOXjP/0u2/s2k\njx7r1bwwhPCHMwZ06bjj2Qc+ecSrg54/48G84m5v/OfZ1YprX9EduUrXlmOevimE3UMI1Yum\nnPbctG67jn3uvn1rd7Zvi633vP3lh75dNPAnP4v1p+rfeUOl+VJssqKiovfeJz/09PjVi/ND\nCANHPTPrs/f/895n33749M4dlj80APCLU1jaqzbCQgglbXdvkZ/Xvs/o2ggLIayy1bYhhEVV\nyRBCdfk7F7w7q9cxd/4vs0IIYbc/Xh1CeODGKSuwwxBCWaejvqu6EEKiYPBVD5fm5730xxfS\nPVyi+K5hG6W50vlfXvXs7MWbXnZ1bdWFEEra9nvkxuvOOaJ9CGHAPz6YPu3d/4VXSCUXVqRS\nqZry746T16woEea899DEz+fXbtnyspdnzJiRTtUtd+cNldYZu1TN/Nalbfre++ELA3vUbWzZ\nbe0NV+yYAMAvQV5BuyWvFiRC8Spt6q4m8grrLi+e9VRNKvXWlb9KXPnjncx9a+4K7DCE0Gb9\nAT+4c0nP3duWPDn9pRAOTedwRWUbdShM97ME8z58PoSw9Y6rLrlx2yOO2TaEEEJp67azXn/6\nzqdffGfKR59N/fS9N9/4ck5FSevv7pZf3O1vFw/e46y7f7X6fav36bvVFltst+Mu+w34Tdv0\nPh1S/84bKq2wS+S3Gr5u27tuez0sEXYAAN/JKwohrH/6bXUn5OoUt0r3tNmP/DSLChIhkVec\n5uESeQ34nt1kRTKEUJRYeoqNG/7r/a56vsvGO/52hy322HrX4SM3/PKonY//5vs7bHf6nd8M\n+cMjjzzxwov/ePmZO+69+apTTt7ikbef33mJE4p1UskffDBiuTtvkHTfY3fOS0/+Z+vdj7um\n2chhe7QrbiIfGQYA0lLSdrf8xEnVc9bZZZet6jZWL3p/3GNvdNywdMX2OevtR0LYue5qTcWn\nj89c3HLLX2ficC3X3iSEZ17+17dh9ZZ1G8efccyfZ7a56ao9B171fLfdxnz2xFF1N92+xGOr\nFnww6Z057TbcdNBRpw466tQQwntPXdB7tz+eePbkd2/csnb2JY81feKsusuV81+rf+cNle4p\nyj32H7Fo1dVuPGmfVUpbdOq6evcf+hkDAAC/eAUlPc/r3fbDPx/63NffvznsvuP2OuCAA6am\n2xo/tmDaDWf99eP/Xau599S9FtQk97ps60wcruXqf9iwrOifJ5z6yeLvIqxy7quHXH3zE//q\nUF3+fk0q1XajTevuXP7VK1d+OT+E7068LZx+4xZbbLH/JZPr7rDGZpuHEKoXVocQSvPzFs/6\n67f/e+Pg4pmvHTv+y7p7LnfnDZXuGbuSkpIQOu+++49PeAIAhBBOevKGm9c+qH+PPvsM2nPT\ntdq+Pf6BPz8zZf0hfx7cYQXP2BWvUnLJnr3fPujwzXu0mPz8gw9P+LTbLhdcv+WqmThcIr/V\no3cfu9Y+V6/fs99hB+/SsXDOwzeP+aqm+fVjh5SuUrJTu2Ofv3yP4wtP3bRr6cfvvHbLmMd6\ndCyp/HzSNff85YgDBrRa4/ydVvnTcxdst9vHh22x3prJOZ8+cstt+YXtzrto4xDCnoPXPv/C\n1zfc8ZDTD96x6uv37xh19fT2ReGL6trjlq4yqP6dN3Qh6Ybd448/3tBdAwBNR9lq+7/5Zqsz\nzrj40YdufaSyaM21e59781NnH7HrCu+w7+hXDply43V3PfzMfbNadF7n8LNvvuq8I+reBLfS\n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\n+1Jsv57hvmvP3Xnjbl032umPV9/z0ezKjI4FAEBDpRt2f3v9o5kf/vOGC4f3TL5/wUkHr71K\nu36/G3bHE68tSmZ0PAAA0pVu2IUQ2vTY/JgRV7zw5hdfvfOPK88aUvn2w4f9dst2ndY9/LRL\nMzcfAABpakDY1enYe+uTRl474bV/jjpu18oZH9x+xZkrfSwAABoq3Q9P1Fk0/YPHHho3bty4\nx5+fvDiZarXGxgMHDsrEZAAANEjaX3fyxVsPjxs3bty4p/7xTlUq1WzVdQccf+4BBxzQf4u1\nExkdEACA9KQbdq1X2zCZShW1WmPPoacfMGjQnjtsVCjoAAAak3TDbteDfj9o0KB9+2/RPO8H\nQZdKls9fGFq2KM3AbAAANEC6YffXP1+91O1fPLvPmnu+X7X4s5U3EgAAKyLdsEvVLLjupCPv\nfG7izEXVS27/eupniWa9MzAYAAANk+7XnUweuf0J190/r3X3tTtVf/rpp7022GjDDXoVzJyW\naLvDDY8+ndERAQBIR7pn7M669p12fS6c8sqIVM2CNcvabHPdXSO6tVj0zYQ+3Xdb0Ll5RkcE\nACAd6Z6xe2le5RqD9gghJPLLBncoHT9pZgihWYd+dw1Z48IBN2dwQAAA0pNu2LUpSFTNr6q9\n3Ldr8y8f/bL28ur7dp3z36syMhoAAA2RbtgN7dLiv7df8nlFTQih255dvnjyT7Xbv35ueqZG\nAwCgIdINu2G3HbloxkM92q/2yeKaHocMLf/mz1sedvrlI0/e48q32653RkZHBAAgHel+eKJT\nv8smj+t0/k2P5yVC807D7jtp7EGjr3gtlWrZY5exTw/L6IgAAKQj3bALIWy4z8kP7XNy7eWB\no57pf/KUTxaW9F5nNT9bDACgMWhA2P1Iy25rb7gSBwEA4OdJ9z12AAA0csIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEgW5Pfz0V0ccefFbS24ZdueDu7cpCSGEkHzh/hsef3HS\n5/Pz1+3Td8gJh3Vvll/vdgCAJi3HYTfnP3OatfvtiUeuV7dlzeZFtRc+Hnf2VQ98Nvi44w9v\nU/3ETdePOKX6nhuPTix7OwBAE5fjsPvm3Xmte2+11Vbr/fiGVOWoB97rOXjUgJ26hxB6Xhr2\nO/Ty+74afGDHwqVv79Q8+8MDADQqOX6P3RvzKtps3Lpm0byvv5mTWmJ7xdwXpy6u6b9j59qr\nxW223bCs6PUJ05e1PeuDAwA0Ojk+Yzd5QVXyH9fsf+37ValUQfNVdjnwxGG/3SCEULnwzRBC\n79Lvx1uvtODvb8+t3Hbp2+uuPvbYYyNHjqy7evfdd/fq1av+GSpW0loarfbt2/90o1VHaamr\nDk114VYdJatelm+//TYLk9D45fKMXU3ll3MT+e3abnnjvX/5y923nbjnWn+9+ew73p8TQkhW\nLAwhtC/8/lMR7Qvzq+ZVLWt71mcHAGh0cnnGLr+oy9ixY/93rX2/A86c8veB4295e8gV2+QV\nl4YQZlUlOxZ9l57fVtUUtClY1va6fW622WaXXHJJ3dXWrVvPnz+//jGKVtZ6Gqul/gpYdZSW\n9bu9aS7cqqNk1VC/HL8U+yObdmg2fvaMEEJh6fohTHh/UVXHouLam6Ysqm61Xqtlba/bQ+fO\nnTt37lx3dc6cORUVyzlJH/0zwlJ/Baw6Ssv63d40F27VUbJqqF8uX4qdM+X6I4YeN70y+d31\nVM2Er8pb9147hFDSeocuRflPvjKj9paqBZMmzq/cZIeOy9qei/EBABqXXIZdyzUHtiuffsb5\nN018e8qH7/znvtGnv7iwxVFD1w4hhETh8AG9Prz1vPGTpkz7+K1bzhnVvMvOgzs3X+Z2AIAm\nL5cvxeYVtL/g+vNvH3PP1Reetbig5Zo9+5wxeuTGZYW1t/YceOGxFaPvHXXOzMWJHhv2u2D4\nkYl6twMANHE5fo9dcZv1jv7DRUcv9bZE/s6HDt/50LS3AwA0bTn+gmIAAFYWYQcAEAlhBwAQ\nCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcA\nEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEH\nABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlh\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQ\nCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcA\nEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEH\nABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlh\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABCJglwPkFkFBQWJ\nRCLXU+RYYWFhrkfIAatuUprmwq266Uhn1VVVVVmYhMYv8rArKSnJz8+v/z6V2Rkld1q2bPnT\njVYdpaWuOjTVhVt1lKx6WWbOnJmFSWj8Ig+7BQsWVFdX13+fFtkZJXeW+qfdqqO0rGf2prlw\nq46SVUP9vMcOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBIFuR5gBSRfuP+Gx1+c9Pn8/HX79B1ywmHdm+XneiQAgNz75Z2x\n+3jc2Vc98OqW+x557kmHlH707IhTbk7leiQAgMbglxZ2qcpRD7zXc/CFA3bacr1Ntz3p0uMW\nfPnkfV8tzPVYAAC59wsLu4q5L05dXNN/x861V4vbbLthWdHrE6bndioAgMbgF/Yeu8qFb4YQ\nepd+P/Z6pQV/f3tu3dWJEyeOHTu27uoxxxzTsWPHbE7YCLVo0SLXI+SAVTcpTXPhVt10pLPq\n+fPnZ2ESGr9fWNglKxaGENoXfv9pifaF+VXzququTps27dlnn627OmTIkOLi4vr3WbGyh2xs\nlvorYNVRWtbv9qa5cKuOklUvi7Cj1i8s7PKKS0MIs6qSHYu+exH526qagjbfr6Jz58477bRT\n3dVmzZpVVCzvj/zIy1f+oMtQWFiYystLJpNVVVXLv/dKsvRfgSyuOj8/P1VQkEqlKisrs3bQ\nnK86Ly8vVVgYQqisrEylsvQJn2X+bs/WwhOJRFFRUSqEqqqqZDKZnYOGRvC/u6ioKJVIVFdX\n19TUZO2gOV+1J7SsHXT5f5HB//zCwq6wdP0QJry/qKpj0Xf/fJmyqLrVeq3q7rDZZpttttlm\ndVfnzJnTqP4R07Jly6Kiourq6kY1VaaVlpYWFBSkUqkmteqioqLCwsIQwoIFC7KZOLmVl5fX\ntm3bEMKiRYuy+ddezrVt2zaRSFRWVpaXl+d6luypfUKrqqpqUn+0a5/Qkslkk1o1vyC/sA9P\nlLTeoUtR/pOvzKi9WrVg0sT5lZvs0NTfRQcAEH5xYRcShcMH9Prw1vPGT5oy7eO3bjlnVPMu\nOw/u3DzXYwEA5N4v7KXYEELPgRceWzH63lHnzFyc6LFhvwuGH5nI9UgAAI3BLy/sQiJ/50OH\n73xorscAAGhkfmkvxQIAsAzCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\n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\nQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "all_trips_clean %>% \n",
    "  mutate(weekday = wday(started_at, label = TRUE)) %>% \n",
    "  group_by(member_casual, weekday) %>% \n",
    "  summarise(number_of_rides = n()\n",
    "            ,average_duration = mean(ride_length)) %>% \n",
    "  arrange(member_casual, weekday)  %>% \n",
    "  ggplot(aes(x = weekday, y = average_duration, fill = member_casual)) +\n",
    "  geom_col(position = \"dodge\")\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "501588e4",
   "metadata": {
    "papermill": {
     "duration": 0.016855,
     "end_time": "2023-08-15T17:49:34.790216",
     "exception": false,
     "start_time": "2023-08-15T17:49:34.773361",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Analyze ridership data by month"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "595119d1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:49:34.828015Z",
     "iopub.status.busy": "2023-08-15T17:49:34.826292Z",
     "iopub.status.idle": "2023-08-15T17:49:41.044523Z",
     "shell.execute_reply": "2023-08-15T17:49:41.042521Z"
    },
    "papermill": {
     "duration": 6.240182,
     "end_time": "2023-08-15T17:49:41.047245",
     "exception": false,
     "start_time": "2023-08-15T17:49:34.807063",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'member_casual'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A grouped_df: 24 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>month</th><th scope=col>number_of_rides</th><th scope=col>average_duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Jan</td><td> 38749</td><td> 846.0750</td></tr>\n",
       "\t<tr><td>casual</td><td>Feb</td><td> 41734</td><td> 988.0824</td></tr>\n",
       "\t<tr><td>casual</td><td>Mar</td><td> 60152</td><td> 949.8811</td></tr>\n",
       "\t<tr><td>casual</td><td>Apr</td><td>123803</td><td>1420.0078</td></tr>\n",
       "\t<tr><td>casual</td><td>May</td><td>274539</td><td>1560.7504</td></tr>\n",
       "\t<tr><td>casual</td><td>Jun</td><td>361048</td><td>1431.3839</td></tr>\n",
       "\t<tr><td>casual</td><td>Jul</td><td>396872</td><td>1419.4972</td></tr>\n",
       "\t<tr><td>casual</td><td>Aug</td><td>350519</td><td>1316.3159</td></tr>\n",
       "\t<tr><td>casual</td><td>Sep</td><td>289853</td><td>1228.2980</td></tr>\n",
       "\t<tr><td>casual</td><td>Oct</td><td>203883</td><td>1133.5092</td></tr>\n",
       "\t<tr><td>casual</td><td>Nov</td><td> 98211</td><td> 954.5302</td></tr>\n",
       "\t<tr><td>casual</td><td>Dec</td><td> 43650</td><td> 824.4852</td></tr>\n",
       "\t<tr><td>member</td><td>Jan</td><td>145246</td><td> 623.9662</td></tr>\n",
       "\t<tr><td>member</td><td>Feb</td><td>142601</td><td> 648.1356</td></tr>\n",
       "\t<tr><td>member</td><td>Mar</td><td>189289</td><td> 633.7918</td></tr>\n",
       "\t<tr><td>member</td><td>Apr</td><td>239827</td><td> 693.7550</td></tr>\n",
       "\t<tr><td>member</td><td>May</td><td>347243</td><td> 798.4623</td></tr>\n",
       "\t<tr><td>member</td><td>Jun</td><td>391795</td><td> 835.3010</td></tr>\n",
       "\t<tr><td>member</td><td>Jul</td><td>407943</td><td> 823.3787</td></tr>\n",
       "\t<tr><td>member</td><td>Aug</td><td>417117</td><td> 802.3110</td></tr>\n",
       "\t<tr><td>member</td><td>Sep</td><td>395329</td><td> 774.4421</td></tr>\n",
       "\t<tr><td>member</td><td>Oct</td><td>341270</td><td> 708.2699</td></tr>\n",
       "\t<tr><td>member</td><td>Nov</td><td>231631</td><td> 665.6247</td></tr>\n",
       "\t<tr><td>member</td><td>Dec</td><td>133259</td><td> 636.4351</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A grouped\\_df: 24 × 4\n",
       "\\begin{tabular}{llll}\n",
       " member\\_casual & month & number\\_of\\_rides & average\\_duration\\\\\n",
       " <chr> & <ord> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Jan &  38749 &  846.0750\\\\\n",
       "\t casual & Feb &  41734 &  988.0824\\\\\n",
       "\t casual & Mar &  60152 &  949.8811\\\\\n",
       "\t casual & Apr & 123803 & 1420.0078\\\\\n",
       "\t casual & May & 274539 & 1560.7504\\\\\n",
       "\t casual & Jun & 361048 & 1431.3839\\\\\n",
       "\t casual & Jul & 396872 & 1419.4972\\\\\n",
       "\t casual & Aug & 350519 & 1316.3159\\\\\n",
       "\t casual & Sep & 289853 & 1228.2980\\\\\n",
       "\t casual & Oct & 203883 & 1133.5092\\\\\n",
       "\t casual & Nov &  98211 &  954.5302\\\\\n",
       "\t casual & Dec &  43650 &  824.4852\\\\\n",
       "\t member & Jan & 145246 &  623.9662\\\\\n",
       "\t member & Feb & 142601 &  648.1356\\\\\n",
       "\t member & Mar & 189289 &  633.7918\\\\\n",
       "\t member & Apr & 239827 &  693.7550\\\\\n",
       "\t member & May & 347243 &  798.4623\\\\\n",
       "\t member & Jun & 391795 &  835.3010\\\\\n",
       "\t member & Jul & 407943 &  823.3787\\\\\n",
       "\t member & Aug & 417117 &  802.3110\\\\\n",
       "\t member & Sep & 395329 &  774.4421\\\\\n",
       "\t member & Oct & 341270 &  708.2699\\\\\n",
       "\t member & Nov & 231631 &  665.6247\\\\\n",
       "\t member & Dec & 133259 &  636.4351\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A grouped_df: 24 × 4\n",
       "\n",
       "| member_casual &lt;chr&gt; | month &lt;ord&gt; | number_of_rides &lt;int&gt; | average_duration &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| casual | Jan |  38749 |  846.0750 |\n",
       "| casual | Feb |  41734 |  988.0824 |\n",
       "| casual | Mar |  60152 |  949.8811 |\n",
       "| casual | Apr | 123803 | 1420.0078 |\n",
       "| casual | May | 274539 | 1560.7504 |\n",
       "| casual | Jun | 361048 | 1431.3839 |\n",
       "| casual | Jul | 396872 | 1419.4972 |\n",
       "| casual | Aug | 350519 | 1316.3159 |\n",
       "| casual | Sep | 289853 | 1228.2980 |\n",
       "| casual | Oct | 203883 | 1133.5092 |\n",
       "| casual | Nov |  98211 |  954.5302 |\n",
       "| casual | Dec |  43650 |  824.4852 |\n",
       "| member | Jan | 145246 |  623.9662 |\n",
       "| member | Feb | 142601 |  648.1356 |\n",
       "| member | Mar | 189289 |  633.7918 |\n",
       "| member | Apr | 239827 |  693.7550 |\n",
       "| member | May | 347243 |  798.4623 |\n",
       "| member | Jun | 391795 |  835.3010 |\n",
       "| member | Jul | 407943 |  823.3787 |\n",
       "| member | Aug | 417117 |  802.3110 |\n",
       "| member | Sep | 395329 |  774.4421 |\n",
       "| member | Oct | 341270 |  708.2699 |\n",
       "| member | Nov | 231631 |  665.6247 |\n",
       "| member | Dec | 133259 |  636.4351 |\n",
       "\n"
      ],
      "text/plain": [
       "   member_casual month number_of_rides average_duration\n",
       "1  casual        Jan    38749           846.0750       \n",
       "2  casual        Feb    41734           988.0824       \n",
       "3  casual        Mar    60152           949.8811       \n",
       "4  casual        Apr   123803          1420.0078       \n",
       "5  casual        May   274539          1560.7504       \n",
       "6  casual        Jun   361048          1431.3839       \n",
       "7  casual        Jul   396872          1419.4972       \n",
       "8  casual        Aug   350519          1316.3159       \n",
       "9  casual        Sep   289853          1228.2980       \n",
       "10 casual        Oct   203883          1133.5092       \n",
       "11 casual        Nov    98211           954.5302       \n",
       "12 casual        Dec    43650           824.4852       \n",
       "13 member        Jan   145246           623.9662       \n",
       "14 member        Feb   142601           648.1356       \n",
       "15 member        Mar   189289           633.7918       \n",
       "16 member        Apr   239827           693.7550       \n",
       "17 member        May   347243           798.4623       \n",
       "18 member        Jun   391795           835.3010       \n",
       "19 member        Jul   407943           823.3787       \n",
       "20 member        Aug   417117           802.3110       \n",
       "21 member        Sep   395329           774.4421       \n",
       "22 member        Oct   341270           708.2699       \n",
       "23 member        Nov   231631           665.6247       \n",
       "24 member        Dec   133259           636.4351       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "all_trips_clean %>% \n",
    "  mutate(month = month(started_at, label = TRUE)) %>%\n",
    "  group_by(member_casual, month) %>%  #groups by usertype and weekday\n",
    "  summarise(number_of_rides = n()   #calculates the number of rides and average duration \n",
    "  ,average_duration = mean(ride_length)) %>%   # calculates the average duration\n",
    "  arrange(member_casual, month) # sorts"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "a8806a30",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:49:41.086445Z",
     "iopub.status.busy": "2023-08-15T17:49:41.084818Z",
     "iopub.status.idle": "2023-08-15T17:49:47.593232Z",
     "shell.execute_reply": "2023-08-15T17:49:47.591210Z"
    },
    "papermill": {
     "duration": 6.530654,
     "end_time": "2023-08-15T17:49:47.596053",
     "exception": false,
     "start_time": "2023-08-15T17:49:41.065399",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'member_casual'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "image/png": "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\n65ITHGf2vDll2qc/nW7eru/LnVrYNO3UkW1er3dox/vzrxbtOiLSULzuXIdTRFy5DhHJzc31\n3Wqw2kXktNNTxnL+V+KU021KNImI0VJ+6dKlF8YkN39wyN7POqx9fUfXV5v6FqWkpNx//5/b\ncrlcXq+e51w2mUwmk8nr9TocDh3HFpnFYjEYDG632+l0hjuLiIjVatU0zeVyuVyucGcRTdN0\nOXDo/8kUkUh46j9i80RUGCHPxURynmDo9cyMXnkiak8IJQVa7F4atCbpmiGfv9b/z3vaaw2Z\ntTFvU/K4kaOl7/yC7372wOeDnplurNv6lbkP10w+f/4RU7RFM0YvWfxO/p2IphlFJDt1Qcce\ni/0L27dv77swcW5fkfV7cpxlLOf/V96b44qvE3/RjV5fKmrtmVT/1RYtWrRo0cJ/NS0tTd9i\nZ7fbfcXu3LlzOo4tsri4OIvF4nK5IiSPxWLRNM3hcOTk5IQ7ixiNRl2KXf6vbWwB6xWXiM0T\nUWGEPBcTyXmCERurz6PRK4/ZbDYajXl5ednZ2boMBP4i0EPBS0/lVOva6e/L73u4am7aJd5X\n4fVkvzx0pvW2J2Y838vf6kTEXvoO8WR/nOo0n2d6d9Twaev+EBF7qYdWrly5cuXKZYteMZgS\nV15QvVTL8hbjx5vO1zXnuR+2ns277tYyIpK+d/qjPfqdyPNc2Kp7/fHshNpXB/gAAQAALneB\nHrGrZDWe3Zf59+VndmYYrZc4B0r2H+/uynY+Wjf6+61b/QvNUTXq1WnYo36JeYNH23q1q1U+\n5sc1b67anTZySMmCZmnmQe1qPfPGyLWln62V4Phw2sTo8q26lIsWkbiqHUpk9xn84uzHH7wt\nXsve+tm7G7Jin+9BsQMAAFeKQIvdc41KdX3v4W/G7rwx3yG37GNruy3an3zdnILvm/HLQRF5\nY9z/vLkmvuqIdyff0Pb5SY45ry2ZNe6M01y+St2BY4fVi77E6yGqd3jpMcfk9yeOSMvVqtVr\nPnpQT98zuQZT8ujpL741a/6Ul57LNcVVrZ4yePKoBjF6vu8VAAAgkgVa7O5fNOf5yvc0r1K/\na+9OIrJz4Zuj07e/MWP+UU/ZhUvaF3zfcreOXXnrxW/SjPHt+g5r98+fMWuKquU/14n/Pq0e\nGdTqkYusbE2s02fomD4FpwEAAFBUoK+xiyp557afVv77BsPrE0eKyLrhg16Y8F7sjQ8s37b9\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "all_trips_clean %>% \n",
    "  mutate(month = month(started_at, label = TRUE)) %>%\n",
    "  group_by(member_casual, month) %>% \n",
    "  summarise(number_of_rides = n()\n",
    "            ,average_duration = mean(ride_length)) %>% \n",
    "  arrange(member_casual, month)  %>% \n",
    "  ggplot(aes(x = month, y = number_of_rides, fill = member_casual)) +\n",
    "  geom_col(position = \"dodge\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6cc6eac6",
   "metadata": {
    "papermill": {
     "duration": 0.018122,
     "end_time": "2023-08-15T17:49:47.632339",
     "exception": false,
     "start_time": "2023-08-15T17:49:47.614217",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The visualizations illustrate several of the chief differences between casual riders and members.  As shown in the weekday graph, member ride volumes peak toward the middle of the week, whereas causal ride volumes are highest on the weekends.  Furthermore, while both ride types peak during the summer, the summer increase is much more dramatic for casual rides.  These findings suggest that many members are likely using the bikes to get to and from work, whereas casual riders and using them for recreational purposes.  This is why we see more consistency for member rides throughout the year, and explains why those riders choose to purchase memberships (they use the bikes frequently/regularly).  \n",
    "\n",
    "Offering a special summer and or/weekend membership option could help to convert many causual riders to members.  Additionally, heavily marketing the yearly memberships to casual riders during the summer (similar to radio stations that, during the holiday season, remind listeners that they play popular music throughout the year) should generate more memberships.  "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "161bdbe2",
   "metadata": {
    "papermill": {
     "duration": 0.018069,
     "end_time": "2023-08-15T17:49:47.668402",
     "exception": false,
     "start_time": "2023-08-15T17:49:47.650333",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Create/export a CSV for use with Power BI"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "cbd79641",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-15T17:49:47.709338Z",
     "iopub.status.busy": "2023-08-15T17:49:47.706923Z",
     "iopub.status.idle": "2023-08-15T17:49:52.081019Z",
     "shell.execute_reply": "2023-08-15T17:49:52.079101Z"
    },
    "papermill": {
     "duration": 4.397968,
     "end_time": "2023-08-15T17:49:52.084619",
     "exception": false,
     "start_time": "2023-08-15T17:49:47.686651",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "counts <- aggregate(all_trips_clean$ride_length ~ all_trips_clean$member_casual + all_trips_clean$day_of_week, FUN = mean)\n",
    "write.csv(counts, file = '/kaggle/working/avg_ride_length.csv')\n",
    "\n",
    "\n",
    "\n",
    "\n"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 197.240339,
   "end_time": "2023-08-15T17:49:52.425377",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2023-08-15T17:46:35.185038",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
