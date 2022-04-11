public class test {
    //
    // Run-time library routines.
    //
    void prints(String s) {
        System.out.print(s);
    }

    void printi(int i) {
        System.out.print(i);
    }

    void printc(int i) {
        char c = (char) i;
        System.out.print(c);
    }

    void printb(boolean b) {
        System.out.print(b);
    }

    class main {
        //
        // The J-- program.
        //
        boolean a;
        boolean b;
        boolean c;
        
        boolean A() {
            prints("evaluated A\n");
            return a;
        }
        boolean B() {
            prints("evaluated B\n");
            return b;
        }
        boolean C() {
            prints("evaluated C\n");
            return c;
        }
        
        void eval(boolean newa, boolean n00b, boolean newc) {
            a = newa;
            b = n00b;
            c = newc;
        
            prints("if ((A && B) || C) {...} else {...}, with A=");
            printb(a);
            prints(" B=");
            printb(b);
            prints(" C=");
            printb(c);
            prints("\n");
        
            if ((A() && B()) || C()) {
                prints("if-part executed\n");
            } else {
                prints("else-part executed\n");
            }
        }
        
        void assign(boolean newa, boolean newb, boolean newc) {
            a = newa;
            b = newb;
            c = newc;
        
            prints("x = (A && !B) || C, with A=");
            printb(a);
            prints(" B=");
            printb(b);
            prints(" C=");
            printb(c);
            prints("\n");
        
            boolean x;
            x = (A() && !B()) || C();
            prints("x=");
            printb(x);
            prints("\n");
        }
        
        main() {
            eval(false, false, false);	prints("\n");
            eval(false, false, true);	prints("\n");
            eval(false, true, false);	prints("\n");
            eval(false, true, true);	prints("\n");
            eval(true, false, false);	prints("\n");
            eval(true, false, true);	prints("\n");
            eval(true, true, false);	prints("\n");
            eval(true, true, true);		prints("\n");
        
            assign(false, false, false);	prints("\n");
            assign(false, false, true);	prints("\n");
            assign(false, true, false);	prints("\n");
            assign(false, true, true);	prints("\n");
            assign(true, false, false);	prints("\n");
            assign(true, false, true);	prints("\n");
            assign(true, true, false);	prints("\n");
            assign(true, true, true);
        }
        
    }

    test() {
        new main();
    }

    public static void main(String[] args) {
        new test();
    }
}