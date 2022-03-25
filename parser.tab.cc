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





#include "parser.tab.hh"


// Unqualified %code blocks.
#line 27 "./src/parser.yy"

    #include <iostream>
    #include <fstream>
    #include "./src/header.h"
    #include "./src/driver.hpp"
    
    // Define yylex
    #undef yylex
    #define yylex Driver.getToken

#line 57 "parser.tab.cc"


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

#line 8 "./src/parser.yy"
namespace JCC {
#line 150 "parser.tab.cc"

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
  case 4: // literal: "number"
#line 150 "./src/parser.yy"
                        {(yylhs.value.node) = new Node("Number", (yystack_[0].value.ival));}
#line 617 "parser.tab.cc"
    break;

  case 5: // literal: "string"
#line 151 "./src/parser.yy"
                           {(yylhs.value.node) = new Node("String");}
#line 623 "parser.tab.cc"
    break;

  case 6: // literal: "true"
#line 152 "./src/parser.yy"
                         {(yylhs.value.node) = new Node("True");}
#line 629 "parser.tab.cc"
    break;

  case 7: // literal: "false"
#line 153 "./src/parser.yy"
                          {(yylhs.value.node) = new Node("False");}
#line 635 "parser.tab.cc"
    break;

  case 10: // globaldeclarations: globaldeclaration
#line 160 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 641 "parser.tab.cc"
    break;

  case 11: // globaldeclarations: globaldeclarations globaldeclaration
#line 161 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[1].value.node); }
#line 647 "parser.tab.cc"
    break;

  case 12: // globaldeclaration: variabledeclaration
#line 164 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 653 "parser.tab.cc"
    break;

  case 13: // globaldeclaration: functiondeclaration
#line 165 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 659 "parser.tab.cc"
    break;

  case 14: // globaldeclaration: mainfunctiondeclaration
#line 166 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 665 "parser.tab.cc"
    break;

  case 15: // variabledeclaration: type identifier ";"
#line 169 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[2].value.node); }
#line 671 "parser.tab.cc"
    break;

  case 16: // identifier: "id"
#line 172 "./src/parser.yy"
                               {(yylhs.value.node) = new Node("ID");}
#line 677 "parser.tab.cc"
    break;

  case 17: // functiondeclaration: functionheader block
#line 175 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[1].value.node); }
#line 683 "parser.tab.cc"
    break;

  case 18: // functionheader: type functiondeclarator
#line 178 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[1].value.node); }
#line 689 "parser.tab.cc"
    break;

  case 20: // functiondeclarator: identifier "(" formalparameterlist ")"
#line 182 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[3].value.node); }
#line 695 "parser.tab.cc"
    break;

  case 21: // functiondeclarator: identifier "(" ")"
#line 183 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[2].value.node); }
#line 701 "parser.tab.cc"
    break;

  case 22: // formalparameterlist: formalparameter
#line 186 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 707 "parser.tab.cc"
    break;

  case 23: // formalparameterlist: formalparameterlist "," formalparameter
#line 187 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[2].value.node); }
#line 713 "parser.tab.cc"
    break;

  case 24: // formalparameter: type identifier
#line 190 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[1].value.node); }
#line 719 "parser.tab.cc"
    break;

  case 25: // mainfunctiondeclaration: mainfunctiondeclarator block
#line 193 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[1].value.node); }
#line 725 "parser.tab.cc"
    break;

  case 26: // mainfunctiondeclarator: identifier "(" ")"
#line 196 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[2].value.node); }
#line 731 "parser.tab.cc"
    break;

  case 29: // blockstatements: blockstatement
#line 203 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 737 "parser.tab.cc"
    break;

  case 30: // blockstatements: blockstatements blockstatement
#line 204 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[1].value.node); }
#line 743 "parser.tab.cc"
    break;

  case 31: // blockstatement: variabledeclaration
#line 207 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 749 "parser.tab.cc"
    break;

