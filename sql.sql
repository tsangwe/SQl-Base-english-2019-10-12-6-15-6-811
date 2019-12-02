CREATE SCHEMA `student_examination_sys`;

CREATE TABLE `student_examination_sys`.`student` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `age` INT NULL,
  `sex` VARCHAR(6) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `student_examination_sys`.`subject` (
  `id` INT NOT NULL,
  `subject` VARCHAR(45) NULL,
  `teacher` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `student_examination_sys`.`score` (
  `id` INT NOT NULL,
  `student_id` INT NULL,
  `subject_id` INT NULL,
  `score` FLOAT NULL,
  PRIMARY KEY (`id`));

INSERT INTO `student_examination_sys`.`student` (`id`, `name`, `age`, `sex`) VALUES ('001', 'zhangsan', '18', 'male');
INSERT INTO `student_examination_sys`.`student` (`id`, `name`, `age`, `sex`) VALUES ('002', 'lisi', '20', 'female');

INSERT INTO `student_examination_sys`.`subject` (`id`, `subject`, `teacher`, `description`) VALUES ('1001', 'Chinese', 'Mr. Wang', 'the exam is easy');
INSERT INTO `student_examination_sys`.`subject` (`id`, `subject`, `teacher`, `description`) VALUES ('1002', 'math', 'Miss Liu', 'the exam is difficult');

INSERT INTO `student_examination_sys`.`score` (`id`, `student_id`, `subject_id`, `score`) VALUES ('1', '001', '1001', '80');
INSERT INTO `student_examination_sys`.`score` (`id`, `student_id`, `subject_id`, `score`) VALUES ('2', '002', '1002', '60');
INSERT INTO `student_examination_sys`.`score` (`id`, `student_id`, `subject_id`, `score`) VALUES ('3', '001', '1001', '70');
INSERT INTO `student_examination_sys`.`score` (`id`, `student_id`, `subject_id`, `score`) VALUES ('4', '002', '1002', '60.5');
