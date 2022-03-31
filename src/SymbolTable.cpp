#include "SymbolTable.hpp"

SymbolTableEntry* SymbolTable::lookup(std::string id)
{
    std::unordered_map<std::string, SymbolTableEntry*>::iterator ret = table.find(id);
    if(ret == table.end())
        return nullptr;
    else
        return ret->second;

}

bool SymbolTable::defineEntry(std::string id, SymbolTableEntry* info)
{
    std::unordered_map<std::string, SymbolTableEntry*>::iterator ret = table.find(id);

    //If id not already in table, insert into table and then return true indicating success
    if(ret == table.end())
    {
        table[id] = info;
        return true;

    }
    else
        return false;  //Return false for failiure

}