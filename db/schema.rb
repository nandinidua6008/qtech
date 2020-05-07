# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20200507062958) do

  create_table "admins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",      null: false
    t.string   "password",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "email", unique: true, using: :btree
  end

  create_table "exam_creations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",          null: false
    t.integer  "exam_duration", null: false
    t.integer  "passing_marks", null: false
    t.integer  "subject_id"
    t.integer  "topic_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["subject_id"], name: "index_exam_creations_on_subject_id", using: :btree
    t.index ["topic_id"], name: "index_exam_creations_on_topic_id", using: :btree
  end

  create_table "questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "subject_id"
    t.integer  "topic_id"
    t.string   "question_type", null: false
    t.string   "question_body", null: false
    t.string   "option1",       null: false
    t.string   "option2",       null: false
    t.string   "option3"
    t.string   "option4"
    t.string   "answer"
    t.string   "model_answer",  null: false
    t.boolean  "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["subject_id"], name: "index_questions_on_subject_id", using: :btree
    t.index ["topic_id"], name: "index_questions_on_topic_id", using: :btree
  end

  create_table "results", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "exam_creation_id"
    t.integer  "schedule_id"
    t.integer  "user_id"
    t.string   "fraud_suspected"
    t.string   "grades"
    t.integer  "attempted_questions",   null: false
    t.integer  "unattempted_questions", null: false
    t.integer  "correct_answers",       null: false
    t.integer  "wrong_answers",         null: false
    t.integer  "marks",                 null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["exam_creation_id"], name: "index_results_on_exam_creation_id", using: :btree
    t.index ["schedule_id"], name: "index_results_on_schedule_id", using: :btree
    t.index ["user_id"], name: "index_results_on_user_id", using: :btree
  end

  create_table "schedules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date     "start_date",       null: false
    t.date     "end_date",         null: false
    t.date     "start_time"
    t.date     "end_time"
    t.date     "duration"
    t.integer  "exam_creation_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["exam_creation_id"], name: "index_schedules_on_exam_creation_id", using: :btree
  end

  create_table "subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "name", unique: true, using: :btree
    t.index ["name"], name: "name_2", unique: true, using: :btree
  end

  create_table "topics", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_topics_on_subject_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email"
    t.string   "firstname"
    t.string   "lastname"
    t.date     "DOB"
    t.string   "gender"
    t.integer  "phone_number"
    t.string   "password"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "rpassword"
    t.index ["email"], name: "email", unique: true, using: :btree
  end

  add_foreign_key "exam_creations", "subjects"
  add_foreign_key "exam_creations", "topics"
  add_foreign_key "questions", "subjects"
  add_foreign_key "questions", "topics"
  add_foreign_key "results", "exam_creations"
  add_foreign_key "results", "schedules"
  add_foreign_key "results", "users"
  add_foreign_key "schedules", "exam_creations"
  add_foreign_key "topics", "subjects"
end
