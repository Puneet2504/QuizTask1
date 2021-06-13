import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.*;
import java.util.function.Consumer;

public class javaQuestionCall {
    private ArrayList<Math> questionSet;
    public javaQuestionCall(){
        questionSet = new ArrayList<Math>();
                String a="What is the formula of Water?";
        String[] Question1_option={"H20","CO2","O2","H2"};
        questionSet.add(new Math(a,Question1_option,"H20"));
        a = "What is atomic number of oxygen?";
        Question1_option = new String[]{"6","3","8","9"};
        questionSet.add(new Math(a,Question1_option,"8"));
        a = "What is atomic number of carbon?";
        Question1_option = new String[]{"6", "8", "7", "5"};
        questionSet.add(new Math(a,Question1_option,"6"));
        Collections.shuffle(questionSet, new Random());
    }
    public void start() throws InterruptedException {
        Scanner scan = new Scanner(System.in);
        int numCorrect=0;
        for(int question=0; question<questionSet.size();question++) {
            System.out.println(questionSet.get(question).getQuestion());
            int numChoices;
            numChoices = questionSet.get(question).getOptions().size();
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
                System.out.println("You Got This Wrong, " + "The Correct Answer is " + questionSet.get(question).getAnswer());
            }

        }
        scan.close();
        System.out.println("Congratulations!! You Got " + numCorrect + "/" + questionSet.size() + " correct answer");
    }
}