  case 32: // blockstatement: statement
#line 208 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 755 "parser.tab.cc"
    break;

  case 33: // statement: block
#line 211 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 761 "parser.tab.cc"
    break;

  case 35: // statement: statementexpression ";"
#line 213 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[1].value.node); }
#line 767 "parser.tab.cc"
    break;

  case 42: // statementexpression: assignment
#line 222 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 773 "parser.tab.cc"
    break;

  case 43: // statementexpression: functioninvocation
#line 223 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 779 "parser.tab.cc"
    break;

  case 44: // primary: literal
#line 226 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 785 "parser.tab.cc"
    break;

  case 46: // primary: functioninvocation
#line 228 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 791 "parser.tab.cc"
    break;

  case 47: // argumentlist: expression
#line 231 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 797 "parser.tab.cc"
    break;

  case 48: // argumentlist: argumentlist "," expression
#line 232 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[2].value.node); }
#line 803 "parser.tab.cc"
    break;

  case 49: // functioninvocation: identifier "(" argumentlist ")"
#line 235 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[3].value.node); }
#line 809 "parser.tab.cc"
    break;

  case 50: // functioninvocation: identifier "(" ")"
#line 236 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[2].value.node); }
#line 815 "parser.tab.cc"
    break;

  case 51: // postfixexpression: primary
#line 239 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 821 "parser.tab.cc"
    break;

  case 52: // postfixexpression: identifier
#line 240 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 827 "parser.tab.cc"
    break;

  case 55: // unaryexpression: postfixexpression
#line 245 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 833 "parser.tab.cc"
    break;

  case 56: // multiplicativeexpression: unaryexpression
#line 248 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 839 "parser.tab.cc"
    break;

  case 57: // multiplicativeexpression: multiplicativeexpression "*" unaryexpression
#line 249 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[2].value.node); }
#line 845 "parser.tab.cc"
    break;

  case 58: // multiplicativeexpression: multiplicativeexpression "/" unaryexpression
#line 250 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[2].value.node); }
#line 851 "parser.tab.cc"
    break;

  case 59: // multiplicativeexpression: multiplicativeexpression "%" unaryexpression
#line 251 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[2].value.node); }
#line 857 "parser.tab.cc"
    break;

  case 60: // additiveexpression: multiplicativeexpression
#line 254 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 863 "parser.tab.cc"
    break;

  case 61: // additiveexpression: additiveexpression "+" multiplicativeexpression
#line 255 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[2].value.node); }
#line 869 "parser.tab.cc"
    break;

  case 62: // additiveexpression: additiveexpression "-" multiplicativeexpression
#line 256 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[2].value.node); }
#line 875 "parser.tab.cc"
    break;

  case 63: // relationalexpression: additiveexpression
#line 259 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 881 "parser.tab.cc"
    break;

  case 64: // relationalexpression: relationalexpression "<" additiveexpression
#line 260 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[2].value.node); }
#line 887 "parser.tab.cc"
    break;

  case 65: // relationalexpression: relationalexpression ">" additiveexpression
#line 261 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[2].value.node); }
#line 893 "parser.tab.cc"
    break;

  case 66: // relationalexpression: relationalexpression "<=" additiveexpression
#line 262 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[2].value.node); }
#line 899 "parser.tab.cc"
    break;

  case 67: // relationalexpression: relationalexpression ">=" additiveexpression
#line 263 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[2].value.node); }
#line 905 "parser.tab.cc"
    break;

  case 68: // equalityexpression: relationalexpression
#line 266 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 911 "parser.tab.cc"
    break;

  case 69: // equalityexpression: equalityexpression "==" relationalexpression
#line 267 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[2].value.node); }
#line 917 "parser.tab.cc"
    break;

  case 70: // equalityexpression: equalityexpression "!=" relationalexpression
#line 268 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[2].value.node); }
#line 923 "parser.tab.cc"
    break;

  case 71: // conditionalandexpression: equalityexpression
#line 271 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 929 "parser.tab.cc"
    break;

