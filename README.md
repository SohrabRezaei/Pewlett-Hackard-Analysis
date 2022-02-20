# Pewlett-Hackard-Analysis-Challenge

## Overview of the analysis

The purpose of the analysis is creating several tables with SQL in order to determine the number of retiring empolyees per title and find out who is eligible to sign up for the mentorship program.

## Results

* First, I join employees and titles tables and filter birth_date column between 1952 to 1955. Finally, I exported the file into an csv file.[![aa.jpg](https://i.postimg.cc/L8rrYxfP/aa.jpg)](https://postimg.cc/CRsv9HcM)

* I managed to remove duplicate employee numbers with [distinct on](https://www.postgresql.org/docs/9.5/sql-select.html) and filter employees who are still working in the company. [![l.jpg](https://i.postimg.cc/xCyqzqdS/l.jpg)](https://postimg.cc/jw2sVxN8) Finally, I exported the file into a csv file.

* I Used group by and count command to count the number of employees each title have. [![lm.jpg](https://i.postimg.cc/MTDKG4s6/lm.jpg)](https://postimg.cc/vg4dqPFk)

* I joined employees and department employees and titles together.Then, I filtered the birth dates to 1965 and people who are currently working to discover who is eligible to apply for mentorship program. [![m.jpg](https://i.postimg.cc/3rfYb2Vc/m.jpg)](https://postimg.cc/G9DW4TcF)

## Summary

* How many roles will need to be filled as the "silver tsunami" begins to make an impact?

As shown in the picture below , 72458 employees are retiring and their positions needs to be filled.
[![p.jpg](https://i.postimg.cc/SxsZ1M0D/p.jpg)](https://postimg.cc/VdxBd5kC)

* Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

In order to find qualified employees, I filtered out their titles and salary to determine the high position for each department. It is obvious that there aren't enough candidates to mentor the next generation of Pewlett Hackard employees based on the empty positions and the numbers that we see in this picture.

[![s.jpg](https://i.postimg.cc/7YgFg73c/s.jpg)](https://postimg.cc/Wh1YVdf6)
