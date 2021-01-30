public void setup()
{
  String lines[] = {"test", "rotator","rewriter", "nurses run", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  String word2 = noSpaces(word);
  word2 = onlyLetters(word2);
  word2 = word2.toLowerCase();
    if(word2.equals(reverse(word2)))
    {
    return true;
    }
    return false;
}

//from coding bat
public String reverse(String str)
{
  String sNew = "";
    for (int i = str.length() ; i > 0; i--)
    {
    sNew = sNew + str.substring(i-1,i);
    }
    return sNew;
}

//from coding bat
public String onlyLetters(String sString){
  String s = "";
   for(int i = 0; i < sString.length(); i++)
  {
    if(Character.isLetter(sString.charAt(i)) == true)
    {
      s += sString.substring(i,i+1);
    }
  }
  return s;
}

//from coding bat
public String noSpaces(String sWord){
  String s = "";
  for(int i = 0; i < sWord.length(); i++)
  {
    if(!sWord.substring(i,i+1).equals(" "))
    {
       s = s + sWord.substring(i,i+1);
    }
  }
      return s;
}
