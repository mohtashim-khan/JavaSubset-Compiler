#include <vector>
#include <string>
#include <iostream>
#include <unordered_map>

#ifndef SYMBOLTABLE_HH
#define SYMBOLTABLE_HH

//Forward Declarations of classes
class SymbolTable;
class SymbolTableEntry;
class SymbolTableEntry
{
public:

    SymbolTableEntry(std::string id, std::string sp, std::string retType, std::string funcArg) {identifier = id; scopeName = sp; returnType = retType; functionArgs = funcArg;}; //used for Functions within a certain scope
    SymbolTableEntry(std::string id, std::string sp, std::string retTyp) {identifier = id; scopeName = sp; returnType = retTyp;}; //used for Terminal nodes such as integers
    
    SymbolTableEntry(std::string id, SymbolTable* sp, std::string retType, std::string funcArg) {identifier = id; scope = sp; returnType = retType; functionArgs = funcArg;}; //used for Functions within a certain scope
    SymbolTableEntry(std::string id, SymbolTable* sp, std::string retTyp) {identifier = id; scope = sp; returnType = retTyp;}; //used for Terminal nodes such as integers
    

    SymbolTableEntry(); //default constructor

    std::string scopeName;
    std::string returnType;
    std::string functionArgs;
    std::string identifier; //not used but good to have for error checking.
    std::string idRegister; // used to keep track of which register an identifier is stored in
    std::string codeGenLabel;
    SymbolTable* scope; //only used for debugging



};

class SymbolTable
{
public:

    SymbolTable(std::string name) {scopeName = name;};

    std::unordered_map <std::string, SymbolTableEntry*> table;

    //Returns nullptr if entry not found.
    SymbolTableEntry* lookup(std::string id);

    //returns true on success, else returns false
    SymbolTableEntry* defineEntry(std::string id, SymbolTableEntry* info);

    // will be either "preDefinedFunctions" or "globalDeclarations" or will correspond to the function ID attr
    std::string scopeName; 

};

#endif