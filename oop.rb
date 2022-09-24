class Man
    attr_accessor :name, :hair ,:gender , :phone, :email, :nation
    attr_accessor :height, :weight, :age
    def initialize(name,gender,hair,height,weight,age,phone,email,nation)          
            @name = name    
            @gender = gender    
            @hair = hair
            @height = height
            @weight = weight
            @phone =  phone
            @email = email 
            @age = age
            @nation = nation 
    end 
    def show
        puts "Tên : #{name}, Giới tính: #{gender},  Tuổi: #{age}, Tóc: #{lan}, Chiều cao: #{height}, Cân nặng: #{height}, Số điện thoại: #{phone}, Email: #{email}, Dân tộc: #{nation}\n"
    end 
end 

class Student < Man
    attr_accessor :grade1, :grade2, :grade3, :average 
    def nhap(grade1,grade2,grade3)
        @grade1 = grade1
        @grade2 = grade2
        @grade3 = grade3
        @average = (grade1 + grade2 + grade3)*0.1 /3
    end  
    def show
        puts "Tên : #{name}, Giới tính: #{gender},  Tuổi: #{age}, Tóc: #{hair}, Chiều cao: #{height}, Cân nặng: #{height}, Số điện thoại: #{phone}, Email: #{email}, Dân tộc: #{nation}, Điểm trung bình: #{average}\n"
    end
end
a = Array.new()
Student1 = Student.new("Tiến","Nam","Đen","1m6","45kg","21","0123456789","tien@gmail.com","Kinh")
Student1.nhap(7,8,9)
a.push(Student1)
Student2 = Student.new("Đông","Nam","Đen","1m6","45kg","21","0123456789","tien@gmail.com","Kinh")
Student2.nhap(8,9,10)
a.push(Student2)
Student3 = Student.new("Nam","Nam","Đen","1m6","45kg","21","0123456789","tien@gmail.com","Kinh")
Student3.nhap(7,9,9)
a.push(Student3)
a.each_index {
    |index|
    puts "#{a[index].show()}"
}
print "Danh sách sinh viên sau khi sắp xếp:\n"
for x in a.sort_by{|stu|[stu.average]} do
    puts "#{x.show}"
end