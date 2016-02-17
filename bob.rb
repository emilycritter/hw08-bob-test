# Bob answers 'Sure.' if you ask him a question.
# He answers 'Whoa, chill out!' if you yell at him.
# He says 'Fine. Be that way!' if you address him without actually saying anything.
# He answers 'Whatever.' to anything else. Instructions

class Bob

  def hey (remark)
    case
    when !(remark =~ /[^ \t\r\n\f]/); "Fine. Be that way!"
    when remark == remark.upcase && remark =~ /[A-Za-z]/; "Whoa, chill out!"
    when remark.end_with?("?"); "Sure."
    else; "Whatever."
    end
  end

end
