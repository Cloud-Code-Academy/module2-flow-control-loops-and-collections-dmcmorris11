/**
* This is the FlowControlLoopsCollections class, part of the Developer Kickstart Module 2 curriculum
* at Cloud Code Academy. This class focuses on flow control, loops, and collections in Apex programming.
* The class provides a comprehensive understanding of various flow control structures, including if statements,
* jump statements, and loops like for loops. It also covers working with collections such as lists and maps.
*
* Topics covered in this class include:
* - Understanding and using if statements to make conditional decisions in code execution.
* - Using jump statements like break and continue to control the flow of execution in loops and switch statements.
* - Working with for loops to iterate over a set of elements in Apex.
* - Understanding collections and using lists and maps to store and manipulate data.
*
* This class is designed for developers who have a basic understanding of Apex and want to deepen their knowledge
* in flow control, loops, and collections. By mastering these concepts, developers will be able to write more
* efficient and effective code in their Salesforce projects.
*
* @author Dustin McMorris
*/

public with sharing class FlowControlLoopsCollections {
    
    /**
     * Question 1
     * Compares two numbers and return "Hello World!" if x is greater than the y.
     * If either of the numbers is null or x is less than y, return null.
     * Example: helloWorld(40, 10) should return "Hello World!"
     * @param x The first number.
     * @param y The second number.
     * @return "Hello World!" if x greater than y, otherwise return null.
     */
    public static String helloWorld(Integer x, Integer y) {
        if (x < y || x == null || y == null || x == y) {  //This is an OR statement to determine if either variable is null, variables are equal or x is less than y
            return null; //return value based on the OR if statement
        } 
            return 'Hello World!'; //return value if the OR statement criteria is not met
    }

    /**
     * Question 2
     * Checks if a person is eligible to vote based on their age.
     * A person is eligible to vote if they are 18 years old or older.
     * If the age is less than 18, the method will return false.
     * Example: votingEligibility(18) should return true
     * @param age The age of the person.
     * @return true if the person is eligible to vote, false otherwise.
     */
    public static Boolean votingEligibility(Integer age) {
        if (age >= 18){ //establishes criteria for returning true
            return true; //return value IF criteria is met
        }
        return false; //return value IF criteria is NOT met
    }

    /**
     * Question 3
     * Finds the maximum of two numbers.
     * If both numbers are equal, it returns that number.
     * Example: findMax(58, 200) should return 200
     * @param num1 The first number.
     * @param num2 The second number.
     * @return The maximum of the two numbers, or null if either number is null.
     */
    public static Integer findMax(Integer num1, Integer num2) {
        if (num1 == null || num2 == null){ //OR experssion to determine whether either variable is null
            return null; //return value if OR criteria is met
        } return Math.max(num1, num2); //return value if OR criteria is NOT met.  Math.max function returns the largest number
    }


    /**
     * Question 4
     * Checks if a number is positive, negative, or zero.
     * If the number is null, return null.
     * Example: checkNumber(5) should return "Positive"
     * @param a The number to check.
     * @return A string indicating whether the number is "Positive", "Negative", or "Zero", or null if the number is null.
     */
    public static String checkNumber(Integer a) {
        if (a == null){ //determines if variable is null
            return null; //return value if variable is null
        }else if (a > 0){ //determines if variable is greater than zero
            return 'Positive'; //return value if variable is greater than zero
        }else if (a < 0){ //determines if variable is less than zero
            return 'Negative'; //return value if variable is less than zero
        }else { //no criteria, all criteria defined above are not met.  I struggled with getting it to save with an else if statement and just went with an else, because all states of an integer are defined in the criteria
            return 'Zero'; //return value if none of the explicit criteria is met
        }
    }
       
    

    /**
     * Question 5
     * Checks if a number is even or odd.
     * If the number is null, return null.
     * Example: checkEvenOdd(2) should return "Even"
     * @param a The number to check.
     * @return A string indicating whether the number is "Even" or "Odd", or null if the number is null.
     */
    public static String checkEvenOdd(Integer a) {
        if (a == null){ //determines whether the variable is null
            return null; //return value if variable is null
        }else if (math.mod(a,2) == 0){ //determines if the variable is even using the math.mod function.  This function returns the remainder of the number divided by 2 and if it is not equal to zero, the integer is odd.
            return 'Even'; //return value if the math.mod function returns true
        }else{ //ending the if statements
            return 'Odd'; //return value if neither of the above criteria are met.
        } 
    }

    /**
     * Question 6
     * Checks if a string is empty, null, or contains text.
     * Example: checkString("") should return "Empty"
     * @param a The string to check.
     * @return A string indicating whether the input is "Empty", "Null", or "Contains Text".
     */
    public static String checkString(String a) {
        if (a == null){ //determines whether the variable is null
            return 'Null'; //return value if variable is null
        } else if (a == ''){ //determines whether the variable is blank
            return 'Empty'; //return value if variable is null
        } else { //ending the if statements
            return 'Contains Text'; //return value if neither of the above criteria are met.
        }
    }

    /**
     * Question 7
     * Determines the grade based on the score.
     * Grade A if score is greater than or equal to 90.
     * Grade B if score is greater than or equal to 80.
     * Grade C if score is greater than or equal to 70.
     * Grade D if score is greater than or equal to 60.
     * Grade F otherwise.
     * Example: determineGrade(85) should return "B"
     * @param score The score.
     * @return The grade for the given score.
     */
    public static String determineGrade(Integer score) {
        if (score >= 90){ //the important takeaway here is that the IF statement evaluates in order.  Thus I do not need to define the range, I can just define the threshold.  
            return 'A';
        } else if (score >= 80){
            return 'B';
        } else if (score >= 70){
            return 'C';
        } else if (score >= 60){
            return 'D';
        } else {
            return 'F';
        }
    }

    /**
     * Question 8
     * Sum all the integers up to a given limit.
     * Example: sumUpToLimit(5) should return 15
     * @param intLimit The number up to which integers will be summed.
     * @return The sum of all integers up to the limit.
     */
    public static Integer sumUpToLimit(Integer intLimit) {
        if (intLimit == null || intLimit < 0) {
            return 0; // Return 0 if the limit is null or negative
        }
        Integer sum = 0; //Establishing the sum variable and giving it a zero value for each time the code runs
        for (Integer i = 1; i <= intLimit; i++) { //looping the integer after establishing it as starting at '1', then incrementing it by 1 until the integer is equal to the limit.
            sum += i; // Each time the loop reaches here, it adds the current integer to the sum variable which is incrementing each loop.
        }
        return sum; //return value when the loop exists, having reached the limit defined in the intlimit variable.  
    }

    /**
     * Question 9
     * Generate String "Hello World!" three times, with each occurrence separated by a semicolon.
     * Example: returnHelloWorld() should return "Hello World!; Hello World!; Hello World!; "
     * @return The string "Hello World!; Hello World!; Hello World!; "
     */
    public static String returnHelloWorld() {
        String result = ''; //Define an empty variable 
        for (Integer i = 0; i < 3; i++) {
            result += 'Hello World!'; //Append "Hello World!" to the result
        if (i < 2) { //this ensures we will exist the loop after 2 cycles. The i variable establishes the loop counter
            result += '; '; //Append semicolon and space if not the last occurrence
            }
        }
        result += '; '; //Add an extra semicolon and space at the end
        return result; //Return value from loop and if statements. 
    }

    /**
     * Question 10
     * Generate a string where the input string is repeated the given number of times, with each
	 * repetition separated by a semicolon. 
     * Do not add a semicolon after the last repetition.
	 * Example: repeatString("Hello World!", 3) should return "Hello World!; Hello World!; Hello World!"
     * @param inputString The string to be repeated.
     * @param repeatCount The number of times the string should be repeated.
     * @return The new string with the inputString repeated repeatCount times.
     */
    public static String repeatString(String inputString, Integer repeatCount){
        if (inputString == null || repeatCount == null || repeatCount <= 0) { //establishes criteria for returning an empty string using an OR statement
            return ''; //Return value if any of the criteria in the OR statement is met
        }
        String result = ''; // establish a string variable for the result of the concatenation
        for (Integer i = 0; i < repeatCount; i++) { //uses i as the loop counter, checks to make sure the loop counter is less than the repeat count, and incrememnts the loop
            result += inputString; //Appends the input string to the result
            if (i < repeatCount - 1) { //the "-1" allows the loop to exit before the last iteration
                result += '; '; //Append semicolon and space if not the last repetition
            }
        }
        return result; //Return value after exiting the loop
    }

    /**
     * Question 11
     * Creates a List of integers and adds the integers 1, 2, and 3 to it.
     * Example: createAndPopulateList() should return [1, 2, 3]
     * @return A List of integers containing the numbers 1, 2, and 3.
     */
    public static List<Integer> createAndPopulateList() {
        // Create a new list of integers
       List<Integer> myList = new List<Integer>(); //establishes the list variable
        // Add the numbers 1, 2, and 3 to the list
        myList.add(1); //adds number 1 to the list
        myList.add(2); //adds number 2 to the list
        myList.add(3); //adds number 3 to the list
        return myList; //return value containing all the numbers added to the list
    }           
    
    /**
     * Question 12
     * Creates a List of integers and adds the integers from 1 to 5. Then it removes the number 3 from the list.
     * Example: createAndRemoveFromList() should return [1, 2, 4, 5]
     * @return A List of integers from 1 to 5, excluding the number 3.
     */
    public static List<Integer> createAndRemoveFromList() {
        // Create a new list of integers and add numbers 1 to 5
        List<Integer> numberList = new List<Integer>{1, 2, 3, 4, 5}; //DO NOT CHANGE
                numberList.remove(2);   // Remove the 3rd element (number 3) from the list, as the index starts at zero
        return numberList; //Return value the updated list with the index=2 removed
    }

    /**
     * Question 13
     * Create a list filled with integers based on the input parameter.
     * Example: createIntegerList(5) should return [1, 2, 3, 4, 5] 
     * @param n The last integer in the List.
     * @return A List of integers from 1 to 'n'.
     */
    public static List<Integer> createIntegerList(Integer n) {
        // Create a new list of integers 
        List<Integer> myList = new List<Integer>(); //establishes the myList variable
            for (Integer i = 1; i <= n; i++) //starts the i at 1, confirms it is less than or equal to n, increments i by 1, and then adds i to the list
            {
                myList.add(i); //adds the next number to the myList variable until the for criteria is  no longer met
            }
            return myList; //return value after exiting the loop
    }

    /**
     * Question 14
     * Remove duplicate values from the list of Strings.
     * The returned Set contains the unique strings from the input List.
     * Example: createStringSet(['a', 'b', 'a', 'c']) should return ['a', 'b', 'c']
     * @param inputList The List of strings.
     * @return A Set of unique strings.
     */
    public static Set<String> createStringSet(List<String> inputList) {
        // Create a new Set of strings
        Set<String> stringSet = new Set<String>(); //Established a new string set

        for (String str : inputList){
            StringSet.add(str);   //add strings to the set
        }
        return stringSet; //return value once the inputList has been looped through
    }

    /**
     * Question 15
     * Iterates over a list of integers and sums only the positive integers.
     * Example: sumPositiveIntegers() should return 12
     * @return The sum of positive integers from the list.
     */
    public static Integer sumPositiveIntegers() {
        List<Integer> numbers = new List<Integer>{-1, 2, -3, 4, -5, 6}; //DO NOT CHANGE
        Integer sum = 0;
        for (Integer num : numbers){// Loop through the list of integers
            if (math.mod(num,2) == 0){//used this class earlier, so referenced it again to deterimne if the number is positive and should be added to sum
                sum += num; //adds the values that meet the above criteria to the sum variable
            }
            else{
                continue; //will continue the loops without addition to sum if the value is does not meet the if criteria
            }
        }
        return sum; //return value when the loop completes
    }


    /**
     * Question 16
     * Iterates over a list of strings and searches for a specific word. Once found, it breaks the loop.
     *  Example: findWordInList("World", ['Hello', 'World', 'Goodbye']) should return 1
     * @param wordToFind The word to find in the list.
     * @param words The list of words to search.
     * @return The position of the word in the list as a string or -1 if the word was not found.
     */
    public static Integer findWordInList(String wordToFind, List<String> words) {
        // The variable to store the index of the word
        Integer index = -1; //Default to -1, indicating the word was not found.  Value will be retained until word if found and value updated
        for (Integer i = 0; i < words.size(); i++) { //i establishd to capture the index of the words as they are looped.  The words.size is used to establish the number of loops that will be needed, how many words in the list.
            if (words[i].equals(wordToFind)) { //Check if the current word matches
                index = i; //Store the index value for return value
                break; // Exit the loop once the word is found
            }
        }
        return index; //Return the found index or -1
    }

    /**
     * Question 17
     * Loop through the list of money and adds them up until it accumulates more than 40 and then stops counting.
     * The change values are in cents and the total is to be calculated in dollars.
     * Example: countMoney() should return 48.02
     * @return The total value in dollars, stopped at the point when it exceeds 40 dollars.
     */
    public static Decimal countMoney() {
        // The list of money in the wallet, represented in dollars and cents
        List<Decimal> moneyInWallet = new List<Decimal>{0.50, 10, 3.84, 24.60, 9.08, 50, 4.90}; //DO NOT CHANGE
            Decimal total = 0.0; //Variable to store the total value, initiated at zero
            for (Decimal amount : moneyInWallet) { //captures each value in amount variable for use in the loop.  
            total += amount; //Add the current amount to the total
            if (total > 40) { //Check if the total exceeds 40 dollars
                break; // Stop counting if it exceeds 40
            }
        }
            return total; //Return the accumulated total
    }

    /**
     * Question 18
     * Create a map that has five key-value pairs to the map, where the keys are the names of fruits and the values are their quantities.
     * Example: addItemsToMap() should return "Apples => 5, Oranges => 10, Bananas => 15, Pears => 20, Grapes => 25"
     * @return The Map of fruits and their quantities.
     */
    public static Map<String, Integer> addItemsToMap() {
        // Initialize an empty Map
               // Initialize an empty Map
               Map<String, Integer> fruitQuantities = new Map<String, Integer>(); //Establishes a map variable to add the values to

               // Add key-value pairs to the Map
               fruitQuantities.put('Apples', 5);
               fruitQuantities.put('Oranges', 10);
               fruitQuantities.put('Bananas', 15);
               fruitQuantities.put('Pears', 20);
               fruitQuantities.put('Grapes', 25);
       
               return fruitQuantities; //Return values in the map
           }


    /**
     * Question 19
     * Create a map where the keys are the names of employees and the values are their salaries.
     * Then returns the salary of the employee whose name is specified.
     * Example: getSalary("John Doe") should return 50000
     * Resource: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_map.htm#apex_System_Map_get
     * @param employeeName The name of the employee.
     * @return The salary of the employee, or null if the employee is not found in the Map.
     */
    public static Integer getSalary(String employeeName) {
        Map<String, Integer> empSalaries = new Map<String, Integer>();//Establishes a map variable

        // Add key-value pairs to the Map
        empSalaries.put('John Doe', 50000); //add John Doe => 50000
        empSalaries.put('Jane Smith', 60000);//add Jane Smith => 60000
        empSalaries.put('Sam Brown', 55000);//add Sam Brown => 55000
        empSalaries.put('Alice Johnson', 65000);//add Alice Johnson => 65000

        Integer salary = empSalaries.get(employeeName); //Get the salary of the employee

        // Return the salary of the employee, or null if the employee is not found in the Map
        if (employeeName == null) {
            return null;
        }
        else {
            return salary; //Return value of the salary for the employee identified in the employeeName string variable
        }
    }
    /**
     * Question 20
     * Create a map where the keys are the names of employees and the values are their salaries.
     * Then, iterates over the map and checks if an employee's salary is more than 55000.
     * If it is, add the employee's name to a list of employees that is returned by the method.
     * Remember that a Map is a collection of key-value pairs. Key are a set of unique values, so you can't have duplicate keys. Values are a list of values, so you can have duplicate values.
     * Resource: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_loops_for_lists.htm
     * Example: getHighPaidEmployees() should return ['Jane Smith', 'Alice Johnson']
     * @return A list of employee names who have a salary more than 55000.
     */
    public static List<String> getHighPaidEmployees() {
        // Initialize a Map
        Map<String, Integer> empSalaries = new Map<String, Integer>();

        empSalaries.put('John Doe', 50000); // add John Doe => 50000
        empSalaries.put('Jane Smith', 60000);// add Jane Smith => 60000
        empSalaries.put('Sam Brown', 55000);// add Sam Brown => 55000
        empSalaries.put('Alice Johnson', 65000);// add Alice Johnson => 65000
        
        List<String> highPaidEmployees = new List<String>(); // Initialize a list to store the names of high paid employees

        for (String employee : empSalaries.keySet()) {
            if (empSalaries.get(employee) > 55000) { // Check if the salary of the employee is more than 55000
                highPaidEmployees.add(employee); // Add the employee to the list of high paid employees
            }
        }

        return highPaidEmployees; // Return the list of names
    }
}