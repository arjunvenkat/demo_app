# == Schema Information
#
# Table name: enrollments
#
#  id         :integer          not null, primary key
#  student_id :integer
#  section_id :integer
#

class Enrollment < ActiveRecord::Base
end
