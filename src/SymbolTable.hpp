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

    SymbolTableEntry(std::string id, SymbolTable* sp, std::string retType, std::string typ) {identifier = id; scope = sp; returnType = retType; type = typ;}; //used for Functions within a certain scope
    SymbolTableEntry(std::string id, SymbolTable* sp, std::string retTyp) {identifier = id; scope = sp; returnType = retTyp; type = retTyp;}; //used for Terminal nodes such as integers
    
    SymbolTableEntry(std::string id,std::string retType, std::string typ) {identifier = id; returnType = retType; type = typ;}; // used for Functions, this is defined more for felxibility
    SymbolTableEntry(std::string id,std::string retTyp) {identifier = id; returnType = retTyp; type = retTyp;}; //used for Terminal nodes such as integers, this is defined more for felxibility
    

    SymbolTableEntry(); //default constructor

    SymbolTable* scope = nullptr;
    std::string returnType;
    std::string type;
    std::string identifier; //not used but good to have.



};

class SymbolTable
{
public:

    SymbolTable(std::string name) {scopeName = name;};

    std::unordered_map <std::string, SymbolTableEntry*> table;

    //Returns nullptr if entry not found.
    SymbolTableEntry* lookup(std::string id);

    //returns true on success, else returns false
    bool defineEntry(std::string id, SymbolTableEntry* info);

    // will be either "preDefinedFunctions" or "globalDeclarations" or will correspond to the function ID attr
    std::string scopeName; 

};

#endif