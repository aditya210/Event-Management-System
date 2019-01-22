create table admin(admin_id varchar(10) primary key,admin_pwd text not null,admin_name text not null);

insert into admin values('Ajit','Ajit','Ajit');

create table customer(cust_id varchar(50) primary key,cust_pwd text not null,cust_name text not null,cust_addr text not null,cust_phone text not null,cust_email text not null);

create table decorator(
	decorator_id int auto_increment primary key,
	decorator_name text not null,
	decorator_contact_person text not null,
	decorator_address text not null,
	decorator_phone text not null,
	decorator_email text not null,
	decorator_rate float not null
);

create table caterer(
	caterer_id int auto_increment primary key,
	caterer_name text not null,
	caterer_contact_person text not null,
	caterer_address text not null,
	caterer_phone text not null,
	caterer_email text not null
);

create table venue(
	venue_id int auto_increment primary key,
	venue_name text not null,
	venue_contact_person text not null,
	venue_address text not null,
	venue_phone text not null,
	venue_email text not null,
	venue_rate float not null,
	
);

create table photographer(
	p_id int auto_increment primary key,
	p_name text not null,
	p_contact_person text not null,
	p_address text not null,
	p_phone text not null,
	p_email text not null,
	p_rate float not null
);

create table gallery(
	g_id int auto_increment primary key,
	g_type text not null,
	g_img text not null
);

create table thali(
	t_id int auto_increment primary key,
	t_name text not null,
	t_type text not null,
	t_rate float not null,
	t_path text not null,
	t_img text not null
);

create table bill(
	bill_no int auto_increment primary key,
	bill_date date not null,
	event_date date not null,
	occassion text not null,
	venue_id int references venue(venue_id),
	decorator_id int references decorator(decorator_id),
	caterer_id int references caterer(caterer_id),
	p_id int references photographer(p_id),
	no_of_person int not null,
	t_id int references thali(t_id),
	total_amt float not null,
	cust_id text references customer(cust_id),
	status text	
);

create table feedback(
	f_id int auto_increment primary key,
	f_date date,
	f_by text,
	f_msg text
);





