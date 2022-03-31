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

    SymbolTableEntry(SymbolTable* sp, std::string retType, std::string typ) {scope = sp; returnType = retType; type = typ;};
    SymbolTableEntry(std::string retType, std::string typ) {returnType = retType; type = typ;};
    SymbolTableEntry();

    SymbolTable* scope = nullptr;
    std::string returnType;
    std::string type;



};

class SymbolTable
{
public:

    SymbolTable(std::string name) {scopeName = name;};

    std::unordered_map <std::string, SymbolTableEntry> table;

    SymbolTableEntry lookup(std::string id);

    void defineEntry(std::string id, SymbolTableEntry info);

    // will be either "preDefinedFunctions" or "globalDeclarations" or will correspond to the function ID attr of the parent function
    std::string scopeName; 

};

#endif