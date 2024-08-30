select name from users where age<28

select name from users where gender='m' and city='bangalore'

select train_no, train_name from train where dept_time = '10:00:00'

select train.train_name, start_at.train_no from start_at, train 
where start_at.train_no = train.train_no and start_at.station_no = 2;

select station_no, station_name from station where hault > 10;

select train_no from stop_at where station_no !=2;

select train.train_name, reaches.arr_time from train, reaches 
where train.train_no = reaches.train_no and arr_time >= '04:00:00';

select train.train_name, train_stats.ac_seats, train_stats.base_fare from train, train_stats 
where train.train_no = train_stats.train_id and train_name = 'Shatabdi exp';

select name, max(age), mobile_no from users
where state='Karnataka';

select train.train_name, train_stats.non_ac_seats, train_stats.base_fare, reaches.arr_time from train, train_stats, reaches 
where train.train_no = train_stats.train_id and reaches.train_no = train.train_no
order by arr_time;
	
select users.name, users.age, users.mobile_no, users.pin from users, train_stats, train
where train.train_no = train_stats.train_id and train.train_name = 'Mysuru special' and train_stats.ac_seats = '5';

select train.train_no, train.train_name, train.dept_time from train, reaches
where train.train_no = reaches.train_no and reaches.station_no = 3 and train.Date > '2020-04-10';

select * from users
order by city;

select train.train_no, train.train_name, train.arrival_time, train.dept_time from train, station
where train.arrival_time = station.arrival_time and station.station_no = 2;

