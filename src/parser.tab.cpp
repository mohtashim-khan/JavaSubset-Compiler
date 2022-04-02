// A Bison parser, made by GNU Bison 3.7.5.

// Skeleton implementation for Bison LALR(1) parsers in C++

// Copyright (C) 2002-2015, 2018-2021 Free Software Foundation, Inc.

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

// As a special exception, you may create a larger work that contains
// part or all of the Bison parser skeleton and distribute that work
// under terms of your choice, so long as that work isn't itself a
// parser generator using the skeleton or a modified version thereof
// as a parser skeleton.  Alternatively, if you modify or redistribute
// the parser skeleton itself, you may (at your option) remove this
// special exception, which will cause the skeleton and the resulting
// Bison output files to be licensed under the GNU General Public
// License without this special exception.

// This special exception was added by the Free Software Foundation in
// version 2.2 of Bison.

// DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
// especially those whose name start with YY_ or yy_.  They are
// private implementation details that can be changed or removed.





#include "parser.tab.hpp"


// Unqualified %code blocks.
#line 29 "parser.ypp"

    #include <iostream>
    #include <fstream>
    #include "header.h"
    #include "driver.hpp"
    
    // Define yylex
    #undef yylex
    #define yylex driver.getToken

#line 57 "parser.tab.cpp"


#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> // FIXME: INFRINGES ON USER NAME SPACE.
#   define YY_(msgid) dgettext ("bison-runtime", msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(msgid) msgid
# endif
#endif


// Whether we are compiled with exception support.
#ifndef YY_EXCEPTIONS
# if defined __GNUC__ && !defined __EXCEPTIONS
#  define YY_EXCEPTIONS 0
# else
#  define YY_EXCEPTIONS 1
# endif
#endif

#define YYRHSLOC(Rhs, K) ((Rhs)[K].location)
/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

# ifndef YYLLOC_DEFAULT
#  define YYLLOC_DEFAULT(Current, Rhs, N)                               \
    do                                                                  \
      if (N)                                                            \
        {                                                               \
          (Current).begin  = YYRHSLOC (Rhs, 1).begin;                   \
          (Current).end    = YYRHSLOC (Rhs, N).end;                     \
        }                                                               \
      else                                                              \
        {                                                               \
          (Current).begin = (Current).end = YYRHSLOC (Rhs, 0).end;      \
        }                                                               \
    while (false)
# endif


// Enable debugging if requested.
#if YYDEBUG

// A pseudo ostream that takes yydebug_ into account.
# define YYCDEBUG if (yydebug_) (*yycdebug_)

# define YY_SYMBOL_PRINT(Title, Symbol)         \
  do {                                          \
    if (yydebug_)                               \
    {                                           \
      *yycdebug_ << Title << ' ';               \
      yy_print_ (*yycdebug_, Symbol);           \
      *yycdebug_ << '\n';                       \
    }                                           \
  } while (false)

# define YY_REDUCE_PRINT(Rule)          \
  do {                                  \
    if (yydebug_)                       \
      yy_reduce_print_ (Rule);          \
  } while (false)

# define YY_STACK_PRINT()               \
  do {                                  \
    if (yydebug_)                       \
      yy_stack_print_ ();                \
  } while (false)

#else // !YYDEBUG

# define YYCDEBUG if (false) std::cerr
# define YY_SYMBOL_PRINT(Title, Symbol)  YY_USE (Symbol)
# define YY_REDUCE_PRINT(Rule)           static_cast<void> (0)
# define YY_STACK_PRINT()                static_cast<void> (0)

#endif // !YYDEBUG

#define yyerrok         (yyerrstatus_ = 0)
#define yyclearin       (yyla.clear ())

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYRECOVERING()  (!!yyerrstatus_)

#line 8 "parser.ypp"
namespace JCC {
#line 150 "parser.tab.cpp"

  /// Build a parser object.
  Parser::Parser (Driver &driver_yyarg)
#if YYDEBUG
    : yydebug_ (false),
      yycdebug_ (&std::cerr),
#else
    :
#endif
      driver (driver_yyarg)
  {}

  Parser::~Parser ()
  {}

  Parser::syntax_error::~syntax_error () YY_NOEXCEPT YY_NOTHROW
  {}

  /*---------------.
  | symbol kinds.  |
  `---------------*/

  // basic_symbol.
  template <typename Base>
  Parser::basic_symbol<Base>::basic_symbol (const basic_symbol& that)
    : Base (that)
    , value (that.value)
    , location (that.location)
  {}


  /// Constructor for valueless symbols.
  template <typename Base>
  Parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_MOVE_REF (location_type) l)
    : Base (t)
    , value ()
    , location (l)
  {}

  template <typename Base>
  Parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (semantic_type) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  Parser::symbol_kind_type
  Parser::basic_symbol<Base>::type_get () const YY_NOEXCEPT
  {
    return this->kind ();
  }

  template <typename Base>
  bool
  Parser::basic_symbol<Base>::empty () const YY_NOEXCEPT
  {
    return this->kind () == symbol_kind::S_YYEMPTY;
  }

  template <typename Base>
  void
  Parser::basic_symbol<Base>::move (basic_symbol& s)
  {
    super_type::move (s);
    value = YY_MOVE (s.value);
    location = YY_MOVE (s.location);
  }

  // by_kind.
  Parser::by_kind::by_kind ()
    : kind_ (symbol_kind::S_YYEMPTY)
  {}

#if 201103L <= YY_CPLUSPLUS
  Parser::by_kind::by_kind (by_kind&& that)
    : kind_ (that.kind_)
  {
    that.clear ();
  }
#endif

  Parser::by_kind::by_kind (const by_kind& that)
    : kind_ (that.kind_)
  {}

  Parser::by_kind::by_kind (token_kind_type t)
    : kind_ (yytranslate_ (t))
  {}

  void
  Parser::by_kind::clear () YY_NOEXCEPT
  {
    kind_ = symbol_kind::S_YYEMPTY;
  }

  void
  Parser::by_kind::move (by_kind& that)
  {
    kind_ = that.kind_;
    that.clear ();
  }

  Parser::symbol_kind_type
  Parser::by_kind::kind () const YY_NOEXCEPT
  {
    return kind_;
  }

  Parser::symbol_kind_type
  Parser::by_kind::type_get () const YY_NOEXCEPT
  {
    return this->kind ();
  }


  // by_state.
  Parser::by_state::by_state () YY_NOEXCEPT
    : state (empty_state)
  {}

  Parser::by_state::by_state (const by_state& that) YY_NOEXCEPT
    : state (that.state)
  {}

  void
  Parser::by_state::clear () YY_NOEXCEPT
  {
    state = empty_state;
  }

  void
  Parser::by_state::move (by_state& that)
  {
    state = that.state;
    that.clear ();
  }

  Parser::by_state::by_state (state_type s) YY_NOEXCEPT
    : state (s)
  {}

  Parser::symbol_kind_type
  Parser::by_state::kind () const YY_NOEXCEPT
  {
    if (state == empty_state)
      return symbol_kind::S_YYEMPTY;
    else
      return YY_CAST (symbol_kind_type, yystos_[+state]);
  }

  Parser::stack_symbol_type::stack_symbol_type ()
  {}

  Parser::stack_symbol_type::stack_symbol_type (YY_RVREF (stack_symbol_type) that)
    : super_type (YY_MOVE (that.state), YY_MOVE (that.value), YY_MOVE (that.location))
  {
#if 201103L <= YY_CPLUSPLUS
    // that is emptied.
    that.state = empty_state;
#endif
  }

  Parser::stack_symbol_type::stack_symbol_type (state_type s, YY_MOVE_REF (symbol_type) that)
    : super_type (s, YY_MOVE (that.value), YY_MOVE (that.location))
  {
    // that is emptied.
    that.kind_ = symbol_kind::S_YYEMPTY;
  }

