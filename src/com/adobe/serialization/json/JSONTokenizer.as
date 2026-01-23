package com.adobe.serialization.json
{
   public class JSONTokenizer
   {
      
      private var ch:String;
      
      private var loc:int;
      
      private var jsonString:String;
      
      private var strict:Boolean;
      
      private var controlCharsRegExp:RegExp;
      
      private var obj:Object;
      
      public function JSONTokenizer(param1:String, param2:Boolean)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            this.controlCharsRegExp = /[\x00-\x1F]/;
            if(!_loc4_)
            {
               super();
               if(!_loc4_)
               {
                  this.jsonString = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     addr005f:
                     this.strict = param2;
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        this.loc = 0;
                        if(_loc3_ || _loc3_)
                        {
                           addr0085:
                           this.nextChar();
                        }
                        §§goto(addr008a);
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr005f);
            }
            addr008a:
            return;
         }
         §§goto(addr0085);
      }
      
      private function skipComments() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc1_))
         {
            if(this.ch == "/")
            {
               if(!(_loc3_ && _loc3_))
               {
                  this.nextChar();
               }
               addr01e7:
               §§push(this.ch);
               loop0:
               while(true)
               {
                  var _loc1_:* = §§pop();
                  if(_loc2_ || _loc1_)
                  {
                     §§push("/");
                     if(!_loc3_)
                     {
                        §§push(_loc1_);
                        if(_loc2_ || Boolean(this))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(0);
                                 if(_loc3_ && _loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr0245:
                                 §§push(1);
                                 if(_loc2_ || _loc3_)
                                 {
                                 }
                              }
                              addr0264:
                              loop7:
                              switch(§§pop())
                              {
                                 case 0:
                                    loop1:
                                    while(true)
                                    {
                                       this.nextChar();
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       §§push(this.ch);
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          continue loop0;
                                       }
                                       §§push("\n");
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§push(!§§pop());
                                             if(_loc2_)
                                             {
                                                var _temp_10:* = §§pop();
                                                §§push(_temp_10);
                                                if(_temp_10)
                                                {
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      §§pop();
                                                      if(_loc3_ && _loc1_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(this.ch);
                                                      if(!_loc3_)
                                                      {
                                                         §§push("");
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr00bb:
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc3_)
                                                            {
                                                               addr00ba:
                                                               §§push(!§§pop());
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               if(_loc2_ || _loc1_)
                                                               {
                                                                  this.nextChar();
                                                                  if(_loc2_ || Boolean(this))
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  break loop7;
                                                               }
                                                               break loop0;
                                                            }
                                                            continue;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  this.parseError("Multi-line comment not closed");
                                                                  if(_loc3_)
                                                                  {
                                                                     break loop0;
                                                                  }
                                                               }
                                                            }
                                                            addr00f9:
                                                            while(true)
                                                            {
                                                               §§push(this.ch);
                                                               if(!_loc3_)
                                                               {
                                                                  §§push("*");
                                                                  if(_loc2_ || Boolean(this))
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           break loop7;
                                                                        }
                                                                        break loop0;
                                                                     }
                                                                     this.nextChar();
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        break loop1;
                                                                     }
                                                                     break loop0;
                                                                  }
                                                                  break;
                                                               }
                                                            }
                                                         }
                                                         addr0192:
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr0192);
                                                      }
                                                   }
                                                }
                                                §§goto(addr00bb);
                                             }
                                             §§goto(addr00ba);
                                          }
                                          §§goto(addr00bb);
                                       }
                                       §§goto(addr0192);
                                    }
                                    while(true)
                                    {
                                       §§push(this.ch);
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       §§goto(addr0190);
                                    }
                                    continue;
                                 case 1:
                                    this.nextChar();
                                    if(_loc3_ && Boolean(this))
                                    {
                                       break;
                                    }
                                    §§goto(addr00f9);
                                    break;
                                 default:
                                    §§push(this);
                                    §§push("Unexpected ");
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(§§pop() + this.ch);
                                       if(!_loc3_)
                                       {
                                          addr01cd:
                                          §§push(§§pop() + " encountered (expecting \'/\' or \'*\' )");
                                       }
                                       §§pop().parseError(§§pop());
                                       if(_loc2_ || _loc3_)
                                       {
                                       }
                                       break loop0;
                                    }
                                    §§goto(addr01cd);
                              }
                              continue loop2;
                           }
                           addr0241:
                           addr0240:
                           if("*" === _loc1_)
                           {
                              §§goto(addr0245);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr0264);
                           §§goto(addr0245);
                        }
                        §§goto(addr0241);
                     }
                     §§goto(addr0240);
                  }
                  §§goto(addr0245);
               }
            }
            return;
         }
         §§goto(addr01e7);
      }
      
      private function isDigit(param1:String) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_ || _loc2_)
            {
               §§push("0");
               if(_loc2_ || Boolean(this))
               {
                  §§push(§§pop() >= §§pop());
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           §§pop();
                           addr0072:
                           addr006e:
                           addr006d:
                           return param1 <= "9";
                        }
                     }
                  }
               }
               §§goto(addr0072);
            }
            §§goto(addr006e);
         }
         §§goto(addr006d);
      }
      
      private function readNumber() : JSONToken
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:JSONToken = null;
         var _loc1_:* = "";
         if(_loc5_)
         {
            §§push(this.ch);
            if(!_loc4_)
            {
               §§push("-");
               if(_loc5_ || _loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(_loc1_);
                        if(!(_loc4_ && Boolean(_loc3_)))
                        {
                           §§push("-");
                           if(_loc5_)
                           {
                              _loc1_ = §§pop() + §§pop();
                              if(_loc5_)
                              {
                                 this.nextChar();
                                 if(_loc5_)
                                 {
                                    addr0073:
                                    §§push(this.isDigit(this.ch));
                                    if(_loc5_ || _loc2_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             this.parseError("Expecting a digit");
                                             if(_loc5_ || Boolean(_loc3_))
                                             {
                                                addr00ab:
                                                §§push(this.ch);
                                                if(_loc5_)
                                                {
                                                   §§push("0");
                                                   if(!(_loc4_ && Boolean(_loc1_)))
                                                   {
                                                      addr00c6:
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§push(_loc1_);
                                                            if(_loc5_ || Boolean(this))
                                                            {
                                                               addr00df:
                                                               §§push(this.ch);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc5_)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     if(_loc5_ || Boolean(this))
                                                                     {
                                                                        this.nextChar();
                                                                        if(!(_loc4_ && Boolean(_loc3_)))
                                                                        {
                                                                           §§push(this.isDigit(this.ch));
                                                                           if(_loc5_ || Boolean(_loc1_))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc4_ && Boolean(this)))
                                                                                 {
                                                                                    addr013c:
                                                                                    this.parseError("A digit cannot immediately follow 0");
                                                                                    if(_loc4_ && Boolean(this))
                                                                                    {
                                                                                       addr023a:
                                                                                       this.nextChar();
                                                                                       if(_loc4_)
                                                                                       {
                                                                                       }
                                                                                       loop8:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.isHexDigit(this.ch));
                                                                                          if(!(_loc5_ || Boolean(this)))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(_loc5_ || Boolean(_loc3_))
                                                                                             {
                                                                                                addr0330:
                                                                                                §§push(this.ch);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(".");
                                                                                                   if(_loc5_ || Boolean(_loc3_))
                                                                                                   {
                                                                                                      if(§§pop() == §§pop())
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§push(_loc1_);
                                                                                                            if(!(_loc4_ && Boolean(this)))
                                                                                                            {
                                                                                                               addr0364:
                                                                                                               §§push(".");
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc5_ || Boolean(_loc1_))
                                                                                                                  {
                                                                                                                     _loc1_ = §§pop();
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        addr0391:
                                                                                                                        this.nextChar();
                                                                                                                        if(_loc5_ || Boolean(this))
                                                                                                                        {
                                                                                                                           §§push(this.isDigit(this.ch));
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    this.parseError("Expecting a digit");
                                                                                                                                    if(_loc5_ || Boolean(_loc3_))
                                                                                                                                    {
                                                                                                                                       loop6:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.isDigit(this.ch));
                                                                                                                                          if(_loc4_ && Boolean(_loc1_))
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                                             {
                                                                                                                                                addr0455:
                                                                                                                                                §§push(this.ch);
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§push("e");
                                                                                                                                                   if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      addr0554:
                                                                                                                                                      §§pop();
                                                                                                                                                      if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                                                                      {
                                                                                                                                                         addr0563:
                                                                                                                                                         §§push(this.ch);
                                                                                                                                                         if(_loc5_ || Boolean(_loc3_))
                                                                                                                                                         {
                                                                                                                                                            addr0575:
                                                                                                                                                            addr0578:
                                                                                                                                                            §§push(§§pop() == "-");
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               addr057f:
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     addr0589:
                                                                                                                                                                     §§push(_loc1_);
                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        addr0590:
                                                                                                                                                                        §§push(this.ch);
                                                                                                                                                                        if(!(_loc4_ && Boolean(this)))
                                                                                                                                                                        {
                                                                                                                                                                           addr05a2:
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(_loc5_ || Boolean(_loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              addr05b2:
                                                                                                                                                                              _loc1_ = §§pop();
                                                                                                                                                                              if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                                                                              {
                                                                                                                                                                                 addr05c1:
                                                                                                                                                                                 this.nextChar();
                                                                                                                                                                                 if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr05d4:
                                                                                                                                                                                    §§push(this.isDigit(this.ch));
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop8;
                                                                                                                                                                                    }
                                                                                                                                                                                    loop1:
                                                                                                                                                                                    while(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc1_);
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.ch);
                                                                                                                                                                                             addr061c:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             break loop1;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr0618:
                                                                                                                                                                                       }
                                                                                                                                                                                       loop4:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc1_ = §§pop();
                                                                                                                                                                                          if(_loc5_ || Boolean(_loc1_))
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.nextChar();
                                                                                                                                                                                                if(_loc4_ && Boolean(this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop4;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop4;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr062d:
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr064d:
                                                                                                                                                                                    var _loc2_:Number = Number(_loc1_);
                                                                                                                                                                                    if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(isFinite(_loc2_));
                                                                                                                                                                                       if(_loc5_ || Boolean(_loc1_))
                                                                                                                                                                                       {
                                                                                                                                                                                          var _temp_59:* = §§pop();
                                                                                                                                                                                          §§push(_temp_59);
                                                                                                                                                                                          if(_temp_59)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                if(!(_loc4_ && Boolean(this)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr06a5:
                                                                                                                                                                                                   if(!isNaN(_loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc5_ || Boolean(_loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr06b7:
                                                                                                                                                                                                         _loc3_ = new JSONToken();
                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc3_.type = JSONTokenType.NUMBER;
                                                                                                                                                                                                            if(!_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc3_.value = _loc2_;
                                                                                                                                                                                                               if(_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr06ef:
                                                                                                                                                                                                                  §§push(this);
                                                                                                                                                                                                                  §§push("Number ");
                                                                                                                                                                                                                  if(_loc5_ || Boolean(this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + _loc2_);
                                                                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr070a:
                                                                                                                                                                                                                        §§push(§§pop() + " is not valid!");
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().parseError(§§pop());
                                                                                                                                                                                                                     §§goto(addr0713);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr070a);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            return _loc3_;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr06ef);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0713);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr06ef);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr0713:
                                                                                                                                                                                                return null;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr06a5);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr06b7);
                                                                                                                                                                                    addr0649:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr0649);
                                                                                                                                                                              }
                                                                                                                                                                              addr0640:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0618);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr061c);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr061e);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr05d4);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0649);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0590);
                                                                                                                                                      }
                                                                                                                                                      addr05f5:
                                                                                                                                                      this.parseError("Scientific notation number needs exponent value");
                                                                                                                                                      if(!(_loc4_ && Boolean(this)))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr0640);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr062d);
                                                                                                                                                   }
                                                                                                                                                   addr0532:
                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                   if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                                                   {
                                                                                                                                                      var _temp_66:* = §§pop();
                                                                                                                                                      addr0542:
                                                                                                                                                      §§push(_temp_66);
                                                                                                                                                      if(!_temp_66)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc5_ || Boolean(_loc1_)))
                                                                                                                                                         {
                                                                                                                                                            break loop8;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0554);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr057f);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0575);
                                                                                                                                             }
                                                                                                                                             addr04a7:
                                                                                                                                             §§push(this.ch);
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§push("E");
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   addr04bb:
                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                   if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                                                   {
                                                                                                                                                      addr04ca:
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_ || Boolean(this))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc1_);
                                                                                                                                                            if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                                                            {
                                                                                                                                                               addr04eb:
                                                                                                                                                               §§push("e");
                                                                                                                                                               if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                                                                               {
                                                                                                                                                                  addr04fd:
                                                                                                                                                                  _loc1_ = §§pop() + §§pop();
                                                                                                                                                                  addr04fc:
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     addr0504:
                                                                                                                                                                     this.nextChar();
                                                                                                                                                                     if(_loc5_ || Boolean(_loc1_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.ch);
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push("+");
                                                                                                                                                                           if(_loc5_ || Boolean(_loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr0532);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0578);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0590);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0640);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0578);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0590);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr062d);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr064d);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr057f);
                                                                                                                                                }
                                                                                                                                                §§goto(addr04fc);
                                                                                                                                             }
                                                                                                                                             §§goto(addr04eb);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(_loc1_);
                                                                                                                                             if(_loc5_ || Boolean(_loc2_))
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.ch);
                                                                                                                                                   if(!(_loc5_ || Boolean(_loc3_)))
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!(_loc5_ || Boolean(_loc1_)))
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc1_ = §§pop();
                                                                                                                                                         if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                                                         {
                                                                                                                                                            this.nextChar();
                                                                                                                                                            if(_loc5_ || Boolean(this))
                                                                                                                                                            {
                                                                                                                                                               continue loop6;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr04a7);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr064d);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr05a2);
                                                                                                                                                addr03e8:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr05b2);
                                                                                                                                       }
                                                                                                                                       addr0477:
                                                                                                                                       var _temp_79:* = §§pop();
                                                                                                                                       §§push(_temp_79);
                                                                                                                                       §§push(_temp_79);
                                                                                                                                       if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr04a7);
                                                                                                                                                }
                                                                                                                                                §§goto(addr062d);
                                                                                                                                             }
                                                                                                                                             §§goto(addr057f);
                                                                                                                                          }
                                                                                                                                          §§goto(addr04ca);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0542);
                                                                                                                                       addr042c:
                                                                                                                                    }
                                                                                                                                    §§goto(addr0504);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0455);
                                                                                                                              }
                                                                                                                              §§goto(addr042c);
                                                                                                                           }
                                                                                                                           §§goto(addr0477);
                                                                                                                        }
                                                                                                                        §§goto(addr064d);
                                                                                                                     }
                                                                                                                     §§goto(addr0589);
                                                                                                                  }
                                                                                                                  §§goto(addr04fd);
                                                                                                               }
                                                                                                               §§goto(addr04bb);
                                                                                                            }
                                                                                                            §§goto(addr040a);
                                                                                                         }
                                                                                                         §§goto(addr04a7);
                                                                                                      }
                                                                                                      §§goto(addr0455);
                                                                                                   }
                                                                                                   §§goto(addr0532);
                                                                                                }
                                                                                                §§goto(addr05b2);
                                                                                             }
                                                                                             §§goto(addr062d);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(_loc1_);
                                                                                             if(!(_loc4_ && Boolean(_loc2_)))
                                                                                             {
                                                                                                §§push(this.ch);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc5_ || Boolean(_loc1_))
                                                                                                   {
                                                                                                      _loc1_ = §§pop();
                                                                                                      if(_loc5_ || Boolean(this))
                                                                                                      {
                                                                                                         this.nextChar();
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr0563);
                                                                                                      }
                                                                                                      §§goto(addr05f5);
                                                                                                   }
                                                                                                   §§goto(addr0590);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr03fa);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr0364);
                                                                                             }
                                                                                             §§goto(addr04bb);
                                                                                          }
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          if(!(_loc4_ && Boolean(_loc3_)))
                                                                                          {
                                                                                             §§goto(addr05f5);
                                                                                          }
                                                                                          §§goto(addr064d);
                                                                                       }
                                                                                       §§goto(addr0640);
                                                                                       addr029a:
                                                                                    }
                                                                                    §§goto(addr0330);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0213:
                                                                                    addr021c:
                                                                                    if(this.isHexDigit(this.ch))
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr0233:
                                                                                          addr0226:
                                                                                          §§push(_loc1_);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             addr022d:
                                                                                             addr0231:
                                                                                             §§push(§§pop() + this.ch);
                                                                                          }
                                                                                          _loc1_ = §§pop();
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§goto(addr023a);
                                                                                          }
                                                                                          §§goto(addr029a);
                                                                                       }
                                                                                       §§goto(addr023a);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       this.parseError("Number in hex format require at least one hex digit after \"0x\"");
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr029a);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(this.strict);
                                                                                 if(_loc5_ || Boolean(_loc2_))
                                                                                 {
                                                                                    addr0169:
                                                                                    §§push(!§§pop());
                                                                                    if(_loc5_ || Boolean(_loc3_))
                                                                                    {
                                                                                       addr0178:
                                                                                       var _temp_89:* = §§pop();
                                                                                       §§push(_temp_89);
                                                                                       if(_temp_89)
                                                                                       {
                                                                                          if(_loc5_ || Boolean(this))
                                                                                          {
                                                                                             §§pop();
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(this.ch);
                                                                                                if(!(_loc4_ && Boolean(this)))
                                                                                                {
                                                                                                   addr01a4:
                                                                                                   addr01a7:
                                                                                                   §§push(§§pop() == "x");
                                                                                                   if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                   {
                                                                                                      addr01b6:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc5_ || Boolean(_loc2_))
                                                                                                         {
                                                                                                            §§push(_loc1_);
                                                                                                            if(!(_loc4_ && Boolean(this)))
                                                                                                            {
                                                                                                               addr01d7:
                                                                                                               §§push(this.ch);
                                                                                                               if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                               {
                                                                                                                  addr01e9:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc5_ || Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     _loc1_ = §§pop();
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        this.nextChar();
                                                                                                                        if(!(_loc4_ && Boolean(this)))
                                                                                                                        {
                                                                                                                           §§goto(addr0213);
                                                                                                                        }
                                                                                                                        §§goto(addr029a);
                                                                                                                     }
                                                                                                                     §§goto(addr023a);
                                                                                                                  }
                                                                                                                  §§goto(addr022d);
                                                                                                               }
                                                                                                               §§goto(addr0231);
                                                                                                            }
                                                                                                            §§goto(addr0233);
                                                                                                         }
                                                                                                         §§goto(addr0213);
                                                                                                      }
                                                                                                      §§goto(addr0330);
                                                                                                   }
                                                                                                   §§goto(addr021c);
                                                                                                }
                                                                                                §§goto(addr022d);
                                                                                             }
                                                                                             §§goto(addr023a);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr01b6);
                                                                                 }
                                                                                 §§goto(addr0178);
                                                                              }
                                                                           }
                                                                           §§goto(addr01b6);
                                                                        }
                                                                        §§goto(addr029a);
                                                                     }
                                                                     §§goto(addr023a);
                                                                  }
                                                                  §§goto(addr01a4);
                                                               }
                                                               §§goto(addr01e9);
                                                            }
                                                            §§goto(addr01d7);
                                                         }
                                                         §§goto(addr013c);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.isDigit(this.ch));
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr0330);
                                                               }
                                                               §§goto(addr05c1);
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc1_);
                                                               if(!(_loc4_ && Boolean(_loc3_)))
                                                               {
                                                                  §§push(this.ch);
                                                                  if(!(_loc4_ && Boolean(_loc1_)))
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc5_ || Boolean(_loc3_))
                                                                     {
                                                                        _loc1_ = §§pop();
                                                                        if(!(_loc4_ && Boolean(this)))
                                                                        {
                                                                           this.nextChar();
                                                                           if(_loc5_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr0391);
                                                                        }
                                                                        §§goto(addr0563);
                                                                     }
                                                                     §§goto(addr03e8);
                                                                  }
                                                                  §§goto(addr05a2);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr04ca);
                                                      }
                                                   }
                                                   §§goto(addr01a7);
                                                }
                                                §§goto(addr01a4);
                                             }
                                             §§goto(addr0330);
                                          }
                                          §§goto(addr0226);
                                       }
                                       §§goto(addr00ab);
                                    }
                                    §§goto(addr0169);
                                 }
                                 §§goto(addr0330);
                              }
                              §§goto(addr00ab);
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr0233);
                     }
                     §§goto(addr023a);
                  }
                  §§goto(addr0073);
               }
               §§goto(addr00c6);
            }
            §§goto(addr00df);
         }
         §§goto(addr013c);
      }
      
      public function unescapeString(param1:String) : String
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         if(_loc13_)
         {
            §§push(this.strict);
            if(!(_loc12_ && Boolean(_loc2_)))
            {
               §§push(§§pop());
               if(_loc13_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(_loc13_ || Boolean(_loc3_))
                     {
                        §§pop();
                        if(!_loc12_)
                        {
                           addr006f:
                           if(Boolean(this.controlCharsRegExp.test(param1)))
                           {
                              if(_loc13_ || Boolean(_loc3_))
                              {
                                 addr0081:
                                 this.parseError("String contains unescaped control character (0x00-0x1F)");
                              }
                           }
                           var _loc2_:* = "";
                           var _loc3_:* = 0;
                           var _loc4_:* = 0;
                           var _loc5_:int = param1.length;
                           loop0:
                           while(true)
                           {
                              §§push(param1);
                              if(!_loc13_)
                              {
                                 break;
                              }
                              §§push(int(§§pop().indexOf("\\",_loc4_)));
                              if(!(_loc12_ && Boolean(param1)))
                              {
                                 _loc3_ = §§pop();
                                 if(_loc13_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc13_)
                                    {
                                       §§push(0);
                                       if(_loc13_ || Boolean(this))
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(!_loc12_)
                                             {
                                                §§push(_loc2_);
                                                if(!(_loc12_ && Boolean(_loc2_)))
                                                {
                                                   §§push(param1);
                                                   if(!_loc12_)
                                                   {
                                                      §§push(_loc4_);
                                                      if(_loc13_ || Boolean(_loc2_))
                                                      {
                                                         §§push(§§pop() + §§pop().substr(§§pop(),_loc3_ - _loc4_));
                                                         if(_loc13_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(_loc13_)
                                                            {
                                                               addr0123:
                                                               §§push(_loc3_);
                                                               if(_loc13_)
                                                               {
                                                                  addr012a:
                                                                  §§push(2);
                                                                  if(!(_loc12_ && Boolean(_loc3_)))
                                                                  {
                                                                     addr013a:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc13_ || Boolean(_loc2_))
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc13_ || Boolean(this))
                                                                        {
                                                                           addr0158:
                                                                           _loc4_ = §§pop();
                                                                           if(_loc13_)
                                                                           {
                                                                              addr0164:
                                                                              _loc6_ = _loc3_ + 1;
                                                                              _loc7_ = param1.charAt(_loc6_);
                                                                              addr0161:
                                                                              addr0163:
                                                                              addr0160:
                                                                              if(_loc13_)
                                                                              {
                                                                                 var _loc11_:* = _loc7_;
                                                                                 if(_loc13_ || Boolean(_loc2_))
                                                                                 {
                                                                                    §§push("\"");
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       if(§§pop() === _loc11_)
                                                                                       {
                                                                                          if(!(_loc12_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(_loc12_ && Boolean(this))
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr05bc:
                                                                                             §§push(7);
                                                                                             if(_loc12_)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push("\\");
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             if(§§pop() === _loc11_)
                                                                                             {
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   §§push(1);
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr04cf:
                                                                                                   §§push(2);
                                                                                                   if(_loc13_ || Boolean(param1))
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push("n");
                                                                                                if(!(_loc12_ && Boolean(_loc3_)))
                                                                                                {
                                                                                                   if(§§pop() === _loc11_)
                                                                                                   {
                                                                                                      if(!(_loc12_ && Boolean(_loc3_)))
                                                                                                      {
                                                                                                         §§goto(addr04cf);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr0539:
                                                                                                         §§push(4);
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push("r");
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         if(§§pop() === _loc11_)
                                                                                                         {
                                                                                                            if(_loc13_ || Boolean(_loc3_))
                                                                                                            {
                                                                                                               §§push(3);
                                                                                                               if(_loc12_ && Boolean(_loc2_))
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr0562:
                                                                                                               §§push(5);
                                                                                                               if(_loc12_ && Boolean(_loc3_))
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push("t");
                                                                                                            if(!(_loc12_ && Boolean(_loc2_)))
                                                                                                            {
                                                                                                               addr0525:
                                                                                                               if(§§pop() === _loc11_)
                                                                                                               {
                                                                                                                  if(_loc13_ || Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     §§goto(addr0539);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr0562);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push("u");
                                                                                                                  if(!_loc12_)
                                                                                                                  {
                                                                                                                     if(§§pop() === _loc11_)
                                                                                                                     {
                                                                                                                        if(_loc13_ || Boolean(_loc3_))
                                                                                                                        {
                                                                                                                           §§goto(addr0562);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr0593:
                                                                                                                           §§push(6);
                                                                                                                           if(_loc12_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push("f");
                                                                                                                        if(!(_loc12_ && Boolean(param1)))
                                                                                                                        {
                                                                                                                           addr0587:
                                                                                                                           if(§§pop() === _loc11_)
                                                                                                                           {
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 §§goto(addr0593);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr05d1:
                                                                                                                                 §§push(8);
                                                                                                                                 if(_loc13_ || Boolean(_loc3_))
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr0600:
                                                                                                                              if(!_loc12_)
                                                                                                                              {
                                                                                                                                 loop2:
                                                                                                                                 switch(§§pop())
                                                                                                                                 {
                                                                                                                                    case 0:
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          §§push("\"");
                                                                                                                                          if(_loc13_ || Boolean(_loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc12_)
                                                                                                                                             {
                                                                                                                                                _loc2_ = §§pop();
                                                                                                                                                if(_loc12_)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr023d:
                                                                                                                                                _loc2_ = §§pop();
                                                                                                                                                if(_loc12_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr021e:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc13_)
                                                                                                                                             {
                                                                                                                                                addr0225:
                                                                                                                                                _loc2_ = §§pop();
                                                                                                                                                if(!_loc13_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr024b:
                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                                if(!(_loc12_ && Boolean(_loc3_)))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                   if(!_loc12_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() + 4 > _loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            addr0273:
                                                                                                                                                            this.parseError("Unexpected end of input.  Expecting 4 hex digits after \\u.");
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                   }
                                                                                                                                                   _loc9_ = §§pop();
                                                                                                                                                   if(_loc13_ || Boolean(param1))
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_ < _loc4_ + 4)
                                                                                                                                                         {
                                                                                                                                                            §§push(param1);
                                                                                                                                                            if(_loc12_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            _loc10_ = §§pop().charAt(_loc9_);
                                                                                                                                                            if(_loc13_)
                                                                                                                                                            {
                                                                                                                                                               if(!this.isHexDigit(_loc10_))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc12_ && Boolean(this)))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this);
                                                                                                                                                                     §§push("Excepted a hex digit, but found: ");
                                                                                                                                                                     if(!(_loc12_ && Boolean(_loc3_)))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + _loc10_);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().parseError(§§pop());
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            _loc8_ += _loc10_;
                                                                                                                                                            _loc9_++;
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         if(_loc13_ || Boolean(this))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                            if(!_loc12_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + String.fromCharCode(parseInt(_loc8_,16)));
                                                                                                                                                               if(_loc12_ && Boolean(param1))
                                                                                                                                                               {
                                                                                                                                                                  addr03bc:
                                                                                                                                                                  §§push("/");
                                                                                                                                                                  if(!(_loc12_ && Boolean(_loc2_)))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(!(_loc12_ && Boolean(_loc2_)))
                                                                                                                                                                     {
                                                                                                                                                                        addr03dc:
                                                                                                                                                                        _loc2_ = §§pop();
                                                                                                                                                                        if(_loc12_ && Boolean(param1))
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        addr0650:
                                                                                                                                                                        addr0652:
                                                                                                                                                                        if(_loc4_ >= _loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           break loop2;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop0;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr043f:
                                                                                                                                                                     addr043c:
                                                                                                                                                                     §§push(§§pop() + (§§pop() + _loc7_));
                                                                                                                                                                  }
                                                                                                                                                                  addr0440:
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               addr0339:
                                                                                                                                                               _loc2_ = §§pop();
                                                                                                                                                               if(!(_loc12_ && Boolean(param1)))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                  if(!(_loc12_ && Boolean(param1)))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(int(§§pop() + 4));
                                                                                                                                                                  }
                                                                                                                                                                  _loc4_ = §§pop();
                                                                                                                                                                  if(_loc13_ || Boolean(this))
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0650);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0339);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr0441:
                                                                                                                                                      _loc2_ = §§pop();
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0650);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0273);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr0650);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr0214:
                                                                                                                                          §§push("\r");
                                                                                                                                          if(_loc13_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr021e);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr0236:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc13_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr023d);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr024b);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr024b);
                                                                                                                                       }
                                                                                                                                    case 1:
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       if(_loc13_ || Boolean(_loc3_))
                                                                                                                                       {
                                                                                                                                          §§push("\\");
                                                                                                                                          if(!_loc12_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc13_ || Boolean(this))
                                                                                                                                             {
                                                                                                                                                _loc2_ = §§pop();
                                                                                                                                                if(_loc13_)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr0225);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0650);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr021e);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr0214);
                                                                                                                                       }
                                                                                                                                       §§goto(addr021e);
                                                                                                                                    case 2:
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       if(!(_loc12_ && Boolean(param1)))
                                                                                                                                       {
                                                                                                                                          §§push("\n");
                                                                                                                                          if(_loc13_ || Boolean(_loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc12_)
                                                                                                                                             {
                                                                                                                                                _loc2_ = §§pop();
                                                                                                                                                if(_loc13_)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr024b);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0650);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr021e);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr0214);
                                                                                                                                       }
                                                                                                                                       §§goto(addr021e);
                                                                                                                                    case 3:
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr0214);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr0232:
                                                                                                                                          §§push("\t");
                                                                                                                                       }
                                                                                                                                       §§goto(addr0236);
                                                                                                                                    case 4:
                                                                                                                                       §§goto(addr0232);
                                                                                                                                       §§push(_loc2_);
                                                                                                                                    case 5:
                                                                                                                                       §§goto(addr024b);
                                                                                                                                       §§push("");
                                                                                                                                    case 6:
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       if(_loc13_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          §§push("\f");
                                                                                                                                          if(_loc13_ || Boolean(this))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc12_)
                                                                                                                                             {
                                                                                                                                                _loc2_ = §§pop();
                                                                                                                                                if(_loc12_ && Boolean(_loc3_))
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr03dc);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr0409:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc13_ || Boolean(_loc3_))
                                                                                                                                             {
                                                                                                                                                _loc2_ = §§pop();
                                                                                                                                                if(_loc13_ || Boolean(this))
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr0440);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr0650);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0441);
                                                                                                                                    case 7:
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       if(!(_loc12_ && Boolean(param1)))
                                                                                                                                       {
                                                                                                                                          §§goto(addr03bc);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr03f7:
                                                                                                                                          §§push("\b");
                                                                                                                                          if(!(_loc12_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             §§goto(addr0409);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr043f);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr043f);
                                                                                                                                    case 8:
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       if(!_loc12_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr03f7);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr0433:
                                                                                                                                          §§push("\\");
                                                                                                                                          if(!_loc12_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr043c);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr043f);
                                                                                                                                    default:
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr0433);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0441);
                                                                                                                                 }
                                                                                                                                 addr0659:
                                                                                                                                 return _loc2_;
                                                                                                                                 addr0658:
                                                                                                                              }
                                                                                                                              §§goto(addr0652);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push("/");
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 addr05a8:
                                                                                                                                 if(§§pop() === _loc11_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc12_ && Boolean(_loc2_)))
                                                                                                                                    {
                                                                                                                                       §§goto(addr05bc);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr05d1);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr05cb:
                                                                                                                                    if("b" === _loc11_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr05d1);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(9);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0600);
                                                                                                                                 }
                                                                                                                                 §§goto(addr05d1);
                                                                                                                              }
                                                                                                                              §§goto(addr05cb);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr05cb);
                                                                                                                     }
                                                                                                                     §§goto(addr0600);
                                                                                                                  }
                                                                                                                  §§goto(addr0587);
                                                                                                               }
                                                                                                               §§goto(addr0600);
                                                                                                            }
                                                                                                            §§goto(addr05cb);
                                                                                                         }
                                                                                                         §§goto(addr0600);
                                                                                                      }
                                                                                                      §§goto(addr05a8);
                                                                                                   }
                                                                                                   §§goto(addr0600);
                                                                                                }
                                                                                                §§goto(addr05a8);
                                                                                             }
                                                                                             §§goto(addr0600);
                                                                                          }
                                                                                          §§goto(addr0525);
                                                                                       }
                                                                                       §§goto(addr0600);
                                                                                    }
                                                                                    §§goto(addr0587);
                                                                                 }
                                                                                 §§goto(addr0562);
                                                                              }
                                                                              §§goto(addr0650);
                                                                           }
                                                                           §§goto(addr0658);
                                                                        }
                                                                        §§goto(addr0161);
                                                                     }
                                                                     §§goto(addr0164);
                                                                  }
                                                                  §§goto(addr0163);
                                                               }
                                                               §§goto(addr0158);
                                                            }
                                                            §§goto(addr0658);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr063f:
                                                         §§push(§§pop() + §§pop().substr(§§pop()));
                                                         if(!_loc12_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      §§goto(addr0659);
                                                   }
                                                   else
                                                   {
                                                      addr063d:
                                                      §§push(_loc4_);
                                                   }
                                                   §§goto(addr063f);
                                                }
                                                §§goto(addr0659);
                                             }
                                             §§goto(addr0123);
                                          }
                                          else
                                          {
                                             §§push(_loc2_);
                                             if(_loc12_)
                                             {
                                                break;
                                             }
                                             §§push(param1);
                                          }
                                          §§goto(addr063d);
                                       }
                                       §§goto(addr013a);
                                    }
                                    §§goto(addr012a);
                                 }
                                 §§goto(addr0160);
                              }
                              §§goto(addr0158);
                           }
                           _loc2_ = §§pop();
                           §§goto(addr0658);
                        }
                        §§goto(addr0081);
                     }
                  }
               }
            }
            §§goto(addr006f);
         }
         §§goto(addr0081);
      }
      
      private function skipWhite() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(this.isWhiteSpace(this.ch))
         {
            this.nextChar();
            if(_loc1_)
            {
               break;
            }
         }
      }
      
      private function isWhiteSpace(param1:String) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(" ");
               if(!_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_ || _loc3_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(_loc2_ || _loc2_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              §§pop();
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(param1);
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§push("\t");
                                    if(!_loc3_)
                                    {
                                       addr007f:
                                       §§push(§§pop() == §§pop());
                                       if(_loc2_)
                                       {
                                          addr0085:
                                          var _temp_8:* = §§pop();
                                          §§push(_temp_8);
                                          §§push(_temp_8);
                                          if(_loc2_ || Boolean(param1))
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc2_)
                                                {
                                                   §§pop();
                                                   if(!_loc3_)
                                                   {
                                                      §§push(param1);
                                                      if(!_loc3_)
                                                      {
                                                         addr00a8:
                                                         §§push("\n");
                                                         if(!(_loc3_ && Boolean(param1)))
                                                         {
                                                            §§goto(addr00c3);
                                                         }
                                                         §§goto(addr00f8);
                                                      }
                                                      §§goto(addr015b);
                                                   }
                                                   §§goto(addr00ee);
                                                }
                                                §§goto(addr0198);
                                             }
                                             §§goto(addr00d1);
                                          }
                                          §§goto(addr013b);
                                       }
                                       §§goto(addr012c);
                                    }
                                    addr00c3:
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr00d1:
                                       var _temp_12:* = §§pop();
                                       §§push(_temp_12);
                                       §§push(_temp_12);
                                       if(!_loc3_)
                                       {
                                          addr00d7:
                                          if(!§§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                §§pop();
                                                if(!(_loc3_ && Boolean(param1)))
                                                {
                                                   §§goto(addr00ee);
                                                }
                                                §§goto(addr010f);
                                             }
                                             §§goto(addr017f);
                                          }
                                          §§goto(addr0106);
                                       }
                                       §§goto(addr013b);
                                    }
                                    §§goto(addr0115);
                                 }
                                 §§goto(addr00a8);
                              }
                              addr00ee:
                              §§push(param1);
                              if(!_loc3_)
                              {
                                 addr00f8:
                                 addr00f4:
                                 §§push(§§pop() == "\r");
                                 if(_loc2_ || Boolean(param1))
                                 {
                                    addr0106:
                                    if(§§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          addr010f:
                                          §§push(true);
                                          if(_loc2_)
                                          {
                                             §§goto(addr0115);
                                          }
                                          else
                                          {
                                             §§goto(addr012c);
                                          }
                                       }
                                       addr015a:
                                       §§goto(addr015b);
                                    }
                                    else
                                    {
                                       addr0123:
                                       §§push(this.strict);
                                       if(_loc2_)
                                       {
                                          §§goto(addr012c);
                                       }
                                    }
                                    §§goto(addr013a);
                                 }
                                 addr012c:
                                 §§push(!§§pop());
                                 if(_loc2_ || Boolean(param1))
                                 {
                                    addr013a:
                                    var _temp_16:* = §§pop();
                                    addr013b:
                                    §§push(_temp_16);
                                    if(_temp_16)
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          §§pop();
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§goto(addr015a);
                                          }
                                          §§goto(addr0190);
                                       }
                                    }
                                    §§goto(addr017f);
                                 }
                                 §§goto(addr0198);
                              }
                              addr015b:
                              §§push(param1.charCodeAt(0) == 160);
                              if(_loc2_ || _loc3_)
                              {
                                 addr017f:
                                 if(§§pop())
                                 {
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr0190:
                                       §§push(true);
                                       if(_loc2_)
                                       {
                                          §§goto(addr0196);
                                       }
                                    }
                                    else
                                    {
                                       addr0197:
                                       §§push(false);
                                    }
                                    addr0198:
                                    return §§pop();
                                 }
                                 §§goto(addr0197);
                              }
                              addr0196:
                              return §§pop();
                           }
                           §§goto(addr0106);
                        }
                        §§goto(addr0085);
                     }
                     §§goto(addr00d7);
                  }
                  addr0115:
                  return §§pop();
               }
               §§goto(addr007f);
            }
            §§goto(addr00f4);
         }
         §§goto(addr0123);
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.loc,this.jsonString);
      }
      
      private function readString() : JSONToken
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         §§push(this.loc);
         if(!(_loc6_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(int(this.jsonString.indexOf("\"",_loc1_)));
            if(!(_loc6_ && Boolean(this)))
            {
               _loc1_ = §§pop();
               if(_loc6_ && _loc3_)
               {
                  continue;
               }
               §§push(_loc1_);
               if(_loc5_ || _loc3_)
               {
                  addr006d:
                  if(§§pop() < 0)
                  {
                     this.parseError("Unterminated string literal");
                     continue;
                  }
                  if(!_loc5_)
                  {
                     continue;
                  }
                  §§push(0);
               }
               _loc3_ = §§pop();
               _loc4_ = _loc1_ - 1;
               if(!(_loc6_ && _loc2_))
               {
                  while(true)
                  {
                     if(this.jsonString.charAt(_loc4_) == "\\")
                     {
                        §§push(_loc3_ + 1);
                        if(!_loc5_)
                        {
                           break;
                        }
                        _loc3_ = §§pop();
                        _loc4_--;
                        continue;
                     }
                     if(!(_loc5_ || Boolean(this)))
                     {
                        continue loop0;
                     }
                  }
                  addr00d6:
                  if(§§pop() == 0)
                  {
                     if(!_loc6_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     _loc1_++;
                  }
                  continue;
               }
               §§goto(addr00d6);
               §§push(_loc3_ % 2);
            }
            §§goto(addr006d);
         }
         var _loc2_:JSONToken = new JSONToken();
         if(_loc5_ || _loc1_)
         {
            _loc2_.type = JSONTokenType.STRING;
            if(!(_loc6_ && Boolean(this)))
            {
               _loc2_.value = this.unescapeString(this.jsonString.substr(this.loc,_loc1_ - this.loc));
               §§goto(addr0129);
            }
            §§goto(addr0176);
         }
         addr0129:
         if(!(_loc6_ && _loc3_))
         {
            this.loc = _loc1_ + 1;
            if(!(_loc6_ && Boolean(this)))
            {
               addr0176:
               this.nextChar();
            }
         }
         return _loc2_;
      }
      
      private function nextChar() : String
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(this);
         §§push(this.jsonString);
         var _loc1_:*;
         §§push((_loc1_ = this).loc);
         if(!_loc3_)
         {
            var _temp_3:* = §§pop();
            §§push(_temp_3);
            §§push(_temp_3);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(_loc4_ || _loc2_)
            {
               _loc1_.loc = _loc2_;
            }
         }
         return §§pop().ch = §§pop().charAt(§§pop());
      }
      
      private function skipIgnored() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = 0;
         do
         {
            §§push(this.loc);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop());
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_ = §§pop();
                  if(_loc2_)
                  {
                     this.skipWhite();
                     if(!(_loc3_ && _loc3_))
                     {
                        this.skipComments();
                        if(!_loc2_)
                        {
                           break;
                        }
                     }
                  }
                  §§push(_loc1_);
               }
            }
         }
         while(§§pop() != this.loc);
         
      }
      
      private function isHexDigit(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            §§push(this.isDigit(param1));
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§pop());
               if(!_loc2_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(_loc3_)
                        {
                           §§pop();
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(param1);
                              if(_loc3_)
                              {
                                 §§push("A");
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() >= §§pop());
                                    if(_loc3_)
                                    {
                                       addr006c:
                                       var _temp_6:* = §§pop();
                                       §§push(_temp_6);
                                       §§push(_temp_6);
                                       if(_loc3_ || Boolean(param1))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc3_)
                                             {
                                                addr0090:
                                                §§pop();
                                                if(_loc3_)
                                                {
                                                   addr0096:
                                                   §§push(param1);
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      §§push("F");
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop() <= §§pop());
                                                         if(!(_loc2_ && Boolean(this)))
                                                         {
                                                            addr00bb:
                                                            var _temp_10:* = §§pop();
                                                            §§push(_temp_10);
                                                            §§push(_temp_10);
                                                            if(!(_loc2_ && _loc3_))
                                                            {
                                                               §§goto(addr00c9);
                                                            }
                                                            §§goto(addr0112);
                                                         }
                                                         §§goto(addr00da);
                                                      }
                                                      §§goto(addr0128);
                                                   }
                                                   §§goto(addr0125);
                                                }
                                                §§goto(addr00e8);
                                             }
                                             §§goto(addr00da);
                                          }
                                          §§goto(addr00bb);
                                       }
                                       §§goto(addr0112);
                                    }
                                    §§goto(addr0090);
                                 }
                                 §§goto(addr0128);
                              }
                              §§goto(addr0125);
                           }
                           §§goto(addr0096);
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr00bb);
                  }
                  addr00c9:
                  if(!§§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr00da:
                        §§pop();
                        if(_loc3_ || Boolean(this))
                        {
                           addr00e8:
                           §§push(param1);
                           if(_loc3_ || Boolean(this))
                           {
                              §§push("a");
                              if(_loc3_)
                              {
                                 §§goto(addr0129);
                              }
                              §§goto(addr0128);
                           }
                           §§goto(addr0125);
                        }
                        §§goto(addr0124);
                     }
                  }
                  addr0129:
                  §§push(§§pop() >= §§pop());
                  if(!_loc2_)
                  {
                     var _temp_15:* = §§pop();
                     addr0112:
                     §§push(_temp_15);
                     if(_temp_15)
                     {
                        if(!(_loc2_ && Boolean(param1)))
                        {
                           addr0123:
                           §§pop();
                           addr0128:
                           addr0125:
                           addr0124:
                           return param1 <= "f";
                        }
                     }
                  }
               }
               §§goto(addr0123);
            }
            §§goto(addr006c);
         }
         §§goto(addr0124);
      }
      
      public function getNextToken() : JSONToken
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:JSONToken = new JSONToken();
         if(_loc8_)
         {
            this.skipIgnored();
         }
         §§push(this.ch);
         loop0:
         while(true)
         {
            var _loc6_:* = §§pop();
            if(!(_loc7_ && Boolean(_loc1_)))
            {
               §§push("{");
               if(_loc8_ || Boolean(_loc1_))
               {
                  §§push(_loc6_);
                  if(_loc8_ || Boolean(_loc2_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc7_ && Boolean(this)))
                        {
                           §§push(0);
                           if(_loc8_)
                           {
                           }
                        }
                        else
                        {
                           addr06bd:
                           §§push(2);
                           if(_loc7_ && Boolean(_loc1_))
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push("}");
                        if(!_loc7_)
                        {
                           addr0663:
                           §§push(_loc6_);
                           if(_loc8_ || Boolean(_loc2_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    §§push(1);
                                    if(_loc7_ && Boolean(_loc2_))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr07b8:
                                    §§push(7);
                                    if(_loc7_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push("[");
                                 if(_loc8_ || Boolean(this))
                                 {
                                    §§push(_loc6_);
                                    if(_loc8_ || Boolean(_loc1_))
                                    {
                                       addr06b3:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             §§goto(addr06bd);
                                          }
                                          else
                                          {
                                             addr072b:
                                             §§push(4);
                                             if(_loc8_ || Boolean(this))
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push("]");
                                          if(!(_loc7_ && Boolean(_loc3_)))
                                          {
                                             addr06e2:
                                             §§push(_loc6_);
                                             if(_loc8_)
                                             {
                                                addr06ea:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§push(3);
                                                      if(_loc8_ || Boolean(_loc3_))
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr0762:
                                                      §§push(5);
                                                      if(_loc8_)
                                                      {
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(",");
                                                   if(_loc8_)
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc8_ || Boolean(_loc1_))
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               §§goto(addr072b);
                                                            }
                                                            else
                                                            {
                                                               addr085a:
                                                               §§push(10);
                                                               if(_loc7_ && Boolean(_loc1_))
                                                               {
                                                               }
                                                            }
                                                            addr087a:
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  _loc1_.type = JSONTokenType.LEFT_BRACE;
                                                                  if(_loc7_)
                                                                  {
                                                                     addr0082:
                                                                     _loc1_.value = "}";
                                                                     if(_loc8_)
                                                                     {
                                                                        this.nextChar();
                                                                        if(!(_loc7_ && Boolean(_loc3_)))
                                                                        {
                                                                           break loop0;
                                                                        }
                                                                        break;
                                                                     }
                                                                     break loop0;
                                                                  }
                                                                  _loc1_.value = "{";
                                                                  if(!_loc7_)
                                                                  {
                                                                     this.nextChar();
                                                                     if(_loc7_)
                                                                     {
                                                                     }
                                                                     break loop0;
                                                                  }
                                                                  addr00b6:
                                                                  _loc1_.value = "[";
                                                                  if(_loc8_ || Boolean(_loc2_))
                                                                  {
                                                                     this.nextChar();
                                                                     if(!(_loc7_ && Boolean(_loc2_)))
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr00f3:
                                                                     _loc1_.value = "]";
                                                                     if(!(_loc8_ || Boolean(this)))
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     this.nextChar();
                                                                     if(!_loc7_)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     addr0256:
                                                                     _loc1_.value = true;
                                                                     if(_loc8_)
                                                                     {
                                                                        addr0261:
                                                                        this.nextChar();
                                                                        if(_loc8_)
                                                                        {
                                                                           break loop0;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr0303:
                                                                        §§push(_loc3_);
                                                                        if(_loc8_ || Boolean(_loc2_))
                                                                        {
                                                                           §§push("false");
                                                                           if(_loc8_)
                                                                           {
                                                                              addr031b:
                                                                              if(§§pop() != §§pop())
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push("Expecting \'false\' but found ");
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§push(§§pop() + _loc3_);
                                                                                 }
                                                                                 §§pop().parseError(§§pop());
                                                                                 if(_loc8_)
                                                                                 {
                                                                                 }
                                                                                 break loop0;
                                                                              }
                                                                              if(_loc7_)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              _loc1_.type = JSONTokenType.FALSE;
                                                                              if(!(_loc8_ || Boolean(_loc2_)))
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              addr033c:
                                                                              _loc1_.value = false;
                                                                              if(_loc7_ && Boolean(_loc2_))
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              addr034f:
                                                                              this.nextChar();
                                                                              if(_loc8_)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr03f8:
                                                                              if(§§pop() != §§pop())
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push("Expecting \'null\' but found ");
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§push(§§pop() + _loc4_);
                                                                                 }
                                                                                 §§pop().parseError(§§pop());
                                                                                 if(_loc8_ || Boolean(_loc2_))
                                                                                 {
                                                                                 }
                                                                                 break loop0;
                                                                              }
                                                                              if(_loc7_ && Boolean(this))
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                           }
                                                                           addr040a:
                                                                           _loc1_.type = JSONTokenType.NULL;
                                                                           if(_loc7_ && Boolean(this))
                                                                           {
                                                                              break loop0;
                                                                           }
                                                                           _loc1_.value = null;
                                                                           if(!_loc8_)
                                                                           {
                                                                              break loop0;
                                                                           }
                                                                           this.nextChar();
                                                                           if(!_loc7_)
                                                                           {
                                                                              break loop0;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr03d0:
                                                                           var _temp_25:* = §§pop();
                                                                           §§push(_temp_25);
                                                                           §§push(_temp_25);
                                                                           if(_loc8_ || Boolean(_loc2_))
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              if(!(_loc7_ && Boolean(_loc3_)))
                                                                              {
                                                                                 addr03ef:
                                                                                 §§push("null");
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§goto(addr03f8);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr04c2:
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push("Expecting \'NaN\' but found ");
                                                                                       if(_loc8_ || Boolean(_loc3_))
                                                                                       {
                                                                                          §§push(§§pop() + _loc5_);
                                                                                       }
                                                                                       §§pop().parseError(§§pop());
                                                                                       if(_loc7_ && Boolean(this))
                                                                                       {
                                                                                       }
                                                                                       break loop0;
                                                                                    }
                                                                                    if(_loc7_ && Boolean(_loc3_))
                                                                                    {
                                                                                       break loop0;
                                                                                    }
                                                                                 }
                                                                                 addr04d4:
                                                                                 _loc1_.type = JSONTokenType.NAN;
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 addr04f0:
                                                                                 this.nextChar();
                                                                                 if(_loc7_ && Boolean(this))
                                                                                 {
                                                                                 }
                                                                                 break loop0;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           addr04af:
                                                                           _loc5_ = §§pop();
                                                                           if(!(_loc8_ || Boolean(_loc2_)))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr04bf:
                                                                           §§push("NaN");
                                                                           §§goto(addr04c2);
                                                                        }
                                                                     }
                                                                     §§goto(addr04d4);
                                                                  }
                                                                  §§goto(addr04f0);
                                                                  break;
                                                               case 1:
                                                                  _loc1_.type = JSONTokenType.RIGHT_BRACE;
                                                                  if(_loc7_ && Boolean(this))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr0082);
                                                                  break;
                                                               case 2:
                                                                  _loc1_.type = JSONTokenType.LEFT_BRACKET;
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§goto(addr00b6);
                                                                  }
                                                                  §§goto(addr00f3);
                                                               case 3:
                                                                  _loc1_.type = JSONTokenType.RIGHT_BRACKET;
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§goto(addr00f3);
                                                                  }
                                                                  §§goto(addr0303);
                                                               case 4:
                                                                  _loc1_.type = JSONTokenType.COMMA;
                                                                  if(_loc8_)
                                                                  {
                                                                     _loc1_.value = ",";
                                                                     if(_loc8_ || Boolean(_loc2_))
                                                                     {
                                                                        this.nextChar();
                                                                        if(_loc7_ && Boolean(_loc3_))
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                                  break loop0;
                                                               case 5:
                                                                  _loc1_.type = JSONTokenType.COLON;
                                                                  if(!_loc7_)
                                                                  {
                                                                     _loc1_.value = ":";
                                                                     if(!(_loc7_ && Boolean(_loc2_)))
                                                                     {
                                                                        this.nextChar();
                                                                        if(!(_loc7_ && Boolean(this)))
                                                                        {
                                                                           break loop0;
                                                                        }
                                                                        §§goto(addr034f);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr023f:
                                                                        _loc1_.type = JSONTokenType.TRUE;
                                                                        if(!(_loc8_ || Boolean(_loc3_)))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr0256);
                                                                     }
                                                                  }
                                                                  §§goto(addr0261);
                                                               case 6:
                                                                  §§push("t");
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(this.nextChar());
                                                                     if(!(_loc7_ && Boolean(_loc3_)))
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc7_ && Boolean(_loc3_)))
                                                                        {
                                                                           §§push(this.nextChar());
                                                                           if(_loc8_ || Boolean(_loc2_))
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc7_ && Boolean(_loc1_)))
                                                                              {
                                                                                 §§push(this.nextChar());
                                                                                 if(_loc8_ || Boolean(_loc2_))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc7_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          if(!(_loc7_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§push("true");
                                                                                                if(!(_loc7_ && Boolean(_loc1_)))
                                                                                                {
                                                                                                   if(§§pop() == §§pop())
                                                                                                   {
                                                                                                      if(_loc7_ && Boolean(this))
                                                                                                      {
                                                                                                         break loop0;
                                                                                                      }
                                                                                                      §§goto(addr023f);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(this);
                                                                                                      §§push("Expecting \'true\' but found ");
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         §§push(§§pop() + _loc2_);
                                                                                                      }
                                                                                                      §§pop().parseError(§§pop());
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         break loop0;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr033c);
                                                                                                }
                                                                                                §§goto(addr031b);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr02fc:
                                                                                                _loc3_ = §§pop();
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§goto(addr0303);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr04d4);
                                                                                          }
                                                                                          §§goto(addr040a);
                                                                                       }
                                                                                       §§goto(addr02fc);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr02f5:
                                                                                       §§push(§§pop());
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§goto(addr02fc);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr03ef);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr02ba:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc8_ || Boolean(_loc2_))
                                                                                    {
                                                                                       §§push(this.nextChar());
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§push(this.nextChar());
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc8_ || Boolean(this))
                                                                                                {
                                                                                                   §§goto(addr02f5);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr04a7:
                                                                                                   §§push(§§pop());
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      var _temp_51:* = §§pop();
                                                                                                      §§goto(addr04af);
                                                                                                      §§push(_temp_51);
                                                                                                      §§push(_temp_51);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr04bf);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr038e:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   addr0395:
                                                                                                   §§push(this.nextChar());
                                                                                                   if(!(_loc7_ && Boolean(_loc2_)))
                                                                                                   {
                                                                                                      addr03a8:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         addr03af:
                                                                                                         §§push(this.nextChar());
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            addr03ba:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               addr03c1:
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc7_ && Boolean(this))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§goto(addr03d0);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr04a7);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr0492:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc8_ || Boolean(this))
                                                                                                            {
                                                                                                               addr04a6:
                                                                                                               addr04a1:
                                                                                                               §§push(§§pop() + this.nextChar());
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr04a7);
                                                                                                      }
                                                                                                      §§goto(addr03c1);
                                                                                                   }
                                                                                                   §§goto(addr03ba);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr04a7);
                                                                                          }
                                                                                          §§goto(addr03af);
                                                                                       }
                                                                                       §§goto(addr04a6);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr02f5);
                                                                              }
                                                                              §§goto(addr03af);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr02a8:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§push(this.nextChar());
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§goto(addr02ba);
                                                                                 }
                                                                                 §§goto(addr04a6);
                                                                              }
                                                                           }
                                                                           §§goto(addr04a1);
                                                                        }
                                                                        §§goto(addr04a7);
                                                                     }
                                                                     §§goto(addr03a8);
                                                                  }
                                                                  §§goto(addr03c1);
                                                               case 7:
                                                                  §§push("f");
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(this.nextChar());
                                                                     if(_loc8_ || Boolean(_loc3_))
                                                                     {
                                                                        §§goto(addr02a8);
                                                                     }
                                                                     §§goto(addr03a8);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr047f:
                                                                     §§push(this.nextChar());
                                                                     if(!(_loc7_ && Boolean(_loc3_)))
                                                                     {
                                                                        §§goto(addr0492);
                                                                     }
                                                                  }
                                                                  §§goto(addr04a6);
                                                               case 8:
                                                                  §§push("n");
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(this.nextChar());
                                                                     if(_loc8_)
                                                                     {
                                                                        §§goto(addr038e);
                                                                     }
                                                                     §§goto(addr0492);
                                                                  }
                                                                  §§goto(addr0395);
                                                               case 9:
                                                                  §§push("N");
                                                                  if(!(_loc7_ && Boolean(_loc3_)))
                                                                  {
                                                                     §§goto(addr047f);
                                                                  }
                                                                  §§goto(addr04a1);
                                                               case 10:
                                                                  _loc1_ = this.readString();
                                                                  if(!(_loc7_ && Boolean(_loc1_)))
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  addr05cd:
                                                                  return null;
                                                                  break;
                                                               default:
                                                                  §§push(this.isDigit(this.ch));
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc8_ || Boolean(this))
                                                                     {
                                                                        addr056f:
                                                                        var _temp_60:* = §§pop();
                                                                        §§push(_temp_60);
                                                                        if(!_temp_60)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§pop();
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(this.ch);
                                                                                 if(_loc8_ || Boolean(_loc2_))
                                                                                 {
                                                                                    §§push("-");
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       addr059d:
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             addr05a7:
                                                                                             _loc1_ = this.readNumber();
                                                                                          }
                                                                                          break loop0;
                                                                                       }
                                                                                       addr05b9:
                                                                                       §§push(this.ch);
                                                                                       §§push("");
                                                                                    }
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push("Unexpected ");
                                                                                       if(!(_loc7_ && Boolean(this)))
                                                                                       {
                                                                                          §§push(§§pop() + this.ch);
                                                                                          if(_loc8_ || Boolean(_loc1_))
                                                                                          {
                                                                                             §§push(§§pop() + " encountered");
                                                                                          }
                                                                                       }
                                                                                       §§pop().parseError(§§pop());
                                                                                       break loop0;
                                                                                    }
                                                                                    if(_loc7_ && Boolean(_loc2_))
                                                                                    {
                                                                                       break loop0;
                                                                                    }
                                                                                    §§goto(addr05cd);
                                                                                 }
                                                                                 §§goto(addr05b9);
                                                                              }
                                                                              §§goto(addr05a7);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr059d);
                                                                  }
                                                                  §§goto(addr056f);
                                                            }
                                                            _loc1_.value = NaN;
                                                            if(_loc7_)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr04f0);
                                                         }
                                                         else
                                                         {
                                                            §§push(":");
                                                            if(_loc8_ || Boolean(_loc1_))
                                                            {
                                                               addr0750:
                                                               §§push(_loc6_);
                                                               if(!_loc7_)
                                                               {
                                                                  addr0758:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§goto(addr0762);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr07ef:
                                                                        §§push(8);
                                                                        if(_loc7_ && Boolean(_loc1_))
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push("t");
                                                                     if(_loc8_)
                                                                     {
                                                                        addr0777:
                                                                        §§push(_loc6_);
                                                                        if(_loc8_)
                                                                        {
                                                                           addr077f:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(6);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr082f:
                                                                                 §§push(9);
                                                                                 if(_loc7_ && Boolean(_loc1_))
                                                                                 {
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push("f");
                                                                              if(_loc8_ || Boolean(_loc3_))
                                                                              {
                                                                                 addr07a6:
                                                                                 §§push(_loc6_);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§goto(addr07b8);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr07ef);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push("n");
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          if(_loc8_ || Boolean(_loc3_))
                                                                                          {
                                                                                             addr07dd:
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(_loc8_ || Boolean(_loc2_))
                                                                                                {
                                                                                                   §§goto(addr07ef);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr085a);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push("N");
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   addr080d:
                                                                                                   §§push(_loc6_);
                                                                                                   if(_loc8_ || Boolean(this))
                                                                                                   {
                                                                                                      if(§§pop() === §§pop())
                                                                                                      {
                                                                                                         if(_loc8_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            §§goto(addr082f);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr085a);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr0856:
                                                                                                         addr0854:
                                                                                                         if("\"" === _loc6_)
                                                                                                         {
                                                                                                            §§goto(addr085a);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(11);
                                                                                                         }
                                                                                                         §§goto(addr087a);
                                                                                                      }
                                                                                                      §§goto(addr085a);
                                                                                                   }
                                                                                                   §§goto(addr0856);
                                                                                                }
                                                                                                §§goto(addr0854);
                                                                                             }
                                                                                             §§goto(addr085a);
                                                                                          }
                                                                                          §§goto(addr0856);
                                                                                       }
                                                                                       §§goto(addr0854);
                                                                                    }
                                                                                    §§goto(addr087a);
                                                                                 }
                                                                                 §§goto(addr07dd);
                                                                              }
                                                                              §§goto(addr080d);
                                                                           }
                                                                           §§goto(addr087a);
                                                                        }
                                                                        §§goto(addr0856);
                                                                     }
                                                                     §§goto(addr07a6);
                                                                  }
                                                                  §§goto(addr087a);
                                                               }
                                                               §§goto(addr077f);
                                                            }
                                                            §§goto(addr07a6);
                                                         }
                                                      }
                                                      §§goto(addr0758);
                                                   }
                                                   §§goto(addr0750);
                                                }
                                                §§goto(addr087a);
                                             }
                                             §§goto(addr07dd);
                                          }
                                          §§goto(addr0777);
                                       }
                                       §§goto(addr087a);
                                    }
                                    §§goto(addr0758);
                                 }
                                 §§goto(addr06e2);
                              }
                              §§goto(addr087a);
                           }
                           §§goto(addr06ea);
                        }
                        §§goto(addr080d);
                     }
                     §§goto(addr087a);
                  }
                  §§goto(addr06b3);
               }
               §§goto(addr0663);
            }
            §§goto(addr06bd);
         }
         return _loc1_;
      }
   }
}

