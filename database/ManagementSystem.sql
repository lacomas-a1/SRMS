SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Database: `ManagementSystem`


--
-- Table structure for table `class_srms`
--

CREATE TABLE `class_rms` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `class_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `class_created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_srms`
--

INSERT INTO `class_rms` (`class_id`, `class_name`, `class_code`, `class_created_on`) VALUES
(2, 'BSc 1st Semester Batch 2020', '20f9a4242c75dca66a19499f27fcd4c7',  '2020-12-19 18:47:34'),
(3, 'BSc 2nd Semester Batch 2020', '00deb091c5a5d480f7570d7cc1779e48',  '2020-12-19 19:02:00'),
(4, 'BSc 3rd Semester Batch 2020', '43ef97482f7b43c9b8e43ab11e85e71e',  '2020-12-19 19:04:12');

-- --------------------------------------------------------

--
-- Table structure for table `exam_srms`
--

CREATE TABLE `exam_rms` (
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `exam_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `exam_result_date` date NOT NULL,
  `exam_result_published` enum('No','Yes') COLLATE utf8_unicode_ci NOT NULL,
  `exam_status` enum('Enable','Disabled') COLLATE utf8_unicode_ci NOT NULL,
  `exam_added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam_srms`
--

INSERT INTO `exam_rms` (`exam_id`, `class_id`, `exam_name`, `exam_result_date`, `exam_result_published`, `exam_status`, `exam_added_on`) VALUES
(2, 2, 'BSc 1st Semester Exam 2020', '2020-12-22', 'Yes', 'Enable', '2020-12-21 16:32:52'),
(3, 3, 'BSc 2nd Semester Exam 2020', '0000-00-00', 'No', 'Enable', '2020-12-21 16:33:11'),
(4, 4, 'BSc 3rd Semester Exam 2020', '0000-00-00', 'No', 'Enable', '2020-12-21 16:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `marks_srms`
--

CREATE TABLE `marks_rms` (
  `marks_id` int(11) NOT NULL,
  `result_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `marks_srms`
--

INSERT INTO `marks_rms` (`marks_id`, `result_id`, `subject_id`, `marks`) VALUES
(1, 1, 4, 85),
(2, 1, 5, 56),
(3, 1, 3, 75),
(4, 1, 2, 89);

-- --------------------------------------------------------

--
-- Table structure for table `result_srms`
--

CREATE TABLE `result_rms` (
  `result_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `result_percentage` decimal(5,2) NOT NULL,
  `result_status` enum('Enable','Disabled') COLLATE utf8_unicode_ci NOT NULL,
  `result_added_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `result_srms`
--

INSERT INTO `result_rms` (`result_id`, `class_id`, `student_id`, `exam_id`, `result_percentage`, `result_status`, `result_added_by`) VALUES
(1, 1, 2, 1, '76.25', 'Enable', 'Master'),
(2, 2, 11, 2, '56.75', 'Enable', 'Peter Parker'),
(3, 2, 8, 2, '68.25', 'Enable', 'Peter Parker');

-- --------------------------------------------------------

--
-- Table structure for table `student_srms`
--

CREATE TABLE `student_rms` (
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `student_roll_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `student_gender` enum('Male','Female') COLLATE utf8_unicode_ci NOT NULL,
  `student_dob` date NOT NULL,
  `student_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL,
  `student_added_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `student_added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_srms`
--

INSERT INTO `student_rms` (`student_id`, `class_id`, `student_name`, `student_roll_no`, `student_gender`, `student_dob`, `student_status`, `student_added_by`, `student_added_on`) VALUES
(2, 1, 'Holly Shaw', '2', 'Female', '2003-03-12', 'Enable', 'Master', '2020-12-17 10:33:49'),
(3, 2, 'Keara Larson', 'BSC120201',  'Female', '1999-03-28', 'Enable', 'Master', '2020-12-21 11:55:53'),
(4, 2, 'Tara Kuhlman', 'BSC120202', 'Female', '1998-08-28', 'Enable', 'Master', '2020-12-21 11:57:01');
-- --------------------------------------------------------

--
-- Table structure for table `subject_srms`
--

CREATE TABLE `subject_rms` (
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `subject_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL,
  `subject_created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject_srms`
--

INSERT INTO `subject_rms` (`subject_id`, `class_id`, `subject_name`, `subject_status`, `subject_created_on`) VALUES
(2, 1, 'Kiswahili', 'Enable', '2020-12-16 15:44:04'),
(3, 1, 'Maths', 'Enable', '2020-12-16 16:37:33'),
(4, 1, 'Chemistry', 'Enable', '2020-12-17 17:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_srms`
--

CREATE TABLE `user_rms` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_contact_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_profile` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('Master','User') COLLATE utf8_unicode_ci NOT NULL,
  `user_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL,
  `user_created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_srms`
--

INSERT INTO `user_rms` (`user_id`, `user_name`, `user_contact_no`, `user_email`, `user_password`, `user_profile`, `user_type`, `user_status`, `user_created_on`) VALUES
(1, 'John Smith', '85236985520', 'johnsmith@gmail.com', 'password', '../images/21501.jpg', 'Master', 'Enable', '2020-12-15 06:32:20'),
(2, 'Peter Parker', '7412589630', 'peterparker@gmail.com', 'password', '../images/2290.jpg', 'User', 'Enable', '2020-12-15 18:38:35');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_srms`
--
ALTER TABLE `class_rms`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `exam_srms`
--
ALTER TABLE `exam_rms`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `marks_srms`
--
ALTER TABLE `marks_rms`
  ADD PRIMARY KEY (`marks_id`);

--
-- Indexes for table `result_srms`
--
ALTER TABLE `result_rms`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `student_srms`
--
ALTER TABLE `student_rms`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `subject_srms`
--
ALTER TABLE `subject_rms`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `user_srms`
--
ALTER TABLE `user_rms`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_srms`
--
ALTER TABLE `class_rms`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exam_srms`
--
ALTER TABLE `exam_rms`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `marks_srms`
--
ALTER TABLE `marks_rms`
  MODIFY `marks_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `result_srms`
--
ALTER TABLE `result_rms`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student_srms`
--
ALTER TABLE `student_rms`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `subject_srms`
--
ALTER TABLE `subject_rms`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_srms`
--
ALTER TABLE `user_rms`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


