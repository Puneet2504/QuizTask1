import java.util.*;
public class MathsQuestionCall {
    private ArrayList<Math> questionSet;
    public MathsQuestionCall(){
        questionSet = new ArrayList<Math>();
        String a="What is the Value of x in 2x+6=0?";
        String[] Question1_option={"3","-3","6","2"};
        questionSet.add(new Math(a,Question1_option,"-3"));
        a = "What is th square of 17?";
        Question1_option = new String[]{"225","196","254","289"};
        questionSet.add(new Math(a,Question1_option,"289"));
        a = "What is the cube root of 216?";
        Question1_option = new String[]{"6","5","4","7"};
        questionSet.add(new Math(a,Question1_option,"6"));
        Collections.shuffle(questionSet, new Random());
    }
    public void start(){
        Scanner scan = new Scanner(System.in);
        int numCorrect=0;
        for(int question=0; question<questionSet.size();question++) {
            System.out.println(questionSet.get(question).getQuestion());

            int numChoices = questionSet.get(question).getOptions().size();
            for (int choice = 0; choice < numChoices; choice++) {
                System.out.println((choice+1) + ": " +
                questionSet.get(question).getOptions().get(choice));
            }
            int playerAnswer = scan.nextInt();
            ArrayList<String> choiceSet = questionSet.get(question).getOptions();
            String correctAnswer = questionSet.get(question).getAnswer();
            int correctAnswerIndex = choiceSet.indexOf(correctAnswer);
            if(playerAnswer ==  correctAnswerIndex + 1) {
                numCorrect++;
                System.out.println("You Got This Correct");
            }
            else{
                System.out.println("You Got This Wrong" +  "The Correct Answer is " + questionSet.get(question).getAnswer());
            }
        }
        scan.close();
        System.out.println("\nCongratulations!! You Got " + numCorrect + "/" + questionSet.size() + " correct answer in the maths quiz");
    }


}   