#if YY_CPLUSPLUS < 201103L
  Parser::stack_symbol_type&
  Parser::stack_symbol_type::operator= (const stack_symbol_type& that)
  {
    state = that.state;
    value = that.value;
    location = that.location;
    return *this;
  }

  Parser::stack_symbol_type&
  Parser::stack_symbol_type::operator= (stack_symbol_type& that)
  {
    state = that.state;
    value = that.value;
    location = that.location;
    // that is emptied.
    that.state = empty_state;
    return *this;
  }
#endif

  template <typename Base>
  void
  Parser::yy_destroy_ (const char* yymsg, basic_symbol<Base>& yysym) const
  {
    if (yymsg)
      YY_SYMBOL_PRINT (yymsg, yysym);

    // User destructor.
    YY_USE (yysym.kind ());
  }

#if YYDEBUG
  template <typename Base>
  void
  Parser::yy_print_ (std::ostream& yyo, const basic_symbol<Base>& yysym) const
  {
    std::ostream& yyoutput = yyo;
    YY_USE (yyoutput);
    if (yysym.empty ())
      yyo << "empty symbol";
    else
      {
        symbol_kind_type yykind = yysym.kind ();
        yyo << (yykind < YYNTOKENS ? "token" : "nterm")
            << ' ' << yysym.name () << " ("
            << yysym.location << ": ";
        YY_USE (yykind);
        yyo << ')';
      }
  }
#endif

  void
  Parser::yypush_ (const char* m, YY_MOVE_REF (stack_symbol_type) sym)
  {
    if (m)
      YY_SYMBOL_PRINT (m, sym);
    yystack_.push (YY_MOVE (sym));
  }

  void
  Parser::yypush_ (const char* m, state_type s, YY_MOVE_REF (symbol_type) sym)
  {
#if 201103L <= YY_CPLUSPLUS
    yypush_ (m, stack_symbol_type (s, std::move (sym)));
#else
    stack_symbol_type ss (s, sym);
    yypush_ (m, ss);
#endif
  }

  void
  Parser::yypop_ (int n)
  {
    yystack_.pop (n);
  }

#if YYDEBUG
  std::ostream&
  Parser::debug_stream () const
  {
    return *yycdebug_;
  }

  void
  Parser::set_debug_stream (std::ostream& o)
  {
    yycdebug_ = &o;
  }


  Parser::debug_level_type
  Parser::debug_level () const
  {
    return yydebug_;
  }

  void
  Parser::set_debug_level (debug_level_type l)
  {
    yydebug_ = l;
  }
