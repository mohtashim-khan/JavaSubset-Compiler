#include <vector>
#include <string>
#include <iostream>
#include "SymbolTable.hpp"

#ifndef NODE_HH
#define NODE_HH


class Node
{
public:
    Node(std::string typ, std::string val = "", std::vector<Node*> nodes = {});
    
    
    //Default Destructor
    ~Node() = default;

    void print(int level = 0);

    void addChildNode(Node* node) {childNodes.push_back(node); childNodes.back()->setParent(this);};

    void setSibling (Node* node) {sibilingNode = node;};

    void setParent(Node* node) {parentNode = node;}

    void setLine(int ln) {line = ln;};

    bool checkSibling() {if(sibilingNode != nullptr) return true; else return false;};

    Node* getSibling () {return sibilingNode;};

    Node* getParentNode() {return parentNode;};

    int getLineNum() {return line;};

    std::vector<Node*> childNodes;
    std::string type; //Used by terminal Nodes for their types
    std::string value;
    std::string semanticType; //Used by Non-ID Non-Terminal nodes to determine their types and the number node
    std::string semanticID; //Used by semantic Analyzer to send information regarding Identifiers up the tree -- Only used on Pass 1
    SymbolTableEntry* semanticInformation = nullptr; //Used for Identifiers and their types
    std::string codeGenLabel;

    int variableDecs=0;
    
    int line;



private:
    Node* sibilingNode = nullptr;
    Node* parentNode = nullptr;
 };


#endif