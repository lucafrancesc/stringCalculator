# stringCalculator

String Calculator
The following is a TDD Kata- an exercise in coding, refactoring and test-first, that you should apply daily for at least 15 minutes (I do 30).

Before you start:<br>
<ul>
<li>Fork and clone the repository</li>
<li>Run bundle install</li>
<li>Open the console log and follow the instruction below</li>
</ul>

```
irb
load 'lib/str_calc.rb'
calc = StringCalculator.new
calc.add '1,2,3'
calc.add 'enter your numbers! :)'
```

![alt text](https://github.com/lucafrancesc/stringCalculator/blob/master/Screenshot.png)

If you want to give it a try all you have to do is following the step below!

Try not to read ahead.<br>
Do one task at a time. The trick is to learn to work incrementally.<br>
Make sure you only test for correct inputs. there is no need to test for invalid inputs for this kata<br>
String Calculator<br>

<ol>
<li>.Create a simple String calculator with a method int Add(string numbers)</li>
  .The method can take 0, 1 or 2 numbers, and will return their sum (for an empty string it will return 0) for example “” or “1” or “1,2”<br>
  .Start with the simplest test case of an empty string and move to 1 and two numbers<br>
  .Remember to solve things as simply as possible so that you force yourself to write tests you did not think about<br>
  .Remember to refactor after each passing test


<li>.Allow the Add method to handle an unknown amount of numbers</li>

<li>.Allow the Add method to handle new lines between numbers (instead of commas).</li>
  .the following input is ok:  “1\n2,3”  (will equal 6)<br>
  .the following input is NOT ok:  “1,\n” (not need to prove it - just clarifying)

<li>.Support different delimiters</li>
  .to change a delimiter, the beginning of the string will contain a separate line that looks like this:   “//[delimiter]\n[numbers…]” for example “//;\n1;2” should return three where the default delimiter is ‘;’ .<br>
  .the first line is optional. all existing scenarios should still be supported

<li>.Calling Add with a negative number will throw an exception “negatives not allowed” - and the negative that was passed.if there are multiple negatives, show all of them in the exception message</li>
<li>Numbers bigger than 1000 should be ignored, so adding 2 + 1001  = 2</li>
<li>Delimiters can be of any length with the following format:  “//[delimiter]\n” for example: “//[***]\n1***2***3” should return 6</li>
</ol>
