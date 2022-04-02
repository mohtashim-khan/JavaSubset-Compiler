import subprocess
from os import listdir
from os.path import isfile

dir_containing_tests = "Tests/"

with open("results.txt", "w") as output_file:
    input_files = listdir(dir_containing_tests)
    input_files.sort()

    differences_count = 0

    for test_file in input_files:
        file_path = dir_containing_tests + test_file
        if(isfile(file_path)):
            # outputFile.write("Testing" + file_path + " - ")
            compiler = subprocess.run(["main", file_path])
            # outputFile.write("Returned " + str(cp.returncode))
            reference_compiler = subprocess.run(["/home/profs/aycock/411/TEST/reference/main", "-psemantic", file_path])
            # outputFile.write(", Ref returned " + str(cpRef.returncode) + "\n") 
            if compiler.returncode != reference_compiler.returncode:
                output_file.write("\n****************** FILE: " + test_file + " FAILED. ******************\n")
                output_file.write("Professor return: " + str(reference_compiler.returncode) + ", my return: " + str(compiler.returncode) + "\n")
                differences_count += 1

    if differences_count == 0:
        output_file.write("################################## ALL TESTS PASSED. ##################################")
    else:
        output_file.write("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX " + str(differences_count) + " TESTS FAILED. XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
