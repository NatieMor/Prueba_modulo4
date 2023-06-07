class Person
    attr_accessor :first, 
      def initialize(first, last, age, type)
      @first_name = first
      @last_name = last
      @age = age
      @type = type
      end
      def birthday
      @age += 1
      end
  end
  class Student < Person
      attr_accessor :type 
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
  puts "escribe tu nombre"
  first_name= gets.chomp.to_s
  estudiante1 = Student.new(first_name)
  profesor1 = Teacher.new
  padre1 = Parent.new(" ", " ", " ")

  puts estudiante1.object_id
3. El método introduce al imprimir el mensaje muestra el nombre y apellido haciendo
uso de interpolación de variables de instancia.
(1 Puntos)
4. Al generar las instancias de cada objeto, se muestra un mensaje en función del
método que sea invocado.
(3 Puntos)
