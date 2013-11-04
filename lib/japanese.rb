class Japanese
  def initialize
    @japanese = {a: "ka", b: "tu", c: "mi", d: "te", e: "ku", f: "lu", g: "ji", h: "ri", i: "ki", j: "zu", k: "me", l: "ta", m: "rin", n: "to", o: "mo", p: "no", q: "ke", r: "shi", s: "ari", t: "chi", u: "do", v: "ru", x: "na", w: "mei", y: "fu", z: "ra"}
    @name = ""
  end

  def whats_my_name name 
     name.split("").each do |letter|
       begin
        @name += @japanese[letter.to_sym]
       rescue
        @name += " "
       end
     end
     @name
  end

  def clean
    @name = ""
  end
end
