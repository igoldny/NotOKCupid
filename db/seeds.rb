# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Conversation.destroy_all
Message.destroy_all
Question.destroy_all
Like.destroy_all
Answer.destroy_all
Response.destroy_all

  # seed question and answers
  q1= Question.create(title:'תנוחה אהובה')
  a1= Answer.create(question_id: q1.id, body:'דוגי',order:1)
  a2= Answer.create(question_id: q1.id, body:'בן / בת הזוג בסלון ואת/ה רואה פורנו',order:2)
  a3= Answer.create(question_id: q1.id, body:'מסיונרי',order:3)
  a4= Answer.create(question_id: q1.id, body:'69',order:4)

  q2= Question.create(title:'אני אדם של')
  a9= Answer.create(question_id: q2.id, body:'עיניים',order:1)
  a10= Answer.create(question_id: q2.id, body:'משולש',order:2)
  a12= Answer.create(question_id: q2.id, body:'חור של תחת',order:4)
  a14= Answer.create(question_id: q2.id, body:'נחיר שמאל',order:6)
  a15= Answer.create(question_id: q2.id, body:'כרס',order:7)

  q3= Question.create(title:'איפה היית רוצה לסיים את היום שלך במידברן')
  a18= Answer.create(question_id: q3.id, body:'צפייה על השקיעה',order:1)
  a19= Answer.create(question_id: q3.id, body:'השתתפות באורגיה המונית',order:2)
  a20= Answer.create(question_id: q3.id, body:'לשכב על אדמת המדבר ולהתבונן בכוכבים',order:3)
  a21= Answer.create(question_id: q3.id, body:'מסטול',order:4)

  q4= Question.create(title:'מה הפנטזיה הכי גדולה שלך?')
  a22= Answer.create(question_id: q4.id, body:'להריח את בית השחי של הבן זוג',order:1)
  a23= Answer.create(question_id: q4.id, body:'להצליף בטוסיק',order:2)
  a24= Answer.create(question_id: q4.id, body:'סקס בציבור',order:3)
  a25= Answer.create(question_id: q4.id, body:'S&M',order:4)

  q5= Question.create(title:'שנות ניסיון במידברן')
  a26= Answer.create(question_id: q5.id, body:'1',order:1)
  a27= Answer.create(question_id: q5.id, body:'2',order:2)
  a28= Answer.create(question_id: q5.id, body:'3',order:3)
  a29= Answer.create(question_id: q5.id, body:'4',order:4)

  q6= Question.create(title:'פעילות מועדפת במידברן')
  a30= Answer.create(question_id: q6.id, body:'סקס',order:1)
  a31= Answer.create(question_id: q6.id, body:'לרקוד',order:2)
  a32= Answer.create(question_id: q6.id, body:'לעשות סמים',order:3)
  a34= Answer.create(question_id: q6.id, body:'להכיר אנשים חדשים',order:5)
  a35= Answer.create(question_id: q6.id, body:'אומנות',order:6)

  q7= Question.create(title:'הסיכוי שאני אשכב עם מישהו/י במידברן הוא')
  a36= Answer.create(question_id: q7.id, body:'100',order:1)
  a37= Answer.create(question_id: q7.id, body:'75',order:2)
  a38= Answer.create(question_id: q7.id, body:'50',order:3)
  a39= Answer.create(question_id: q7.id, body:'25',order:4)

  q8= Question.create(title:'האם אתה מחפש שותף לfree love')
  a40= Answer.create(question_id: q8.id, body:'כן',order:1)
  a41= Answer.create(question_id: q8.id, body:'לא',order:2)
  a42= Answer.create(question_id: q8.id, body:'יש לי כבר',order:3)

  q9= Question.create(title:'הגיפטינג שהכי ארצה לקבל')
  a43= Answer.create(question_id: q9.id, body:'ספנקינג',order:1)
  a44= Answer.create(question_id: q9.id, body:'עיסוי',order:2)
  a46= Answer.create(question_id: q9.id, body:'חיבוק',order:4)
  a47= Answer.create(question_id: q9.id, body:'שיחה מלב אל לב',order:5)

  q10= Question.create(title:'מה התכונה הכי חשובה אצל החמות שלך')
  a49= Answer.create(question_id: q10.id, body:'שתכין אחלה חמין',order:1)
  a50= Answer.create(question_id: q10.id, body:'שלא תתערב בחייך',order:2)
  a51= Answer.create(question_id: q10.id, body:'שתהייה מילפית פתוחה להצעות',order:3)

  q11= Question.create(title:'סמים אהובים')
  a52= Answer.create(question_id: q11.id, body:'MD',order:1)
  a53= Answer.create(question_id: q11.id, body:'גראס',order:2)
  a54= Answer.create(question_id: q11.id, body:'פוסטינור',order:3)
  a55= Answer.create(question_id: q11.id, body:'LSD',order:4)
  a56= Answer.create(question_id: q11.id, body:'אהבה',order:5)

  q12= Question.create(title:'איזה ברנר אתה')
  a57= Answer.create(question_id: q12.id, body:'סטלן',order:1)
  a58= Answer.create(question_id: q12.id, body:'חרמן',order:2)
  a59= Answer.create(question_id: q12.id, body:'בליין',order:3)
  a60= Answer.create(question_id: q12.id, body:'אמן',order:4)
  a61= Answer.create(question_id: q12.id, body:'בעל איבר מין קטן',order:5)

  q13= Question.create(title:'לבוש מידברן אהוב')
  a62= Answer.create(question_id: q13.id, body:'וואנזי',order:1)
  a63= Answer.create(question_id: q13.id, body:'חצאית טוטו',order:2)
  a64= Answer.create(question_id: q13.id, body:'עירום',order:3)
  a65= Answer.create(question_id: q13.id, body:'לדים',order:4)

  q14= Question.create(title:'איזה זין את/ה מעדיפ/ה')
  a66= Answer.create(question_id: q14.id, body:'קצר וקולע',order:1)
  a67= Answer.create(question_id: q14.id, body:'ארוך ומייגע',order:2)
  a68= Answer.create(question_id: q14.id, body:'שמנמן ומזיע',order:3)
  a69= Answer.create(question_id: q14.id, body:'עבה ומפתיע',order:4)
  a70= Answer.create(question_id: q14.id, body:'לא רלוונטי',order:5)

  q15= Question.create(title:'איזה פות את/ה מעדיף')
  a71= Answer.create(question_id: q15.id, body:'וילון',order:1)
  a72= Answer.create(question_id: q15.id, body:'פרסה',order:2)
  a73= Answer.create(question_id: q15.id, body:'בארבי',order:3)
  a74= Answer.create(question_id: q15.id, body:'צבעוני',order:4)
  a75= Answer.create(question_id: q15.id, body:'פאף',order:5)