#endif // YYDEBUG

  Parser::state_type
  Parser::yy_lr_goto_state_ (state_type yystate, int yysym)
  {
    int yyr = yypgoto_[yysym - YYNTOKENS] + yystate;
    if (0 <= yyr && yyr <= yylast_ && yycheck_[yyr] == yystate)
      return yytable_[yyr];
    else
      return yydefgoto_[yysym - YYNTOKENS];
  }

  bool
  Parser::yy_pact_value_is_default_ (int yyvalue)
  {
    return yyvalue == yypact_ninf_;
  }

  bool
  Parser::yy_table_value_is_error_ (int yyvalue)
  {
    return yyvalue == yytable_ninf_;
  }

  int
  Parser::operator() ()
  {
    return parse ();
  }

  int
  Parser::parse ()
  {
    int yyn;
    /// Length of the RHS of the rule being reduced.
    int yylen = 0;

    // Error handling.
    int yynerrs_ = 0;
    int yyerrstatus_ = 0;

    /// The lookahead symbol.
    symbol_type yyla;

    /// The locations where the error started and ended.
    stack_symbol_type yyerror_range[3];

    /// The return value of parse ().
    int yyresult;

#if YY_EXCEPTIONS
    try
#endif // YY_EXCEPTIONS
      {
    YYCDEBUG << "Starting parse\n";


    /* Initialize the stack.  The initial state will be set in
       yynewstate, since the latter expects the semantical and the
       location values to have been already stored, initialize these
       stacks with a primary value.  */
    yystack_.clear ();
    yypush_ (YY_NULLPTR, 0, YY_MOVE (yyla));

  /*-----------------------------------------------.
  | yynewstate -- push a new symbol on the stack.  |
  `-----------------------------------------------*/
  yynewstate:
    YYCDEBUG << "Entering state " << int (yystack_[0].state) << '\n';
    YY_STACK_PRINT ();

    // Accept?
    if (yystack_[0].state == yyfinal_)
      YYACCEPT;

    goto yybackup;


  /*-----------.
  | yybackup.  |
  `-----------*/
  yybackup:
    // Try to take a decision without lookahead.
    yyn = yypact_[+yystack_[0].state];
    if (yy_pact_value_is_default_ (yyn))
      goto yydefault;

    // Read a lookahead token.
    if (yyla.empty ())
      {
        YYCDEBUG << "Reading a token\n";
#if YY_EXCEPTIONS
        try
#endif // YY_EXCEPTIONS
          {
            yyla.kind_ = yytranslate_ (yylex (&yyla.value, &yyla.location));
          }
#if YY_EXCEPTIONS
        catch (const syntax_error& yyexc)
          {
            YYCDEBUG << "Caught exception: " << yyexc.what() << '\n';
            error (yyexc);
            goto yyerrlab1;
          }
#endif // YY_EXCEPTIONS
      }
    YY_SYMBOL_PRINT ("Next token is", yyla);

    if (yyla.kind () == symbol_kind::S_YYerror)
    {
      // The scanner already issued an error message, process directly
      // to error recovery.  But do not keep the error token as
      // lookahead, it is too special and may lead us to an endless
      // loop in error recovery. */
      yyla.kind_ = symbol_kind::S_YYUNDEF;
      goto yyerrlab1;
    }

    /* If the proper action on seeing token YYLA.TYPE is to reduce or
       to detect an error, take that action.  */
    yyn += yyla.kind ();
    if (yyn < 0 || yylast_ < yyn || yycheck_[yyn] != yyla.kind ())
      {
        goto yydefault;
      }

    // Reduce or error.
    yyn = yytable_[yyn];
    if (yyn <= 0)
      {
        if (yy_table_value_is_error_ (yyn))
          goto yyerrlab;
        yyn = -yyn;
        goto yyreduce;
      }

    // Count tokens shifted since error; after three, turn off error status.
    if (yyerrstatus_)
      --yyerrstatus_;

    // Shift the lookahead token.
    yypush_ ("Shifting", state_type (yyn), YY_MOVE (yyla));
    goto yynewstate;


  /*-----------------------------------------------------------.
  | yydefault -- do the default action for the current state.  |
  `-----------------------------------------------------------*/
  yydefault:
    yyn = yydefact_[+yystack_[0].state];
    if (yyn == 0)
      goto yyerrlab;
    goto yyreduce;


  /*-----------------------------.
  | yyreduce -- do a reduction.  |
  `-----------------------------*/
  yyreduce:
    yylen = yyr2_[yyn];
    {
      stack_symbol_type yylhs;
      yylhs.state = yy_lr_goto_state_ (yystack_[yylen].state, yyr1_[yyn]);
      /* If YYLEN is nonzero, implement the default value of the
         action: '$$ = $1'.  Otherwise, use the top of the stack.

         Otherwise, the following line sets YYLHS.VALUE to garbage.
         This behavior is undocumented and Bison users should not rely
         upon it.  */
      if (yylen)
        yylhs.value = yystack_[yylen - 1].value;
      else
        yylhs.value = yystack_[0].value;

      // Default location.
      {
        stack_type::slice range (yystack_, yylen);
        YYLLOC_DEFAULT (yylhs.location, range, yylen);
        yyerror_range[1].location = yylhs.location;
      }

      // Perform the reduction.
      YY_REDUCE_PRINT (yyn);
#if YY_EXCEPTIONS
      try
#endif // YY_EXCEPTIONS
        {
          switch (yyn)
            {
  case 2: // start: %empty
#line 147 "parser.ypp"
                              { driver.tree = new Node ("start");
                                driver.tree->setLine(yylhs.location.begin.line);}
#line 618 "parser.tab.cpp"
    break;

  case 3: // start: globaldeclarations
#line 149 "parser.ypp"
                                    {   
                                        driver.tree = new Node("start");
                                        driver.tree->setLine(yylhs.location.begin.line);

                                        driver.tree->addChildNode((yystack_[0].value.node));
                                        if((yystack_[0].value.node)->checkSibling())
                                        {
                                            Node* temp = (yystack_[0].value.node);
                                                while(temp->checkSibling()){
                                                    temp = temp->getSibling();
                                                    driver.tree->addChildNode(temp);
                                                }
                                        }
                                    }
#line 637 "parser.tab.cpp"
    break;

  case 4: // literal: "number"
#line 165 "parser.ypp"
                            {
                             (yylhs.value.node) = new Node("number", std::to_string((yystack_[0].value.ival)));
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                            }
#line 646 "parser.tab.cpp"
    break;

  case 5: // literal: "string"
#line 169 "parser.ypp"
                            {
                             (yylhs.value.node) = new Node("string", *(yystack_[0].value.strVal));
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                            }
#line 655 "parser.tab.cpp"
    break;

  case 6: // literal: "true"
#line 173 "parser.ypp"
                            {
                             (yylhs.value.node) = new Node("boolean", "true");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                            }
#line 664 "parser.tab.cpp"
    break;

  case 7: // literal: "false"
#line 177 "parser.ypp"
                            {
                             (yylhs.value.node) = new Node("boolean", "false");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                            }
#line 673 "parser.tab.cpp"
    break;

  case 8: // type: "boolean"
#line 183 "parser.ypp"
                            {
                             (yylhs.value.node) = new Node("boolean");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                            }
#line 682 "parser.tab.cpp"
    break;

  case 9: // type: "int"
#line 187 "parser.ypp"
                            {
                             (yylhs.value.node) = new Node("int");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                            }
#line 691 "parser.tab.cpp"
    break;

  case 10: // globaldeclarations: globaldeclaration
#line 193 "parser.ypp"
                                            {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 699 "parser.tab.cpp"
    break;

  case 11: // globaldeclarations: globaldeclarations globaldeclaration
#line 196 "parser.ypp"
                                                               {
                             (yylhs.value.node) = (yystack_[1].value.node);
                             Node *temp = (yystack_[1].value.node);
                             while(temp->checkSibling()){
                                temp = temp->getSibling();
                             }
                            temp->setSibling((yystack_[0].value.node));
                            }
#line 712 "parser.tab.cpp"
    break;

  case 12: // globaldeclaration: variabledeclaration
#line 206 "parser.ypp"
                                              {
                             (yylhs.value.node) = new Node("globalVardeclaration");
                             (yylhs.value.node) -> setLine(yylhs.location.begin.line);
                             (yylhs.value.node) -> addChildNode((yystack_[0].value.node));
                            }
#line 722 "parser.tab.cpp"
    break;

  case 13: // globaldeclaration: functiondeclaration
#line 211 "parser.ypp"
                                             {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 730 "parser.tab.cpp"
    break;

  case 14: // globaldeclaration: mainfunctiondeclaration
#line 214 "parser.ypp"
                                                 {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 738 "parser.tab.cpp"
    break;

  case 15: // variabledeclaration: type identifier ";"
#line 219 "parser.ypp"
                                                      {
                             (yylhs.value.node) = new Node("variableDeclaration");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);

                             (yylhs.value.node)->addChildNode((yystack_[2].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[1].value.node));
                            }
#line 750 "parser.tab.cpp"
    break;

  case 16: // identifier: "id"
#line 228 "parser.ypp"
                               {
                             (yylhs.value.node) = new Node("id", *(yystack_[0].value.strVal));
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);

                            }
#line 760 "parser.tab.cpp"
    break;

  case 17: // functiondeclaration: functionheader block
#line 235 "parser.ypp"
                                               {
                             (yylhs.value.node) = new Node("functionDeclaration");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[1].value.node));
                             if((yystack_[1].value.node)->checkSibling())
                             {
                                 Node* temp = (yystack_[1].value.node);
                                 while(temp->checkSibling())
                                 {
                                     temp = temp->getSibling();
                                     (yylhs.value.node)->addChildNode(temp);
                                 }
                             }
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 780 "parser.tab.cpp"
    break;

  case 18: // functionheader: type functiondeclarator
#line 252 "parser.ypp"
                                                  {
                             (yylhs.value.node) = (yystack_[1].value.node);
                             (yylhs.value.node)->setSibling((yystack_[0].value.node));
                            }
#line 789 "parser.tab.cpp"
    break;

  case 19: // functionheader: "void" functiondeclarator
#line 256 "parser.ypp"
                                                   {
                             (yylhs.value.node) = new Node("void");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->setSibling((yystack_[0].value.node));
                            }
#line 799 "parser.tab.cpp"
    break;

  case 20: // functiondeclarator: identifier "(" formalparameterlist ")"
#line 263 "parser.ypp"
                                                                         {
                             
                             (yylhs.value.node) = (yystack_[3].value.node);
                             Node * temp = new Node("formalParameters");
                             temp->setLine(yylhs.location.begin.line);
                             temp->addChildNode((yystack_[1].value.node));
                             (yylhs.value.node)->setSibling(temp);
                            }
#line 812 "parser.tab.cpp"
    break;

  case 21: // functiondeclarator: identifier "(" ")"
#line 271 "parser.ypp"
                                                     {
                             (yylhs.value.node) = (yystack_[2].value.node);

                            }
#line 821 "parser.tab.cpp"
    break;

  case 22: // formalparameterlist: formalparameter
#line 277 "parser.ypp"
                                         {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 829 "parser.tab.cpp"
    break;

  case 23: // formalparameterlist: formalparameterlist "," formalparameter
#line 280 "parser.ypp"
                                                                     {
                             (yylhs.value.node) = (yystack_[2].value.node);
                             Node* temp = (yystack_[2].value.node);
                             //Go to end of sibing chain and and add extra formal parameter at the end
                             while(temp->checkSibling())
                             {
                                 temp = temp->getSibling();
                             }
                             temp->setSibling((yystack_[0].value.node));
                            }
#line 844 "parser.tab.cpp"
    break;

  case 24: // formalparameter: type identifier
#line 292 "parser.ypp"
                                         {
                             (yylhs.value.node) = new Node ("formalParameter");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[1].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 855 "parser.tab.cpp"
    break;

  case 25: // mainfunctiondeclaration: mainfunctiondeclarator block
#line 300 "parser.ypp"
                                                      {
                             (yylhs.value.node) = new Node ("mainFunctionDeclaration");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[1].value.node));
                             if((yystack_[1].value.node)->checkSibling())
                             {
                                 Node* temp = (yystack_[1].value.node);
                                 while(temp->checkSibling())
                                 {
                                     temp = temp->getSibling();
                                     (yylhs.value.node)->addChildNode(temp);
                                 }
                             }
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 875 "parser.tab.cpp"
    break;

  case 26: // mainfunctiondeclarator: identifier "(" ")"
#line 317 "parser.ypp"
                                                    {
                             (yylhs.value.node) = new Node("void");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->setSibling((yystack_[2].value.node));
                            }
#line 885 "parser.tab.cpp"
    break;

  case 27: // mainfunctiondeclarator: identifier "(" formalparameterlist ")"
#line 323 "parser.ypp"
                                                                           {
                             
                             (yylhs.value.node) = (yystack_[3].value.node);
                             Node * temp = new Node("formalParameters");
                             temp->addChildNode((yystack_[1].value.node));
                             (yylhs.value.node)->setSibling(temp);
                            }
#line 897 "parser.tab.cpp"
    break;

  case 28: // block: "{" blockstatements "}"
#line 332 "parser.ypp"
                                                           {
                             (yylhs.value.node) = new Node("block");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[1].value.node));

                             if((yystack_[1].value.node)->checkSibling())
                             {
                                 Node* temp = (yystack_[1].value.node);
                                 while(temp->checkSibling())
                                 {
                                     temp = temp->getSibling();
                                     (yylhs.value.node)->addChildNode(temp);
                                 }
                             }
                            }
#line 917 "parser.tab.cpp"
    break;

  case 29: // block: "{" "}"
#line 347 "parser.ypp"
                                           {
                             (yylhs.value.node) = new Node("block");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                            }
#line 926 "parser.tab.cpp"
    break;

  case 30: // blockstatements: blockstatement
#line 353 "parser.ypp"
                                        {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 934 "parser.tab.cpp"
    break;

  case 31: // blockstatements: blockstatements blockstatement
#line 356 "parser.ypp"
                                                        {
                             (yylhs.value.node) = (yystack_[1].value.node);
                             Node* temp = (yystack_[1].value.node);
                             //Go to end of sibing chain and add extra block statement to the end
                             while(temp->checkSibling())
                             {
                                 temp = temp->getSibling();
                             }
                             temp->setSibling((yystack_[0].value.node));
                            }
#line 949 "parser.tab.cpp"
    break;

  case 32: // blockstatement: variabledeclaration
#line 368 "parser.ypp"
                                             {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 957 "parser.tab.cpp"
    break;

  case 33: // blockstatement: statement
#line 371 "parser.ypp"
                                   {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 965 "parser.tab.cpp"
    break;

  case 34: // statement: block
#line 376 "parser.ypp"
                               {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 973 "parser.tab.cpp"
    break;

  case 35: // statement: ";"
#line 379 "parser.ypp"
                                     {
                             (yylhs.value.node) = new Node("emptyStatement");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                            }
#line 982 "parser.tab.cpp"
    break;

  case 36: // statement: statementexpression ";"
#line 383 "parser.ypp"
                                                         {
                             (yylhs.value.node) = (yystack_[1].value.node);
                            }
#line 990 "parser.tab.cpp"
    break;

  case 37: // statement: "break" ";"
#line 386 "parser.ypp"
                                             {
                             (yylhs.value.node) = new Node("breakStatement");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                            }
#line 999 "parser.tab.cpp"
    break;

  case 38: // statement: "return" expression ";"
#line 390 "parser.ypp"
                                                         {
                             (yylhs.value.node) = new Node("returnStatement");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[1].value.node));
                            }
#line 1009 "parser.tab.cpp"
    break;

  case 39: // statement: "return" ";"
#line 395 "parser.ypp"
                                              {
                             (yylhs.value.node) = new Node("returnStatement");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                            }
#line 1018 "parser.tab.cpp"
    break;

  case 40: // statement: "if" "(" expression ")" statement
#line 399 "parser.ypp"
                                                                   {
                             (yylhs.value.node) = new Node("ifStatement");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[2].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 1029 "parser.tab.cpp"
    break;

  case 41: // statement: "if" "(" expression ")" statement "else" statement
#line 405 "parser.ypp"
                                                                                    {
                             (yylhs.value.node) = new Node("ifElseStatement");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[4].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[2].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 1041 "parser.tab.cpp"
    break;

  case 42: // statement: "while" "(" expression ")" statement
#line 412 "parser.ypp"
                                                                      {
                             (yylhs.value.node) = new Node("whileStatement");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[2].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 1052 "parser.tab.cpp"
    break;

  case 43: // statementexpression: assignment
#line 420 "parser.ypp"
                                    {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 1060 "parser.tab.cpp"
    break;

  case 44: // statementexpression: functioninvocation
#line 423 "parser.ypp"
                                            {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 1068 "parser.tab.cpp"
    break;

  case 45: // primary: literal
#line 428 "parser.ypp"
                                  {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 1076 "parser.tab.cpp"
    break;

  case 46: // primary: "(" expression ")"
#line 431 "parser.ypp"
                                                    {
                             (yylhs.value.node) = (yystack_[1].value.node);
                            }
#line 1084 "parser.tab.cpp"
    break;

  case 47: // primary: functioninvocation
#line 434 "parser.ypp"
                                            {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 1092 "parser.tab.cpp"
    break;

  case 48: // argumentlist: expression
#line 439 "parser.ypp"
                                     {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 1100 "parser.tab.cpp"
    break;

  case 49: // argumentlist: argumentlist "," expression
#line 442 "parser.ypp"
                                                          {
                             (yylhs.value.node) = (yystack_[2].value.node);
                             //Go to end of sibing chain and add extra expression to the end
                             Node* temp = (yystack_[2].value.node);
                             while(temp->checkSibling())
                             {
                                 temp = temp->getSibling();
                             }
                             temp->setSibling((yystack_[0].value.node));
                            }
#line 1115 "parser.tab.cpp"
    break;

  case 50: // functioninvocation: identifier "(" argumentlist ")"
#line 454 "parser.ypp"
                                                                  {
                             (yylhs.value.node) = new Node("functionInvocation");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[3].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[1].value.node));

                             if((yystack_[1].value.node)->checkSibling())
                             {
                                 Node* temp = (yystack_[1].value.node);
                                 while(temp->checkSibling())
                                 {
                                     temp = temp->getSibling();
                                     (yylhs.value.node)->addChildNode(temp);
                                 }
                             }
                            }
#line 1136 "parser.tab.cpp"
    break;

  case 51: // functioninvocation: identifier "(" ")"
#line 471 "parser.ypp"
                                                     {
                             (yylhs.value.node) = new Node("functionInvocation");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[2].value.node));
                            }
#line 1146 "parser.tab.cpp"
    break;

  case 52: // postfixexpression: primary
#line 478 "parser.ypp"
                                 {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 1154 "parser.tab.cpp"
    break;

  case 53: // postfixexpression: identifier
#line 481 "parser.ypp"
                                    {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 1162 "parser.tab.cpp"
    break;

  case 54: // unaryexpression: "-" unaryexpression
#line 486 "parser.ypp"
                                               {
                             (yylhs.value.node) = new Node("unaryExpression", "-");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 1172 "parser.tab.cpp"
    break;

  case 55: // unaryexpression: "!" unaryexpression
#line 491 "parser.ypp"
                                               {
                             (yylhs.value.node) = new Node("unaryExpression", "!");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 1182 "parser.tab.cpp"
    break;

  case 56: // unaryexpression: postfixexpression
#line 496 "parser.ypp"
                                           {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 1190 "parser.tab.cpp"
    break;

  case 57: // multiplicativeexpression: unaryexpression
#line 501 "parser.ypp"
                                          {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 1198 "parser.tab.cpp"
    break;

  case 58: // multiplicativeexpression: multiplicativeexpression "*" unaryexpression
#line 504 "parser.ypp"
                                                                         {
                             (yylhs.value.node) = new Node ("*");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[2].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 1209 "parser.tab.cpp"
    break;

  case 59: // multiplicativeexpression: multiplicativeexpression "/" unaryexpression
#line 510 "parser.ypp"
                                                                        {
                             (yylhs.value.node) = new Node ("/");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[2].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 1220 "parser.tab.cpp"
    break;

  case 60: // multiplicativeexpression: multiplicativeexpression "%" unaryexpression
#line 516 "parser.ypp"
                                                                        {
                             (yylhs.value.node) = new Node ("%");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[2].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 1231 "parser.tab.cpp"
    break;

  case 61: // additiveexpression: multiplicativeexpression
#line 524 "parser.ypp"
                                                  {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 1239 "parser.tab.cpp"
    break;

  case 62: // additiveexpression: additiveexpression "+" multiplicativeexpression
#line 527 "parser.ypp"
                                                                           {
                             (yylhs.value.node) = new Node ("+");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[2].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 1250 "parser.tab.cpp"
    break;

  case 63: // additiveexpression: additiveexpression "-" multiplicativeexpression
#line 533 "parser.ypp"
                                                                           {
                             (yylhs.value.node) = new Node ("-");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[2].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 1261 "parser.tab.cpp"
    break;

  case 64: // relationalexpression: additiveexpression
#line 541 "parser.ypp"
                                            {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 1269 "parser.tab.cpp"
    break;

  case 65: // relationalexpression: relationalexpression "<" additiveexpression
#line 544 "parser.ypp"
                                                                      {
                             (yylhs.value.node) = new Node ("<");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[2].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 1280 "parser.tab.cpp"
    break;

  case 66: // relationalexpression: relationalexpression ">" additiveexpression
#line 550 "parser.ypp"
                                                                      {
                             (yylhs.value.node) = new Node (">");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[2].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 1291 "parser.tab.cpp"
    break;

  case 67: // relationalexpression: relationalexpression "<=" additiveexpression
#line 556 "parser.ypp"
                                                                       {
                             (yylhs.value.node) = new Node ("<=");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[2].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 1302 "parser.tab.cpp"
    break;

  case 68: // relationalexpression: relationalexpression ">=" additiveexpression
#line 562 "parser.ypp"
                                                                       {
                             (yylhs.value.node) = new Node (">=");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[2].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 1313 "parser.tab.cpp"
    break;

  case 69: // equalityexpression: relationalexpression
#line 570 "parser.ypp"
                                              {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 1321 "parser.tab.cpp"
    break;

  case 70: // equalityexpression: equalityexpression "==" relationalexpression
#line 573 "parser.ypp"
                                                                         {
                             (yylhs.value.node) = new Node ("==");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[2].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 1332 "parser.tab.cpp"
    break;

  case 71: // equalityexpression: equalityexpression "!=" relationalexpression
#line 579 "parser.ypp"
                                                                          {
                             (yylhs.value.node) = new Node ("!=");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[2].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 1343 "parser.tab.cpp"
    break;

  case 72: // conditionalandexpression: equalityexpression
#line 587 "parser.ypp"
                                            {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 1351 "parser.tab.cpp"
    break;

  case 73: // conditionalandexpression: conditionalandexpression "&&" equalityexpression
#line 590 "parser.ypp"
                                                                           {
                             (yylhs.value.node) = new Node ("&&");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[2].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 1362 "parser.tab.cpp"
    break;

  case 74: // conditionalorexpression: conditionalandexpression
#line 598 "parser.ypp"
                                                  {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 1370 "parser.tab.cpp"
    break;

  case 75: // conditionalorexpression: conditionalorexpression "||" conditionalandexpression
#line 601 "parser.ypp"
                                                                               {
                             (yylhs.value.node) = new Node ("||");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[2].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 1381 "parser.tab.cpp"
    break;

  case 76: // assignmentexpression: conditionalorexpression
#line 609 "parser.ypp"
                                                 {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 1389 "parser.tab.cpp"
    break;

  case 77: // assignmentexpression: assignment
#line 612 "parser.ypp"
                                    {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 1397 "parser.tab.cpp"
    break;

  case 78: // assignment: identifier "=" assignmentexpression
#line 617 "parser.ypp"
                                                                  {
                             (yylhs.value.node) = new Node("=");
                             (yylhs.value.node)->setLine(yylhs.location.begin.line);
                             (yylhs.value.node)->addChildNode((yystack_[2].value.node));
                             (yylhs.value.node)->addChildNode((yystack_[0].value.node));
                            }
#line 1408 "parser.tab.cpp"
    break;

  case 79: // expression: assignmentexpression
#line 625 "parser.ypp"
                                              {
                             (yylhs.value.node) = (yystack_[0].value.node);
                            }
#line 1416 "parser.tab.cpp"
    break;


#line 1420 "parser.tab.cpp"

            default:
              break;
            }
        }
#if YY_EXCEPTIONS
      catch (const syntax_error& yyexc)
        {
          YYCDEBUG << "Caught exception: " << yyexc.what() << '\n';
          error (yyexc);
          YYERROR;
        }
#endif // YY_EXCEPTIONS
      YY_SYMBOL_PRINT ("-> $$ =", yylhs);
      yypop_ (yylen);
      yylen = 0;

      // Shift the result of the reduction.
      yypush_ (YY_NULLPTR, YY_MOVE (yylhs));
    }
    goto yynewstate;


  /*--------------------------------------.
  | yyerrlab -- here on detecting error.  |
  `--------------------------------------*/
  yyerrlab:
    // If not already recovering from an error, report this error.
    if (!yyerrstatus_)
      {
        ++yynerrs_;
        context yyctx (*this, yyla);
        std::string msg = yysyntax_error_ (yyctx);
        error (yyla.location, YY_MOVE (msg));
      }


    yyerror_range[1].location = yyla.location;
    if (yyerrstatus_ == 3)
      {
        /* If just tried and failed to reuse lookahead token after an
           error, discard it.  */

        // Return failure if at end of input.
        if (yyla.kind () == symbol_kind::S_YYEOF)
          YYABORT;
        else if (!yyla.empty ())
          {
            yy_destroy_ ("Error: discarding", yyla);
            yyla.clear ();
          }
      }

    // Else will try to reuse lookahead token after shifting the error token.
    goto yyerrlab1;


  /*---------------------------------------------------.
  | yyerrorlab -- error raised explicitly by YYERROR.  |
  `---------------------------------------------------*/
  yyerrorlab:
    /* Pacify compilers when the user code never invokes YYERROR and
       the label yyerrorlab therefore never appears in user code.  */
    if (false)
      YYERROR;

    /* Do not reclaim the symbols of the rule whose action triggered
       this YYERROR.  */
    yypop_ (yylen);
    yylen = 0;
    YY_STACK_PRINT ();
    goto yyerrlab1;


  /*-------------------------------------------------------------.
  | yyerrlab1 -- common code for both syntax error and YYERROR.  |
  `-------------------------------------------------------------*/
  yyerrlab1:
    yyerrstatus_ = 3;   // Each real token shifted decrements this.
    // Pop stack until we find a state that shifts the error token.
    for (;;)
      {
        yyn = yypact_[+yystack_[0].state];
        if (!yy_pact_value_is_default_ (yyn))
          {
            yyn += symbol_kind::S_YYerror;
            if (0 <= yyn && yyn <= yylast_
                && yycheck_[yyn] == symbol_kind::S_YYerror)
              {
                yyn = yytable_[yyn];
                if (0 < yyn)
                  break;
              }
          }

        // Pop the current state because it cannot handle the error token.
        if (yystack_.size () == 1)
          YYABORT;

        yyerror_range[1].location = yystack_[0].location;
        yy_destroy_ ("Error: popping", yystack_[0]);
        yypop_ ();
        YY_STACK_PRINT ();
      }
    {
      stack_symbol_type error_token;

      yyerror_range[2].location = yyla.location;
      YYLLOC_DEFAULT (error_token.location, yyerror_range, 2);

      // Shift the error token.
      error_token.state = state_type (yyn);
      yypush_ ("Shifting", YY_MOVE (error_token));
    }
    goto yynewstate;


  /*-------------------------------------.
  | yyacceptlab -- YYACCEPT comes here.  |
  `-------------------------------------*/
  yyacceptlab:
    yyresult = 0;
    goto yyreturn;


  /*-----------------------------------.
  | yyabortlab -- YYABORT comes here.  |
  `-----------------------------------*/
  yyabortlab:
    yyresult = 1;
    goto yyreturn;


  /*-----------------------------------------------------.
  | yyreturn -- parsing is finished, return the result.  |
  `-----------------------------------------------------*/
  yyreturn:
    if (!yyla.empty ())
      yy_destroy_ ("Cleanup: discarding lookahead", yyla);

    /* Do not reclaim the symbols of the rule whose action triggered
       this YYABORT or YYACCEPT.  */
    yypop_ (yylen);
    YY_STACK_PRINT ();
    while (1 < yystack_.size ())
      {
        yy_destroy_ ("Cleanup: popping", yystack_[0]);
        yypop_ ();
      }

    return yyresult;
  }
#if YY_EXCEPTIONS
    catch (...)
      {
        YYCDEBUG << "Exception caught: cleaning lookahead and stack\n";
        // Do not try to display the values of the reclaimed symbols,
        // as their printers might throw an exception.
        if (!yyla.empty ())
          yy_destroy_ (YY_NULLPTR, yyla);

        while (1 < yystack_.size ())
          {
            yy_destroy_ (YY_NULLPTR, yystack_[0]);
            yypop_ ();
          }
        throw;
      }
#endif // YY_EXCEPTIONS
  }

  void
  Parser::error (const syntax_error& yyexc)
  {
    error (yyexc.location, yyexc.what ());
  }

  const char *
  Parser::symbol_name (symbol_kind_type yysymbol)
  {
    static const char *const yy_sname[] =
    {
    "T_EOF", "error", "invalid token", "id", "number", "string", "T_CESC_B",
  "T_CESC_F", "T_CESC_T", "T_CESC_R", "T_CESC_N", "T_CESC_APOST",
  "T_CESC_QUOT", "T_CESC_SLASH", "true", "false", "boolean", "int", "void",
  "if", "else", "while", "break", "return", "+", "-", "*", "/", "%", "<",
  ">", "<=", ">=", "=", "==", "!=", "!", "&&", "||", "(", ")", "{", "}",
  ";", ",", "T_ERR", "$accept", "start", "literal", "type",
  "globaldeclarations", "globaldeclaration", "variabledeclaration",
  "identifier", "functiondeclaration", "functionheader",
  "functiondeclarator", "formalparameterlist", "formalparameter",
  "mainfunctiondeclaration", "mainfunctiondeclarator", "block",
  "blockstatements", "blockstatement", "statement", "statementexpression",
  "primary", "argumentlist", "functioninvocation", "postfixexpression",
  "unaryexpression", "multiplicativeexpression", "additiveexpression",
  "relationalexpression", "equalityexpression", "conditionalandexpression",
  "conditionalorexpression", "assignmentexpression", "assignment",
  "expression", YY_NULLPTR
    };
    return yy_sname[yysymbol];
  }



  // Parser::context.
  Parser::context::context (const Parser& yyparser, const symbol_type& yyla)
    : yyparser_ (yyparser)
    , yyla_ (yyla)
  {}

  int
  Parser::context::expected_tokens (symbol_kind_type yyarg[], int yyargn) const
  {
    // Actual number of expected tokens
    int yycount = 0;

    int yyn = yypact_[+yyparser_.yystack_[0].state];
    if (!yy_pact_value_is_default_ (yyn))
      {
        /* Start YYX at -YYN if negative to avoid negative indexes in
           YYCHECK.  In other words, skip the first -YYN actions for
           this state because they are default actions.  */
        int yyxbegin = yyn < 0 ? -yyn : 0;
        // Stay within bounds of both yycheck and yytname.
        int yychecklim = yylast_ - yyn + 1;
        int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
        for (int yyx = yyxbegin; yyx < yyxend; ++yyx)
          if (yycheck_[yyx + yyn] == yyx && yyx != symbol_kind::S_YYerror
              && !yy_table_value_is_error_ (yytable_[yyx + yyn]))
            {
              if (!yyarg)
                ++yycount;
              else if (yycount == yyargn)
                return 0;
              else
                yyarg[yycount++] = YY_CAST (symbol_kind_type, yyx);
            }
      }

    if (yyarg && yycount == 0 && 0 < yyargn)
      yyarg[0] = symbol_kind::S_YYEMPTY;
    return yycount;
  }



  int
  Parser::yy_syntax_error_arguments_ (const context& yyctx,
                                                 symbol_kind_type yyarg[], int yyargn) const
  {
    /* There are many possibilities here to consider:
       - If this state is a consistent state with a default action, then
         the only way this function was invoked is if the default action
         is an error action.  In that case, don't check for expected
         tokens because there are none.
       - The only way there can be no lookahead present (in yyla) is
         if this state is a consistent state with a default action.
         Thus, detecting the absence of a lookahead is sufficient to
         determine that there is no unexpected or expected token to
         report.  In that case, just report a simple "syntax error".
       - Don't assume there isn't a lookahead just because this state is
         a consistent state with a default action.  There might have
         been a previous inconsistent state, consistent state with a
         non-default action, or user semantic action that manipulated
         yyla.  (However, yyla is currently not documented for users.)
       - Of course, the expected token list depends on states to have
         correct lookahead information, and it depends on the parser not
         to perform extra reductions after fetching a lookahead from the
         scanner and before detecting a syntax error.  Thus, state merging
         (from LALR or IELR) and default reductions corrupt the expected
         token list.  However, the list is correct for canonical LR with
         one exception: it will still contain any token that will not be
         accepted due to an error action in a later state.
    */

    if (!yyctx.lookahead ().empty ())
      {
        if (yyarg)
          yyarg[0] = yyctx.token ();
        int yyn = yyctx.expected_tokens (yyarg ? yyarg + 1 : yyarg, yyargn - 1);
        return yyn + 1;
      }
    return 0;
  }

  // Generate an error message.
  std::string
  Parser::yysyntax_error_ (const context& yyctx) const
  {
    // Its maximum.
    enum { YYARGS_MAX = 5 };
    // Arguments of yyformat.
    symbol_kind_type yyarg[YYARGS_MAX];
    int yycount = yy_syntax_error_arguments_ (yyctx, yyarg, YYARGS_MAX);

    char const* yyformat = YY_NULLPTR;
    switch (yycount)
      {
#define YYCASE_(N, S)                         \
        case N:                               \
          yyformat = S;                       \
        break
      default: // Avoid compiler warnings.
        YYCASE_ (0, YY_("syntax error"));
        YYCASE_ (1, YY_("syntax error, unexpected %s"));
        YYCASE_ (2, YY_("syntax error, unexpected %s, expecting %s"));
        YYCASE_ (3, YY_("syntax error, unexpected %s, expecting %s or %s"));
        YYCASE_ (4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
        YYCASE_ (5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
#undef YYCASE_
      }

    std::string yyres;
    // Argument number.
    std::ptrdiff_t yyi = 0;
    for (char const* yyp = yyformat; *yyp; ++yyp)
      if (yyp[0] == '%' && yyp[1] == 's' && yyi < yycount)
        {
          yyres += symbol_name (yyarg[yyi++]);
          ++yyp;
        }
      else
        yyres += *yyp;
    return yyres;
  }


  const signed char Parser::yypact_ninf_ = -94;

  const signed char Parser::yytable_ninf_ = -1;

  const short
  Parser::yypact_[] =
  {
      53,   -94,   -94,   -94,    20,    33,    20,    53,   -94,   -94,
     -36,   -94,    16,   -94,    16,    28,   -94,   -94,   -18,   -94,
     -94,    -5,    23,   -94,   -94,     3,   -94,   -94,    20,    11,
     -94,    44,    46,    52,    87,   -94,   -94,    20,   -94,    -3,
     -94,    65,   -94,   -94,    66,   -94,   -94,   -94,    14,   -94,
     -94,    61,   142,   142,   -94,   -94,   -94,   -94,   -94,   142,
     142,   142,   -94,   -94,    -3,   -94,   -94,   -94,   -94,    77,
      74,    43,    90,    76,    98,   -94,   -94,    72,    92,   142,
     129,   -94,   -94,   -94,   -94,   -94,    49,    99,   102,   -94,
     -94,   112,   142,   142,   142,   142,   142,   142,   142,   142,
     142,   142,   142,   142,   142,   -94,   -94,   -94,    19,   -94,
      97,    97,   -94,   -94,   -94,   -94,    77,    77,    74,    74,
      74,    74,    43,    43,    90,    76,   -94,   142,   117,   -94,
     -94,    97,   -94
  };

  const signed char
  Parser::yydefact_[] =
  {
       2,    16,     8,     9,     0,     0,     0,     3,    10,    12,
       0,    13,     0,    14,     0,     0,    19,     1,     0,    18,
      11,     0,     0,    17,    25,     0,    15,    26,     0,     0,
      22,     0,     0,     0,     0,    29,    35,     0,    32,     0,
      34,     0,    30,    33,     0,    44,    43,    21,     0,    24,
      27,     0,     0,     0,    37,     4,     5,     6,     7,     0,
       0,     0,    39,    45,    53,    52,    47,    56,    57,    61,
      64,    69,    72,    74,    76,    79,    77,     0,     0,     0,
       0,    28,    31,    36,    20,    23,     0,     0,    53,    54,
      55,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    38,    78,    51,     0,    48,
       0,     0,    46,    58,    59,    60,    62,    63,    65,    66,
      67,    68,    70,    71,    73,    75,    50,     0,    40,    42,
      49,     0,    41
  };

  const short
  Parser::yypgoto_[] =
  {
     -94,   -94,   -94,     9,   -94,   135,    -9,     0,   -94,   -94,
     147,   130,   107,   -94,   -94,    48,   -94,   118,   -93,   -94,
     -94,   -94,   -17,   -94,   -45,    26,    51,    27,    57,    58,
     -94,    82,   -14,   -51
  };

  const signed char
  Parser::yydefgoto_[] =
  {
       0,     5,    63,    28,     7,     8,     9,    88,    11,    12,
      16,    29,    30,    13,    14,    40,    41,    42,    43,    44,
      65,   108,    66,    67,    68,    69,    70,    71,    72,    73,
      74,    75,    76,    77
  };

  const unsigned char
  Parser::yytable_[] =
  {
      10,    86,    87,    21,    15,    45,    18,    10,    46,     6,
      91,     2,     3,    38,    89,    90,     6,   128,   129,     2,
       3,    25,    39,     1,    45,    26,     1,    46,    49,   109,
      79,    37,    38,    17,    64,    27,    80,    78,   132,     2,
       3,    39,    31,    47,    32,    33,    34,   113,   114,   115,
      37,    50,    64,    64,    84,    51,     1,    22,    51,   126,
      23,    64,    24,   127,    22,    35,    36,    25,     1,     2,
       3,     4,    97,    98,    99,   100,   130,     2,     3,    64,
      64,     2,     3,    52,    31,    53,    32,    33,    34,   110,
       1,    55,    56,    45,    45,    54,    46,    46,    95,    96,
       1,    57,    58,    92,    93,    94,    22,    81,    36,    83,
      39,    39,    59,   103,    45,   105,    31,    46,    32,    33,
      34,   116,   117,    60,   101,   102,    61,    64,   122,   123,
      62,    39,     1,    55,    56,    26,   104,   131,    22,   111,
      36,    80,    20,    57,    58,     1,    55,    56,   118,   119,
     120,   121,   112,    19,    59,    48,    57,    58,    85,    82,
     124,   106,   125,     0,     0,    60,     0,    59,    61,   107,
       0,     0,     0,     0,     0,     0,     0,     0,    60,     0,
       0,    61
  };

  const short
  Parser::yycheck_[] =
  {
       0,    52,    53,    39,     4,    22,     6,     7,    22,     0,
      61,    16,    17,    22,    59,    60,     7,   110,   111,    16,
      17,    39,    22,     3,    41,    43,     3,    41,    28,    80,
      33,    22,    41,     0,    34,    40,    39,    37,   131,    16,
      17,    41,    19,    40,    21,    22,    23,    92,    93,    94,
      41,    40,    52,    53,    40,    44,     3,    41,    44,    40,
      12,    61,    14,    44,    41,    42,    43,    39,     3,    16,
      17,    18,    29,    30,    31,    32,   127,    16,    17,    79,
      80,    16,    17,    39,    19,    39,    21,    22,    23,    40,
       3,     4,     5,   110,   111,    43,   110,   111,    24,    25,
       3,    14,    15,    26,    27,    28,    41,    42,    43,    43,
     110,   111,    25,    37,   131,    43,    19,   131,    21,    22,
      23,    95,    96,    36,    34,    35,    39,   127,   101,   102,
      43,   131,     3,     4,     5,    43,    38,    20,    41,    40,
      43,    39,     7,    14,    15,     3,     4,     5,    97,    98,
      99,   100,    40,     6,    25,    25,    14,    15,    51,    41,
     103,    79,   104,    -1,    -1,    36,    -1,    25,    39,    40,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    36,    -1,
      -1,    39
  };

  const signed char
  Parser::yystos_[] =
  {
       0,     3,    16,    17,    18,    47,    49,    50,    51,    52,
      53,    54,    55,    59,    60,    53,    56,     0,    53,    56,
      51,    39,    41,    61,    61,    39,    43,    40,    49,    57,
      58,    19,    21,    22,    23,    42,    43,    49,    52,    53,
      61,    62,    63,    64,    65,    68,    78,    40,    57,    53,
      40,    44,    39,    39,    43,     4,     5,    14,    15,    25,
      36,    39,    43,    48,    53,    66,    68,    69,    70,    71,
      72,    73,    74,    75,    76,    77,    78,    79,    53,    33,
      39,    42,    63,    43,    40,    58,    79,    79,    53,    70,
      70,    79,    26,    27,    28,    24,    25,    29,    30,    31,
      32,    34,    35,    37,    38,    43,    77,    40,    67,    79,
      40,    40,    40,    70,    70,    70,    71,    71,    72,    72,
      72,    72,    73,    73,    74,    75,    40,    44,    64,    64,
      79,    20,    64
  };

  const signed char
  Parser::yyr1_[] =
  {
       0,    46,    47,    47,    48,    48,    48,    48,    49,    49,
      50,    50,    51,    51,    51,    52,    53,    54,    55,    55,
      56,    56,    57,    57,    58,    59,    60,    60,    61,    61,
      62,    62,    63,    63,    64,    64,    64,    64,    64,    64,
      64,    64,    64,    65,    65,    66,    66,    66,    67,    67,
      68,    68,    69,    69,    70,    70,    70,    71,    71,    71,
      71,    72,    72,    72,    73,    73,    73,    73,    73,    74,
      74,    74,    75,    75,    76,    76,    77,    77,    78,    79
  };

  const signed char
  Parser::yyr2_[] =
  {
       0,     2,     0,     1,     1,     1,     1,     1,     1,     1,
       1,     2,     1,     1,     1,     3,     1,     2,     2,     2,
       4,     3,     1,     3,     2,     2,     3,     4,     3,     2,
       1,     2,     1,     1,     1,     1,     2,     2,     3,     2,
       5,     7,     5,     1,     1,     1,     3,     1,     1,     3,
       4,     3,     1,     1,     2,     2,     1,     1,     3,     3,
       3,     1,     3,     3,     1,     3,     3,     3,     3,     1,
       3,     3,     1,     3,     1,     3,     1,     1,     3,     1
  };




#if YYDEBUG
  const short
  Parser::yyrline_[] =
  {
       0,   147,   147,   149,   165,   169,   173,   177,   183,   187,
     193,   196,   206,   211,   214,   219,   228,   235,   252,   256,
     263,   271,   277,   280,   292,   300,   317,   323,   332,   347,
     353,   356,   368,   371,   376,   379,   383,   386,   390,   395,
     399,   405,   412,   420,   423,   428,   431,   434,   439,   442,
     454,   471,   478,   481,   486,   491,   496,   501,   504,   510,
     516,   524,   527,   533,   541,   544,   550,   556,   562,   570,
     573,   579,   587,   590,   598,   601,   609,   612,   617,   625
  };

  void
  Parser::yy_stack_print_ () const
  {
    *yycdebug_ << "Stack now";
    for (stack_type::const_iterator
           i = yystack_.begin (),
           i_end = yystack_.end ();
         i != i_end; ++i)
      *yycdebug_ << ' ' << int (i->state);
    *yycdebug_ << '\n';
  }

  void
  Parser::yy_reduce_print_ (int yyrule) const
  {
    int yylno = yyrline_[yyrule];
    int yynrhs = yyr2_[yyrule];
    // Print the symbols being reduced, and their result.
    *yycdebug_ << "Reducing stack by rule " << yyrule - 1
               << " (line " << yylno << "):\n";
    // The symbols being reduced.
    for (int yyi = 0; yyi < yynrhs; yyi++)
      YY_SYMBOL_PRINT ("   $" << yyi + 1 << " =",
                       yystack_[(yynrhs) - (yyi + 1)]);
  }
#endif // YYDEBUG

  Parser::symbol_kind_type
  Parser::yytranslate_ (int t)
  {
    // YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to
    // TOKEN-NUM as returned by yylex.
    static
    const signed char
    translate_table[] =
    {
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45
    };
    // Last valid token kind.
    const int code_max = 300;

    if (t <= 0)
      return symbol_kind::S_YYEOF;
    else if (t <= code_max)
      return YY_CAST (symbol_kind_type, translate_table[t]);
    else
      return symbol_kind::S_YYUNDEF;
  }

#line 8 "parser.ypp"
} // JCC
#line 1999 "parser.tab.cpp"

#line 631 "parser.ypp"


void JCC::Parser::error(const location_type &loc, const std::string &errmsg)
{
   std::cerr << "Error: " << errmsg << " at line: " << loc.begin.line << "\n";
}
