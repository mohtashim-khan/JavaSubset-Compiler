#include "Node.hpp"


Node::Node(std::string typ, std::string val, std::vector<Node*> nodes)
{
    type = typ;
    value = val;
    childNodes = nodes;
    if(typ == "number")
    {
        semanticType = "int";
    }
}


void Node::print(int level, std::string *appendToString)
{
    for (int i = 0; i < level; i++)
    {
        *appendToString += "\t";
    }

    if(value!="")
    {
        *appendToString += value;
    }
    else
    {
        *appendToString += type;
    }


    *appendToString +=" {'type': '" + type + "', 'lineno': " + std::to_string(getLineNum());

    if (value != "")
    {
        *appendToString += ", 'attr': '" + value + "'";
    }

    *appendToString += "} \n";

    int currLevel = level + 1;

    //Preorder print
    
    for (auto &node : childNodes)
    {
        node->print(currLevel, appendToString);
    }
}