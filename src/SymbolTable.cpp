#include "SymbolTable.hpp"

SymbolTableEntry* SymbolTable::lookup(std::string id)
{
    std::unordered_map<std::string, SymbolTableEntry*>::iterator ret = table.find(id);
    if(ret == table.end())
        return nullptr;
    else
        return ret->second;

}

SymbolTableEntry* SymbolTable::defineEntry(std::string id, SymbolTableEntry* info)
{
    std::unordered_map<std::string, SymbolTableEntry*>::iterator ret = table.find(id);

    //If id not already in table, insert into table and then return true indicating success
    if(ret == table.end())
    {
        table[id] = info;
        return table[id];

    }
    else
        return nullptr;  //Return nullptr for failiure

}