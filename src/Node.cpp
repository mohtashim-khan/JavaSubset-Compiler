#include "Node.hpp"


Node::Node(std::string typ, std::string val, std::vector<Node*> nodes)
{
    type = typ;
    value = val;
    childNodes = nodes;
}


void Node::print(int level)
{
    for (int i = 0; i < level; i++)
    {
        std::cout << "\t";
    }

    std::cout << " {'type': '" << type << "', 'lineno': " << getLineNum();

    if (value != "")
    {
        std::cout << ", 'attr': '" << value << "'";
    }

    std::cout << "} \n";

    int currLevel = level + 1;

    //Preorder print
    
    for (auto &node : childNodes)
    {
        node->print(currLevel);
    }
}