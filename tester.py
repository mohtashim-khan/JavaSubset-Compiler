import os
from os import listdir
from os.path import isfile, join
import subprocess
import ctypes

# Only change these:
DEFAULT_TIMEOUT_S = 5
SHOW_DIFF_OUTPUT = True 
asm_dir = "."
test_compiler = "test.asm"

# Dump your runtime system here after .text, make sure to prefix the function label names with 'L'
runtime_system = """
	.text
# 
error:
    jal Lprints
	j Lhalt

Lgetchar: 
li $v0,12
syscall
jr $ra

Lhalt: 
li $v0,10
syscall
jr $ra 

Lprints: 
li $v0,4
syscall
jr $ra

Lprinti: 
li $v0,1
syscall
jr $ra 

Lprintc: 
li $v0,11
syscall
jr $ra

Lprintb: 
beq $a0, $zero, isFalse
isTrue:
la $a0, boolean_true
j printBoolean
isFalse:
la $a0, boolean_false
printBoolean:
li $v0,4
syscall
jr $ra 
"""

# Ignore hereforth
test_dir = os.path.expanduser("~aycock/411/TEST/final")
reference_compiler = "~aycock/411/TEST/reference/main"
spim = "~aycock/411/bin/spim"

pass_count = 0
fail_count = 0

tests = [f for f in listdir(test_dir)]
tests.sort()

for test in tests:
    full_test_path = join(test_dir, test)
    if not isfile(full_test_path):
        continue

    print(f"Testing {test}: ", end='')

    test_compiler_run = subprocess.run(" ".join([test_compiler, full_test_path]), capture_output=True, text=True, shell=True)

    reference_compiler_run = subprocess.run(" ".join([reference_compiler, full_test_path]), capture_output=True, text=True, shell=True)

    assert test_compiler_run.returncode == 0, f"Failed to compile for test: {test}"
    assert(reference_compiler_run.returncode == 0)

    test_compiler_asm = test_compiler_run.stdout
    reference_compiler_asm = reference_compiler_run.stdout

    reference_folder = join(asm_dir, "reference")
    test_folder = join(asm_dir, "test")

    def mkdir_if_no_exist(d):
        if not os.path.exists(d):
            os.makedirs(d)

    mkdir_if_no_exist(reference_folder)
    mkdir_if_no_exist(test_folder)    

    reference_compiler_asm_path = join(reference_folder, test)
    test_compiler_asm_path = join(test_folder, test)    

    with open(reference_compiler_asm_path, "w") as fd:
        fd.write(runtime_system)
        fd.write(reference_compiler_asm)

    with open(test_compiler_asm_path, "w") as fd:
        fd.write(test_compiler_asm)

    stdin_buffer = bytes(ctypes.c_int(-1))
    if test in {"gen.t13", "gen.t33", "gen.t18"}:
        if test == "gen.t13":
            stdin_buffer = "123456789\n".encode()
        elif test == "gen.t33":
            stdin_buffer = b"asdfasdf\n1111111111\n" + bytes(ctypes.c_int(-1))
        elif test == "gen.t18":
            stdin_buffer = "1 + 1\n (1 + 2) * (3 + 4)\n(1 + 2 * 3 / 4 * 100 / 4 * 3 - 2 + 1)\n\r\n".encode()
        else: raise Exception()

    test_spim_output = None
    reference_spim_output = None
    try:
        def do_spim_run(path, input_buffer):
            from subprocess import PIPE, DEVNULL, Popen
            
            p = Popen(" ".join([spim, "-f", path]), stdin=PIPE, stdout=PIPE, stderr=DEVNULL, shell=True, close_fds=True)
            out, _ = p.communicate(input_buffer, timeout=DEFAULT_TIMEOUT_S)

            return out

        test_spim_output = do_spim_run(test_compiler_asm_path, stdin_buffer)
        reference_spim_output = do_spim_run(reference_compiler_asm_path, stdin_buffer)

        if test_spim_output != reference_spim_output:
            print('\033[91m' + "FAIL" + '\033[0m')
            if SHOW_DIFF_OUTPUT:
                print(test_spim_output)
                print("===")
                print(reference_spim_output)            
            fail_count = fail_count + 1
        else:
            print('\033[92m' + "PASS" + '\033[0m')        
            pass_count = pass_count + 1        
    except subprocess.TimeoutExpired:
        print('\033[91m' + "FAIL (TIMEOUT)" + '\033[0m')        
        fail_count = fail_count + 1        
        continue

total = pass_count + fail_count

print()
print(f"= [ PASSED {pass_count} OUT OF {pass_count + fail_count} ({pass_count / total * 100}%)] =")