SHOW VARIABLES LIKE 'secure_file_priv';

SET GLOBAL local_infile=1;

show global variables like 'local_infile';

LOAD DATA LOCAL INFILE 'C:/Users/mattc/OneDrive/Documents/Data/podcast data.csv'
INTO TABLE podcast_data
FIELDS TERMINATED BY ',' 
IGNORE 1 ROWS;

select 
count(id)
from podcast_data
where Episode_Length_minutes = '';

delete from podcast_data
where Episode_Length_minutes = '';

select *
from podcast_data;

select 
count(id)
from podcast_data
where Guest_Popularity_percentage = '';

delete from podcast_data
where Guest_Popularity_percentage = '';

select *
from podcast_data;

select 
count(id)
from podcast_data
where Guest_Popularity_percentage = ''
or id = ''
or Podcast_Name = ''
or Episode_Title = ''
or Genre = ''
or Host_Popularity_percentage = ''
or Publication_Day = ''
or Publication_Time = ''
or Number_of_Ads = ''
or Episode_Sentiment = ''
or Listening_Time_minutes = ''
;

delete from podcast_data
where Guest_Popularity_percentage = ''
or id = ''
or Podcast_Name = ''
or Episode_Title = ''
or Genre = ''
or Host_Popularity_percentage = ''
or Publication_Day = ''
or Publication_Time = ''
or Number_of_Ads = ''
or Episode_Sentiment = ''
or Listening_Time_minutes = ''
;

select *
from podcast_data
order by id;

select
Episode_Title,
substring_index(Episode_Title, ' ', -1)
from podcast_data;

alter table podcast_data
add episode_num int;

update podcast_data
set episode_num = substring_index(Episode_Title, ' ', -1);