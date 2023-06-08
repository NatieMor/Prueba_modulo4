class Person
    attr_accessor :first, :last, :age, :type 
    def initialize(first=" ", last=" ", age=" ", type=" ")
        @first_name = first
        @last_name = last
        @age = " "
        @type = type
    end
    def birthday
        @age += 1
    end
end
#requerimiento 1 y 2
class Student < Person
    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end
    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
end
class Teacher < Person
    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end
    def introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end
class Parent < Person
    def talk
        puts "Aquí es la reunión de apoderados?"
    end
    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."   
    end
end
puts
#generando las instancias para cada clase
    estudiante = Student.new("Pablo", "Morales", " ", "estudiante")
    profesor = Teacher.new("Isabel", "Diaz", "35", "Profresor")
    padre = Parent.new("Patricio ", " Morales ", " ", " ")
#inspeccionamos las instancias y de donde proviene su herencia
    puts estudiante.inspect
    puts profesor.inspect
    puts padre.inspect
puts #Ancestros
    puts Student.ancestors.to_s
    puts Teacher.ancestors.to_s
    puts Parent.ancestors.to_s
puts #llamando a los metodos
    puts profesor.introduce 
    puts profesor.talk 
    puts estudiante.introduce 
puts
    puts padre.introduce
    puts padre.talk 
