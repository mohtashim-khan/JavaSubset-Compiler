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

    void printb(boolean b)
    {
        System.out.print(b);
    }

    class main {
        //
        // The J-- program.
        //
        int i1;
        boolean b1;
        
        void foo() {
            int i2;
            boolean b2;
        
            prints("\n(it's ok if the following aren't 0/false)\n");
        
            prints("\tlocal int default value: ");		printi(i2);
            prints("\n");
            prints("\tlocal boolean default value: ");	printb(b2);
            prints("\n");
        
            // mess up stack a bit
            i2 = 123;
            b2 = true;
        }
        
        main() {
            prints("global int default value: ");		printi(i1);
            prints("\n");
            prints("global boolean default value: ");	printb(b1);
            prints("\n");
        
            foo();
            foo();
        }
        
        

    }

    test() {
        new main();
    }

    public static void main(String[] args) {
        new test();
    }
}