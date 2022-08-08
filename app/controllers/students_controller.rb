class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    def grade 
        grades = Student.order("grade DESC")
        render json: grades
    end
    def highest_grade
        highest_grade = Student.order("grade DESC").first
        render json: highest_grade
    end
end
