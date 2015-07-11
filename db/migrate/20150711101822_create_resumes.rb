class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :name
      t.string :department
      t.string :college
      t.string :place
      t.string :mobile
      t.string :objective
      t.string :education
      t.string :skills
      t.string :hobbies
      t.string :training

      t.timestamps null: false
    end
  end
end
