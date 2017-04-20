# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "创建系统默认参数--职位分类"

  SysParam.create!([code: "00JC", value: "001", description: "IT/互联网" ])
  SysParam.create!([code: "00JC", value: "002", description: "教育" ])
  SysParam.create!([code: "00JC", value: "003", description: "金融" ])
  SysParam.create!([code: "00JC", value: "004", description: "房地产" ])
  SysParam.create!([code: "00JC", value: "005", description: "医药" ])

puts "创建系统默认参数--职位分类 完成"