  case 72: // conditionalandexpression: conditionalandexpression "&&" equalityexpression
#line 272 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[2].value.node); }
#line 935 "parser.tab.cc"
    break;

  case 73: // conditionalorexpression: conditionalandexpression
#line 275 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 941 "parser.tab.cc"
    break;

  case 74: // conditionalorexpression: conditionalorexpression "||" conditionalandexpression
#line 276 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[2].value.node); }
#line 947 "parser.tab.cc"
    break;

  case 75: // assignmentexpression: conditionalorexpression
#line 279 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 953 "parser.tab.cc"
    break;

  case 76: // assignmentexpression: assignment
#line 280 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 959 "parser.tab.cc"
    break;

  case 77: // assignment: identifier "=" assignmentexpression
#line 283 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[2].value.node); }
#line 965 "parser.tab.cc"
    break;

  case 78: // expression: assignmentexpression
#line 286 "./src/parser.yy"
                          { (yylhs.value.node) = (yystack_[0].value.node); }
#line 971 "parser.tab.cc"
    break;


#line 975 "parser.tab.cc"

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
        std::string msg = YY_("syntax error");
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

#if YYDEBUG || 0
  const char *
  Parser::symbol_name (symbol_kind_type yysymbol)
  {
    return yytname_[yysymbol];
  }
#endif // #if YYDEBUG || 0





  const signed char Parser::yypact_ninf_ = -95;

  const signed char Parser::yytable_ninf_ = -1;

  const short
  Parser::yypact_[] =
  {
      10,   -95,   -95,   -95,    17,    30,    17,    10,   -95,   -95,
      25,   -95,    12,   -95,    12,    38,   -95,   -95,     1,   -95,
     -95,    43,    20,   -95,   -95,    16,   -95,   -95,    59,    68,
      75,   112,   -95,   -95,    17,   -95,   -21,   -95,    63,   -95,
     -95,    77,   -95,   -95,   -95,    17,    14,   -95,   135,   135,
     -95,   -95,   -95,   -95,   -95,   135,   135,   135,   -95,   -95,
     -21,   -95,   -95,   -95,   -95,    96,    22,    40,    39,    23,
      73,   -95,   -95,    85,    90,   135,   127,   -95,   -95,   -95,
     -95,   -95,    71,    94,    95,    97,   -95,   -95,   103,   135,
     135,   135,   135,   135,   135,   135,   135,   135,   135,   135,
     135,   135,   -95,   -95,   -95,    15,   -95,   -95,    78,    78,
     -95,   -95,   -95,   -95,    96,    96,    22,    22,    22,    22,
      40,    40,    39,    23,   -95,   135,   124,   -95,   -95,    78,
     -95
  };

  const signed char
  Parser::yydefact_[] =
  {
       2,    16,     8,     9,     0,     0,     0,     3,    10,    12,
       0,    13,     0,    14,     0,     0,    19,     1,     0,    18,
      11,     0,     0,    17,    25,     0,    15,    26,     0,     0,
       0,     0,    28,    34,     0,    31,     0,    33,     0,    29,
      32,     0,    43,    42,    21,     0,     0,    22,     0,     0,
      36,     4,     5,     6,     7,     0,     0,     0,    38,    44,
      52,    51,    46,    55,    56,    60,    63,    68,    71,    73,
      75,    78,    76,     0,     0,     0,     0,    27,    30,    35,
      24,    20,     0,     0,     0,    52,    53,    54,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    37,    77,    50,     0,    47,    23,     0,     0,
      45,    57,    58,    59,    61,    62,    64,    65,    66,    67,
      69,    70,    72,    74,    49,     0,    39,    41,    48,     0,
      40
  };

  const short
  Parser::yypgoto_[] =
  {
     -95,   -95,   -95,   -14,   -95,   138,   -13,     0,   -95,   -95,
     140,   -95,    65,   -95,   -95,    53,   -95,   115,   -94,   -95,
     -95,   -95,   -19,   -95,   -39,    21,    -1,     4,    54,    55,
     -95,    82,   -17,   -47
  };

