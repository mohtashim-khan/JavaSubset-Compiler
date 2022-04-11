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

    class foo {
        //
        // The J-- program.
        //
        // Tests mapping of J-- strings through to assembly code.

        foo() {
            prints("asdf");
            prints("\b\t\n\f\r\"\'\\");
            prints("");
            if (true) {
                // printing this depends on string representation,
                // but the NUL should appear in the assembly generated
                prints("  asdf");
            }
            printc(0);
        }

    }

    test() {
        new foo();
    }

    public static void main(String[] args) {
        new test();
    }
}