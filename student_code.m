% School Management System in MATLAB
clc;
clear;

% Define structures for students, teachers, and courses
students = struct('ID', {}, 'Name', {}, 'Age', {}, 'Class', {});
teachers = struct('ID', {}, 'Name', {}, 'Age', {}, 'Subject', {});
courses = struct('Code', {}, 'Name', {}, 'TeacherID', {});

while true
    disp('School Management System');
    disp('1. Add Student');
    disp('2. Display Students');
    disp('3. Delete Student');
    disp('4. Add Teacher');
    disp('5. Display Teachers');
    disp('6. Delete Teacher');
    disp('7. Add Course');
    disp('8. Display Courses');
    disp('9. Delete Course');
    disp('10. Exit');
    
    choice = input('Enter your choice: ');
    
    switch choice
        case 1
            % Add Student
            studentInfo.ID = input('Enter Student ID: ', 's');
            studentInfo.Name = input('Enter Student Name: ', 's');
            studentInfo.Age = input('Enter Student Age: ');
            studentInfo.Class = input('Enter Student Class: ', 's');
            students(end+1) = studentInfo;
            disp('Student data added successfully.');
            
        case 2
            % Display Students
            disp('Students:');
            for i = 1:length(students)
                disp(students(i));
            end
            
        case 3
            % Delete Student
            delID = input('Enter Student ID to delete: ', 's');
            students = students(~strcmp({students.ID}, delID));
            disp('Student data deleted successfully.');
            
        case 4
            % Add Teacher
            teacherInfo.ID = input('Enter Teacher ID: ', 's');
            teacherInfo.Name = input('Enter Teacher Name: ', 's');
            teacherInfo.Age = input('Enter Teacher Age: ');
            teacherInfo.Subject = input('Enter Teacher Subject: ', 's');
            teachers(end+1) = teacherInfo;
            disp('Teacher data added successfully.');
            
        case 5
            % Display Teachers
            disp('Teachers:');
            for i = 1:length(teachers)
                disp(teachers(i));
            end
            
        case 6
            % Delete Teacher
            delID = input('Enter Teacher ID to delete: ', 's');
            teachers = teachers(~strcmp({teachers.ID}, delID));
            disp('Teacher data deleted successfully.');
            
        case 7
            % Add Course
            courseInfo.Code = input('Enter Course Code: ', 's');
            courseInfo.Name = input('Enter Course Name: ', 's');
            courseInfo.TeacherID = input('Enter Teacher ID for the Course: ', 's');
            courses(end+1) = courseInfo;
            disp('Course data added successfully.');
            
        case 8
            % Display Courses
            disp('Courses:');
            for i = 1:length(courses)
                disp(courses(i));
            end
            
        case 9
            % Delete Course
            delCode = input('Enter Course Code to delete: ', 's');
            courses = courses(~strcmp({courses.Code}, delCode));
            disp('Course data deleted successfully.');
            
        case 10
            % Exit
            break;
            
        otherwise
            disp('Invalid choice. Please try again.');
    end
    
    disp(' ');
end

disp('Thank you for using the School Management System.');
