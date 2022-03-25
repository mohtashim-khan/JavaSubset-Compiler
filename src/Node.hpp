#include <vector>
#include <string>
#include <iostream>

#ifndef NODE_HH
#define NODE_HH

class Node
{
public:
    Node(std::string typ, std::string value = "", std::vector<Node*> Nodes = {});
    
    //Default Constructor
    Node() = default;
    //Default Destructor
    ~Node() = default;

    void print(int level = 0);


    int getLineNum();

private:
    std::string type;
    std::string value;
    std::vector<Node*> childNodes;
};


#endif