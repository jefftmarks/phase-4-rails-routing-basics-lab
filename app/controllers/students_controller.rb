class StudentsController < ApplicationController

	def index
		students = Student.all
		render json: students
	end

	def grades
		students_by_grade = Student.order(grade: :desc)
		render json: students_by_grade
	end

	def highest_grade
		highest_grade = Student.order(grade: :desc).limit(1)
		render json: highest_grade[0]
	end

end