  const signed char
  Parser::yydefgoto_[] =
  {
       0,     5,    59,     6,     7,     8,     9,    85,    11,    12,
      16,    46,    47,    13,    14,    37,    38,    39,    40,    41,
      61,   105,    62,    63,    64,    65,    66,    67,    68,    69,
      70,    71,    72,    73
  };

  const unsigned char
  Parser::yytable_[] =
  {
      10,    83,    84,    42,    15,    43,    18,    10,    34,    35,
      88,    45,    75,     1,   126,   127,    86,    87,    76,    42,
       1,    43,    36,     1,    34,    35,     2,     3,     4,   106,
      17,    60,     2,     3,    74,   130,     2,     3,    36,    28,
      25,    29,    30,    31,    26,    80,    92,    93,    60,    60,
     111,   112,   113,    22,    81,   124,    44,    60,    82,   125,
     100,    22,    32,    33,    21,    23,     1,    24,    45,    94,
      95,    96,    97,    98,    99,    60,    60,    25,   128,     2,
       3,     1,    28,    27,    29,    30,    31,     2,     3,    42,
      42,    43,    43,   116,   117,   118,   119,    28,    48,    29,
      30,    31,   120,   121,    22,    77,    33,    49,    36,    36,
      42,   101,    43,   114,   115,     1,    51,    52,    50,    22,
      79,    33,    89,    90,    91,    60,    53,    54,   102,    36,
       1,    51,    52,    26,   108,   109,    76,    55,     1,    51,
      52,    53,    54,   110,   129,    20,    19,   107,    56,    53,
      54,    57,    55,    78,   122,    58,   123,   103,     0,     0,
      55,     0,     0,    56,     0,     0,    57,   104,     0,     0,
       0,    56,     0,     0,    57
  };

  const short
  Parser::yycheck_[] =
  {
       0,    48,    49,    22,     4,    22,     6,     7,    22,    22,
      57,    25,    33,     3,   108,   109,    55,    56,    39,    38,
       3,    38,    22,     3,    38,    38,    16,    17,    18,    76,
       0,    31,    16,    17,    34,   129,    16,    17,    38,    19,
      39,    21,    22,    23,    43,    45,    24,    25,    48,    49,
      89,    90,    91,    41,    40,    40,    40,    57,    44,    44,
      37,    41,    42,    43,    39,    12,     3,    14,    82,    29,
      30,    31,    32,    34,    35,    75,    76,    39,   125,    16,
      17,     3,    19,    40,    21,    22,    23,    16,    17,   108,
     109,   108,   109,    94,    95,    96,    97,    19,    39,    21,
      22,    23,    98,    99,    41,    42,    43,    39,   108,   109,
     129,    38,   129,    92,    93,     3,     4,     5,    43,    41,
      43,    43,    26,    27,    28,   125,    14,    15,    43,   129,
       3,     4,     5,    43,    40,    40,    39,    25,     3,     4,
       5,    14,    15,    40,    20,     7,     6,    82,    36,    14,
      15,    39,    25,    38,   100,    43,   101,    75,    -1,    -1,
      25,    -1,    -1,    36,    -1,    -1,    39,    40,    -1,    -1,
      -1,    36,    -1,    -1,    39
  };

  const signed char
  Parser::yystos_[] =
  {
       0,     3,    16,    17,    18,    47,    49,    50,    51,    52,
      53,    54,    55,    59,    60,    53,    56,     0,    53,    56,
      51,    39,    41,    61,    61,    39,    43,    40,    19,    21,
      22,    23,    42,    43,    49,    52,    53,    61,    62,    63,
      64,    65,    68,    78,    40,    49,    57,    58,    39,    39,
      43,     4,     5,    14,    15,    25,    36,    39,    43,    48,
      53,    66,    68,    69,    70,    71,    72,    73,    74,    75,
      76,    77,    78,    79,    53,    33,    39,    42,    63,    43,
      53,    40,    44,    79,    79,    53,    70,    70,    79,    26,
      27,    28,    24,    25,    29,    30,    31,    32,    34,    35,
      37,    38,    43,    77,    40,    67,    79,    58,    40,    40,
      40,    70,    70,    70,    71,    71,    72,    72,    72,    72,
      73,    73,    74,    75,    40,    44,    64,    64,    79,    20,
      64
  };

