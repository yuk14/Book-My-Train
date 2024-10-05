-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2022 at 07:25 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orrsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `orrs_admin`
--

CREATE TABLE `orrs_admin` (
  `admin_id` int(20) NOT NULL,
  `admin_fname` varchar(200) NOT NULL,
  `admin_lname` varchar(200) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_uname` varchar(200) NOT NULL,
  `admin_pwd` varchar(200) NOT NULL,
  `admin_dpic` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orrs_admin`
--

INSERT INTO `orrs_admin` (`admin_id`, `admin_fname`, `admin_lname`, `admin_email`, `admin_uname`, `admin_pwd`, `admin_dpic`) VALUES
(1, 'System ', 'Admin', 'admin@mail.com', 'Administrator', '903b21879b4a60fc9103c3334e4f6f62cf6c3a2d', 'admin-icn.png');
UPDATE `orrs_admin` SET `admin_pwd` = SHA1('admin123') WHERE `orrs_admin`.`admin_id` = 1; 



-- --------------------------------------------------------

--
-- Table structure for table `orrs_employee`
--

CREATE TABLE `orrs_employee` (
  `emp_id` int(20) NOT NULL,
  `emp_fname` varchar(200) NOT NULL,
  `emp_lname` varchar(200) NOT NULL,
  `emp_nat_idno` varchar(200) NOT NULL,
  `emp_phone` varchar(200) NOT NULL,
  `emp_addr` varchar(200) NOT NULL,
  `emp_uname` varchar(200) NOT NULL,
  `emp_email` varchar(200) NOT NULL,
  `emp_pwd` varchar(200) NOT NULL,
  `emp_dpic` varchar(200) NOT NULL,
  `emp_dept` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orrs_employee`
--

INSERT INTO `orrs_employee` (`emp_id`, `emp_fname`, `emp_lname`, `emp_nat_idno`, `emp_phone`, `emp_addr`, `emp_uname`, `emp_email`, `emp_pwd`, `emp_dpic`, `emp_dept`) VALUES
(1, 'John', 'Deacon', '866861970', '+31024579651', '79 Green Avenue', 'deacon', 'employee@mail.com', '903b21879b4a60fc9103c3334e4f6f62cf6c3a2d', 'defaultimg.jpg', 'Train Captain');
UPDATE `orrs_employee` SET `emp_pwd` = SHA1('gowda') WHERE `orrs_employee`.`emp_id` = 101; 


-- --------------------------------------------------------

--
-- Table structure for table `orrs_passenger`
--

CREATE TABLE `orrs_passenger` (
  `pass_id` int(20) NOT NULL,
  `pass_fname` varchar(200) NOT NULL,
  `pass_lname` varchar(200) NOT NULL,
  `pass_phone` varchar(200) NOT NULL,
  `pass_addr` varchar(200) NOT NULL,
  `pass_email` varchar(200) NOT NULL,
  `pass_pwd` varchar(200) NOT NULL,
  `pass_dpic` varchar(200) NOT NULL,
  `pass_uname` varchar(200) NOT NULL,
  `pass_bday` varchar(200) NOT NULL,
  `pass_bio` longtext NOT NULL,
  `pass_train_number` varchar(200) NOT NULL,
  `pass_train_name` varchar(200) NOT NULL,
  `pass_dep_station` varchar(200) NOT NULL,
  `pass_dep_time` varchar(200) NOT NULL,
  `pass_arr_station` varchar(200) NOT NULL,
  `pass_train_fare` varchar(200) NOT NULL,
  `pass_fare_payment_code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orrs_passenger`
--

<!--INSERT INTO `orrs_passenger` (`pass_id`, `pass_fname`, `pass_lname`, `pass_phone`, `pass_addr`, `pass_email`, `pass_pwd`, `pass_dpic`, `pass_uname`, `pass_bday`, `pass_bio`, `pass_train_number`, `pass_train_name`, `pass_dep_station`, `pass_dep_time`, `pass_arr_station`, `pass_train_fare`, `pass_fare_payment_code`) VALUES
(4, 'Christine', 'Moore', '7778885454', '44 Demo Address', 'christine@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'christine', '', '', 'CA556680', 'ZX Express', 'Test Station', '7:00 PM', 'Test Demo Station', '65', 'CAS0014587'),
(5, 'John', 'Barnes', '7412225698', '32 Ocello Street', 'johnk@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'johnbarnes', '', '', 'CA-777', 'Corridor Express', 'New York', '1:00 PM', 'Washington', '38', '102458700041'),
(6, 'Fritz', 'Mickk', '7412560000', '80 Russell Street', 'fritz@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'fritz', '', '', 'CA-007', 'Black Water', 'Chicago', '7:00 AM', 'Carbondale', '33', '107856452120'),
(7, 'Raisa', 'Taylor', '8542221450', '22 Valley Street', 'taylor@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'raisataylor', '', '', '', '', '', '', '', '', ''),
(8, 'Michael', 'Murdock', '7414587744', '43 Private Lane', 'murdock@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'murdock', '', '', '', '', '', '', '', '', ''),
(9, 'Greg', 'Alexander', '7458000015', '33 Pleasant Hill Road', 'greg@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'greg', '', '', '', '', '', '', '', '', ''),
(10, 'Dorothy', 'Garcia', '7458965555', '97 Euclid Avenue', 'garcia@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'dorothy', '', '', '', '', '', '', '', '', ''),
(11, 'Adele', 'Wilson', '7896547777', '28 Cook Hill Road', 'adelew@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'adele', '', '', '', '', '', '', '', '', ''),
(12, 'Martha', 'Meyer', '4570001569', '12 Eva Pearl Street', 'martha@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'martha', '', '', '', '', '', '', '', '', ''),
(13, 'Edna', 'Ashworth', '1475458500', '91 Timberbrook Lane', 'edna@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'edna', '', '', '', '', '', '', '', '', ''),
(14, 'Jody', 'Bennett', '7123650014', '60 Oral Lake Road', 'jody@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'jody', '', '', '', '', '', '', '', '', ''),
(15, 'Jerry', 'Campbell', '5478540000', '93 Sarah Drive', 'campbell@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'jerry', '', '', '', '', '', '', '', '', ''),
(16, 'Noelle', 'Ross', '3745698850', '41 Ray Court', 'ross@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'noelle', '', '', '', '', '', '', '', '', ''),
(17, 'William', 'Barnes', '6547778540', '31 Briarwood Road', 'wbarnes@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'wbarnes', '', '', '', '', '', '', '', '', ''),
(18, 'Fred', 'Jacquez', '6478540000', '17 Peck Court', 'fredj@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'fred', '', '', '', '', '', '', '', '', ''),
(19, 'Larry', 'Clark', '7696965450', '39 Dawson Drive', 'larry@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'larry', '', '', '', '', '', '', '', '', ''),
(20, 'Liam', 'Moore', '4750001458', '114 Southcross Avenue', 'liamoore@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'liamoore', '', '', 'CA-778', 'Adirondack', 'Seattle', '6:00 AM', 'New York', '198', '100000789640');
-->
INSERT INTO `orrs_passenger` (`pass_id`, `pass_fname`, `pass_lname`, `pass_phone`, `pass_addr`, `pass_email`, `pass_pwd`, `pass_dpic`, `pass_uname`, `pass_bday`, `pass_bio`, `pass_train_number`, `pass_train_name`, `pass_dep_station`, `pass_dep_time`, `pass_arr_station`, `pass_train_fare`, `pass_fare_payment_code`) 
VALUES ('21', 'Yukthi', 'Ramesh', '7975884014', 'Banglore', 'yuk@mail.com', '9651b4450fc2ff952c3d8ba8d0eab267a3172b72', '', 'yuk', '', '', 'CA-107', 'Colonial', 'Boston', '10:45 AM', 'New York', '35', '1004875963');
UPDATE `orrs_passenger` SET `pass_pwd` = SHA1('yuk123') WHERE `orrs_passenger`.`pass_id` = 21; 

INSERT INTO `orrs_passenger` (`pass_id`, `pass_fname`, `pass_lname`, `pass_phone`, `pass_addr`, `pass_email`, `pass_pwd`, `pass_dpic`, `pass_uname`, `pass_bday`, `pass_bio`, `pass_train_number`, `pass_train_name`, `pass_dep_station`, `pass_dep_time`, `pass_arr_station`, `pass_train_fare`, `pass_fare_payment_code`)
VALUES ('22', 'Shobha', 'Ramesh', '9880562580', 'Bengaluru', 'shoram@mail.com',  SHA1('sho123'), '', 'sho', '', '', '', '', '', '', '', '', '') 


INSERT INTO `orrs_passenger` (
  `pass_id`,
  `pass_fname`,
  `pass_lname`,
  `pass_phone`,
  `pass_addr`,
  `pass_email`,
  `pass_pwd`,
  `pass_dpic`,
  `pass_uname`,
  `pass_bday`,
  `pass_bio`,
  `pass_train_number`,
  `pass_train_name`,
  `pass_dep_station`,
  `pass_dep_time`,
  `pass_arr_station`,
  `pass_train_fare`,
  `pass_fare_payment_code`
) VALUES
  (23, 'Ravi', 'Kumar', '9876543210', '123 Main St', 'ravi.kumar@example.com', 'password123', 'profile_pic11.jpg', 'ravi_k', '1990-05-15', '', '12951', 'Rajdhani Express', 'New Delhi', '09:00:00', 'Mumbai Central', '2500', 'PAYMENT123'),
  (24, 'Ananya', 'Singh', '8765432109', '456 Oak St', 'ananya.singh@example.com', 'securepass456', 'profile_pic12.jpg', 'ananya_s', '1985-08-22', '', '12008', 'Shatabdi Express', 'Chennai Central', '12:30:00', 'Bangalore City', '1200', 'PAYMENT456'),
  (25, 'Vikas', 'Sharma', '7654321098', '789 Pine St', 'vikas.sharma@example.com', 'vikaspass789', 'profile_pic13.jpg', 'vikas_s', '1988-11-10', '', '12273', 'Duronto Express', 'Howrah Junction', '22:45:00', 'New Delhi', '800', 'PAYMENT789'),
  (26, 'Sneha', 'Verma', '6543210987', '101 Elm St', 'sneha.verma@example.com', 'snehapass123', 'profile_pic14.jpg', 'sneha_v', '1993-04-28', '', '12203', 'Garib Rath', 'Patna Junction', '08:15:00', 'Lokmanya Tilak Terminus', '950', 'PAYMENTABC'),
  (27, 'Prateek', 'Gupta', '5432109876', '202 Maple St', 'prateek.g@example.com', 'prateekpass456', 'profile_pic15.jpg', 'prateek_g', '1982-07-17', '', '12035', 'Jan Shatabdi', 'Ahmedabad Junction', '06:50:00', 'Jaipur Junction', '500', 'PAYMENTDEF'),
  (28, 'Neha', 'Yadav', '4321098765', '303 Birch St', 'neha.y@example.com', 'nehapass789', 'profile_pic16.jpg', 'neha_y', '1995-01-03', '', '12952', 'Rajdhani Express', 'Mumbai Central', '17:30:00', 'New Delhi', '1800', 'PAYMENTGHI'),
  (29, 'Rahul', 'Mishra', '3210987654', '404 Cedar St', 'rahul.m@example.com', 'rahulpass123', 'profile_pic17.jpg', 'rahul_m', '1987-09-12', '', '12218', 'Sampark Kranti', 'Chandigarh Junction', '14:20:00', 'Ernakulam Junction', '1500', 'PAYMENTJKL'),
  (30, 'Aishwarya', 'Saxena', '2109876543', '505 Willow St', 'aishwarya.s@example.com', 'aishwaryapass456', 'profile_pic18.jpg', 'aishwarya_s', '1998-02-20', '', '12571', 'Humsafar Express', 'Pune Junction', '23:00:00', 'Lucknow Junction', '2000', 'PAYMENTMNO'),
  (31, 'Amit', 'Patel', '1098765432', '606 Pine St', 'amit.p@example.com', 'amitpass789', 'profile_pic19.jpg', 'amit_p', '1980-06-25', '', '22849', 'Superfast Express', 'Hyderabad Deccan', '07:40:00', 'Bhubaneswar', '700', 'PAYMENTPQR'),
  (32, 'Radha', 'Iyer', '9876543210', '707 Oak St', 'radha.i@example.com', 'radhapass123', 'profile_pic20.jpg', 'radha_i', '1991-09-08', '', '15635', 'Express Mail', 'Varanasi Junction', '15:15:00', 'Guwahati', '1200', 'PAYMENTSUV');


-- --------------------------------------------------------

--
-- Table structure for table `orrs_passwordresets`
--

CREATE TABLE `orrs_passwordresets` (
  `pwd_id` int(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orrs_passwordresets`
--

INSERT INTO `orrs_passwordresets` (`pwd_id`, `email`, `status`) VALUES
(1, 'employee@mail.com', 'Approved'),
(2, 'test21@mail.com', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `orrs_train`
--

CREATE TABLE `orrs_train` (
  `id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `route` varchar(200) NOT NULL,
  `source` varchar(200) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `fare` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orrs_train`
--

INSERT INTO orrs_train (id, name, route, source, destination, time, class, number, fare)
VALUES
    (11, 'Rajdhani Express', 'Delhi to Mumbai', 'New Delhi', 'Mumbai Central', '09:00:00', 'AC First Class', 12951, 2500),
    (12, 'Shatabdi Express', 'Chennai to Bangalore', 'Chennai Central', 'Bangalore City', '12:30:00', 'AC Chair Car', 12008, 1200),
    (13, 'Duronto Express', 'Kolkata to Delhi', 'Howrah Junction', 'New Delhi', '22:45:00', 'Sleeper Class', 12273, 800),
    (14, 'Garib Rath', 'Patna to Mumbai', 'Patna Junction', 'Lokmanya Tilak Terminus', '08:15:00', 'Third AC', 12203, 950),
    (15, 'Jan Shatabdi', 'Ahmedabad to Jaipur', 'Ahmedabad Junction', 'Jaipur Junction', '06:50:00', 'Second Sitting', 12035, 500),
    (16, 'Rajdhani Express', 'Mumbai to Delhi', 'Mumbai Central', 'New Delhi', '17:30:00', 'AC Second Tier', 12952, 1800),
    (17, 'Sampark Kranti', 'Chandigarh to Kochi', 'Chandigarh Junction', 'Ernakulam Junction', '14:20:00', 'AC 3 Tier', 12218, 1500),
    (18, 'Humsafar Express', 'Pune to Lucknow', 'Pune Junction', 'Lucknow Junction', '23:00:00', 'AC 2 Tier', 12571, 2000),
    (19, 'Superfast Express', 'Hyderabad to Bhubaneswar', 'Hyderabad Deccan', 'Bhubaneswar', '07:40:00', 'Sleeper Class', 22849, 700),
    (20, 'Express Mail', 'Varanasi to Guwahati', 'Varanasi Junction', 'Guwahati', '15:15:00', 'Second AC', 15635, 1200);
    INSERT INTO orrs_train (name, route, source, destination, time, number, fare, Class)
VALUES 
(21,'Mandya Majesty Express', 'Bangalore - Mandya',  'Bangalore City Junction', 'Mandya','08:30:45', '12345', '500', 'First Class');


<!--INSERT INTO `orrs_train` (`id`, `name`, `route`, `current`, `destination`, `time`, `passengers`, `number`, `fare`) VALUES
(6, 'Black Water', 'Chicago - Carbondale', 'Chicago', 'Carbondale', '7:00 AM', '195', 'CA-007', '33'),
(10, 'ZX Express', 'Location One - Location Two', 'Test Station', 'Test Demo Station', '7:00 PM', '200', 'CA556680', '65'),
(11, 'Iron Range Express', 'Stockton - San Diego', 'Stockton', 'San Diego', '9:00 AM', '185', 'CA-697', '43'),
(12, 'Colonial', 'Boston - New York', 'Boston', 'New York', '10:45 AM', '255', 'CA-107', '35'),
(13, 'Corridor Express', 'New York - Washington', 'New York', 'Washington', '1:00 PM', '330', 'CA-777', '38'),
(14, 'Silver Meteor', 'New York - Miami', 'New York', 'Miami', '10:00 AM', '200', 'CA-707', '128'),
(15, 'Silver Star', 'New Orleans - Los Angeles', 'New Orleans', 'Los Angeles', '8:45 AM', '190', 'CA-107', '149'),
(16, 'Adirondack', 'Seattle - New York', 'Seattle', 'New York', '6:00 AM', '210', 'CA-778', '198'),
(17, 'Corridor Express', 'New York - Pittsfield', 'New York', 'Pittsfield', '12:45 PM', '195', 'CA-797', '45');
-->
-- --------------------------------------------------------

--
-- Table structure for table `orrs_train_tickets`
--

CREATE TABLE `orrs_train_tickets` (
  `ticket_id` int(20) NOT NULL,
  `pass_name` varchar(200) NOT NULL,
  `pass_email` varchar(200) NOT NULL,
  `pass_addr` varchar(200) NOT NULL,
  `train_name` varchar(200) NOT NULL,
  `train_no` varchar(200) NOT NULL,
  `train_dep_stat` varchar(200) NOT NULL,
  `train_arr_stat` varchar(200) NOT NULL,
  `train_fare` varchar(200) NOT NULL,
  `fare_payment_code` varchar(200) NOT NULL,
  `confirmation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orrs_train_tickets`
--

INSERT INTO `orrs_train_tickets` (`ticket_id`, `pass_name`, `pass_email`, `pass_addr`, `train_name`, `train_no`, `train_dep_stat`, `train_arr_stat`, `train_fare`, `fare_payment_code`, `confirmation`) VALUES
(5, 'Christine Moore', 'christine@mail.com', '44 Demo Address', 'ZX Express', 'CA556680', 'Test Station', 'Test Demo Station', '65', 'CAS0014587', ''),
(6, 'John Barnes', 'johnk@mail.com', '32 Ocello Street', 'Iron Range Express', 'CA-697', 'Stockton', 'San Diego', '43', '102458700041', 'Approved'),
(7, 'John Barnes', 'johnk@mail.com', '32 Ocello Street', 'Corridor Express', 'CA-777', 'New York', 'Washington', '38', '102458700041', 'Approved'),
(8, 'Fritz Mickk', 'fritz@mail.com', '80 Russell Street', 'Black Water', 'CA-007', 'Chicago', 'Carbondale', '33', '107856452120', 'Approved'),
(9, 'Liam Moore', 'liamoore@mail.com', '114 Southcross Avenue', 'Adirondack', 'CA-778', 'Seattle', 'New York', '198', '100000789640', 'Approved');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orrs_admin`
--
ALTER TABLE `orrs_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `orrs_employee`
--
ALTER TABLE `orrs_employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `orrs_passenger`
--
ALTER TABLE `orrs_passenger`
  ADD PRIMARY KEY (`pass_id`);

--
-- Indexes for table `orrs_passwordresets`
--
ALTER TABLE `orrs_passwordresets`
  ADD PRIMARY KEY (`pwd_id`);

--
-- Indexes for table `orrs_train`
--
ALTER TABLE `orrs_train`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orrs_train_tickets`
--
ALTER TABLE `orrs_train_tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orrs_admin`
--
ALTER TABLE `orrs_admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orrs_employee`
--
ALTER TABLE `orrs_employee`
  MODIFY `emp_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orrs_passenger`
--
ALTER TABLE `orrs_passenger`
  MODIFY `pass_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `orrs_passwordresets`
--
ALTER TABLE `orrs_passwordresets`
  MODIFY `pwd_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orrs_train`
--
ALTER TABLE `orrs_train`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `orrs_train_tickets`
--
ALTER TABLE `orrs_train_tickets`
  MODIFY `ticket_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


alter table orrs_passwordresets add COLUMN emp_id int(20) REFERENCES orrs_employee(emp_id); 

 alter table orrs_employee add COLUMN mgr_id int(20) REFERENCES orrs_admin(admin_id); 

 alter table orrs_train add COLUMN emp_id int(20) REFERENCES orrs_employee(emp_id); 

 
UPDATE `orrs_train` SET `emp_id` = '101' WHERE `orrs_train`.`number` = '12008'; UPDATE `orrs_train` SET `emp_id` = '101' WHERE `orrs_train`.`number` = '12035'; UPDATE `orrs_train` SET `emp_id` = '101' WHERE `orrs_train`.`number` = '12203'; UPDATE `orrs_train` SET `emp_id` = '101' WHERE `orrs_train`.`number` = '12218'; UPDATE `orrs_train` SET `emp_id` = '101' WHERE `orrs_train`.`number` = '12273'; UPDATE `orrs_train` SET `emp_id` = '101' WHERE `orrs_train`.`number` = '12345'; UPDATE `orrs_train` SET `emp_id` = '103' WHERE `orrs_train`.`number` = '12571'; UPDATE `orrs_train` SET `emp_id` = '103' WHERE `orrs_train`.`number` = '12951'; UPDATE `orrs_train` SET `emp_id` = '103' WHERE `orrs_train`.`number` = '12952'; UPDATE `orrs_train` SET `emp_id` = '103' WHERE `orrs_train`.`number` = '15635'; UPDATE `orrs_train` SET `emp_id` = '101' WHERE `orrs_train`.`number` = '22849'; 

alter table orrs_train_tickets add COLUMN train_id int(20) REFERENCES orrs_train(id); 
UPDATE `orrs_train_tickets` SET `train_id` = '11' WHERE `orrs_train_tickets`.`ticket_id` = 10; UPDATE `orrs_train_tickets` SET `train_id` = '21' WHERE `orrs_train_tickets`.`ticket_id` = 12; UPDATE `orrs_train_tickets` SET `train_id` = '19' WHERE `orrs_train_tickets`.`ticket_id` = 14; UPDATE `orrs_train_tickets` SET `train_id` = '13' WHERE `orrs_train_tickets`.`ticket_id` = 15; 

alter table orrs_passenger add COLUMN train_id int(20) REFERENCES orrs_train(id); 

alter table orrs_train_tickets add COLUMN pass_id int(20) REFERENCES orrs_passenger(pass_id); 