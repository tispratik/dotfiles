class Object

  require 'csv'

  # print public methods which are not inherited from Object
  def pm
    parse_csv(self.public_methods - Object.public_methods)
  end

  def my_methods_only
    my_super = self.class.superclass
    mlist = my_super ? methods - my_super.instance_methods : methods
    parse_csv(mlist)
  end

  def my_methods_only_no_mixins
    self.class.ancestors.inject(methods) do |mlist, ancestor|
      mlist = mlist - ancestor.instance_methods unless ancestor.is_a? Class
      mlist
    end
  end

  def parse_csv(arr)
    CSV.parse(arr.sort.to_s) {  |row| row.each { |cell| puts cell }}
  end

end