  const signed char
  Parser::yyr1_[] =
  {
       0,    46,    47,    47,    48,    48,    48,    48,    49,    49,
      50,    50,    51,    51,    51,    52,    53,    54,    55,    55,
      56,    56,    57,    57,    58,    59,    60,    61,    61,    62,
      62,    63,    63,    64,    64,    64,    64,    64,    64,    64,
      64,    64,    65,    65,    66,    66,    66,    67,    67,    68,
      68,    69,    69,    70,    70,    70,    71,    71,    71,    71,
      72,    72,    72,    73,    73,    73,    73,    73,    74,    74,
      74,    75,    75,    76,    76,    77,    77,    78,    79
  };

  const signed char
  Parser::yyr2_[] =
  {
       0,     2,     0,     1,     1,     1,     1,     1,     1,     1,
       1,     2,     1,     1,     1,     3,     1,     2,     2,     2,
       4,     3,     1,     3,     2,     2,     3,     3,     2,     1,
       2,     1,     1,     1,     1,     2,     2,     3,     2,     5,
       7,     5,     1,     1,     1,     3,     1,     1,     3,     4,
       3,     1,     1,     2,     2,     1,     1,     3,     3,     3,
       1,     3,     3,     1,     3,     3,     3,     3,     1,     3,
       3,     1,     3,     1,     3,     1,     1,     3,     1
  };


#if YYDEBUG
  // YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
  // First, the terminals, then, starting at \a YYNTOKENS, nonterminals.
  const char*
  const Parser::yytname_[] =
  {
  "T_EOF", "error", "\"invalid token\"", "\"id\"", "\"number\"",
  "\"string\"", "T_CESC_B", "T_CESC_F", "T_CESC_T", "T_CESC_R", "T_CESC_N",
  "T_CESC_APOST", "T_CESC_QUOT", "T_CESC_SLASH", "\"true\"", "\"false\"",
  "\"boolean\"", "\"int\"", "\"void\"", "\"if\"", "\"else\"", "\"while\"",
  "\"break\"", "\"return\"", "\"+\"", "\"-\"", "\"*\"", "\"/\"", "\"%\"",
  "\"<\"", "\">\"", "\"<=\"", "\">=\"", "\"=\"", "\"==\"", "\"!=\"",
  "\"!\"", "\"&&\"", "\"||\"", "\"(\"", "\")\"", "\"{\"", "\"}\"", "\";\"",
  "\",\"", "T_ERR", "$accept", "start", "literal", "type",
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
#endif


#if YYDEBUG
  const short
  Parser::yyrline_[] =
  {
       0,   146,   146,   147,   150,   151,   152,   153,   156,   157,
     160,   161,   164,   165,   166,   169,   172,   175,   178,   179,
     182,   183,   186,   187,   190,   193,   196,   199,   200,   203,
     204,   207,   208,   211,   212,   213,   214,   215,   216,   217,
     218,   219,   222,   223,   226,   227,   228,   231,   232,   235,
     236,   239,   240,   243,   244,   245,   248,   249,   250,   251,
     254,   255,   256,   259,   260,   261,   262,   263,   266,   267,
     268,   271,   272,   275,   276,   279,   280,   283,   286
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

#line 8 "./src/parser.yy"
} // JCC
#line 1439 "parser.tab.cc"

#line 290 "./src/parser.yy"


void JCC::Parser::error(const location_type &loc, const std::string &errmsg)
{
   std::cerr << "Error: " << errmsg << " at " << loc << "\n";
}
