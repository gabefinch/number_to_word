class Fixnum
  define_method(:num_write) do
    if self.==0
      "zero"
    else
      remaining = self
      output = ""

      base_ref = {0=>'',1=>'one',2=>'two',3=>'three',4=>'four',5=>'five',6=>'six',7=>'seven',8=>'eight',9=>'nine',10=>'ten',11=>'eleven',12=>'twelve',13=>'thirteen',14=>'fourteen',15=>'fifteen',16=>'sixteen',17=>'seventeen',18=>'eighteen',19=>'nineteen'}
      tens_ref ={2=>'twenty',3=>'thirty',4=>'forty',5=>'fifty',6=>'sixty',7=>'seventy',8=>'eighty',9=>'ninety'}

      if remaining<10**6 && remaining>10**3
        thousands_digit = remaining./(10**3)
        thousands_remain = remaining./(10**3)
        if thousands_remain<10**3 && thousands_remain>10**2
          hundredthousands_digit = thousands_remain./(10**2)
          output = output.+(base_ref.fetch(hundredthousands_digit)).+(" hundred")
          thousands_remain = thousands_remain.-(hundredthousands_digit.*(10**2))
          output = output.+(" ")
        end
        if thousands_remain<10**2 && thousands_remain>20
          tenthousands_digit = thousands_remain./(10)
          output = output.+(tens_ref.fetch(tenthousands_digit))
          thousands_remain = thousands_remain.-(tenthousands_digit.*(10))
          output = output.+(" ")
        end
        if thousands_remain<20
          output = output.+(base_ref.fetch(thousands_remain))
          output = output.+(" ")
        end
        output = output.+("thousand")
        remaining = remaining.-(thousands_digit.*(10**3))
        if remaining !=0
          output = output.+(" ")
        end
      end


      if remaining<10**3 && remaining>10**2
        hundreds_digit = remaining./(10**2)
        output = output.+(base_ref.fetch(hundreds_digit)).+(" hundred")
        remaining = remaining.-(hundreds_digit.*(10**2))
        if remaining !=0
          output = output.+(" ")
        end
      end

      if remaining<10**2 && remaining>20
        tens_digit = remaining./(10)
        output = output.+(tens_ref.fetch(tens_digit))
        remaining = remaining.-(tens_digit.*(10))
        if remaining !=0
          output = output.+(" ")
        end
      end

      if remaining<20
        output = output.+(base_ref.fetch(remaining))
      end

      output
      
    end
  end
end
