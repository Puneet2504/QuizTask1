import java.util.*;
public class quiz {
    public static void main(String[] args) throws InterruptedException {
        Scanner scan = new Scanner(System.in);

        MathsQuestionCall m = new MathsQuestionCall();
        javaQuestionCall j = new javaQuestionCall();
        System.out.println("Select the subject for quiz:");
        System.out.println("press 1 for Maths Quiz\npress 2 for Science Quiz");
        int selectSubject = scan.nextInt();

                if (selectSubject == 1) {
                    m.start();
                } else if (selectSubject == 2) {
                    j.start();
        }
    }
}
