package com.adobe.serialization.json
{
   public class JSONDecoder
   {
      
      private var strict:Boolean;
      
      private var value:*;
      
      private var tokenizer:JSONTokenizer;
      
      private var token:JSONToken;
      
      public function JSONDecoder(param1:String, param2:Boolean)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(this))
         {
            super();
            if(!_loc3_)
            {
               this.strict = param2;
               if(_loc4_ || Boolean(param1))
               {
                  this.tokenizer = new JSONTokenizer(param1,param2);
                  if(!(_loc3_ && _loc3_))
                  {
                     this.nextToken();
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        addr0075:
                        this.value = this.parseValue();
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§push(param2);
                           if(_loc4_)
                           {
                              §§push(§§pop());
                              if(!(_loc3_ && param2))
                              {
                                 §§goto(addr00a1);
                              }
                              §§goto(addr00d0);
                           }
                           addr00a1:
                           var _temp_8:* = §§pop();
                           §§push(_temp_8);
                           if(_temp_8)
                           {
                              if(!_loc3_)
                              {
                                 §§pop();
                                 if(!_loc3_)
                                 {
                                    §§goto(addr00d1);
                                 }
                                 §§goto(addr00e2);
                              }
                              §§goto(addr00d0);
                           }
                           addr00d1:
                           §§push(this.nextToken() == null);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr00d0:
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              if(!(_loc3_ && param2))
                              {
                                 addr00e2:
                                 this.tokenizer.parseError("Unexpected characters left in input stream");
                              }
                           }
                           §§goto(addr00ee);
                        }
                     }
                     §§goto(addr00ee);
                  }
                  §§goto(addr0075);
               }
            }
         }
         addr00ee:
      }
      
      private function nextToken() : JSONToken
      {
         return this.token = this.tokenizer.getNextToken();
      }
      
      private function parseObject() : Object
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         if(_loc3_ || _loc3_)
         {
            this.nextToken();
            if(_loc3_)
            {
               §§push(this.token);
               if(_loc3_)
               {
                  §§push(§§pop().type);
                  if(_loc3_ || Boolean(this))
                  {
                     §§push(JSONTokenType.RIGHT_BRACE);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc3_)
                           {
                              return _loc1_;
                           }
                        }
                        else
                        {
                           §§push(this.strict);
                           if(_loc3_ || Boolean(_loc2_))
                           {
                              §§push(!§§pop());
                              if(_loc3_)
                              {
                                 var _temp_5:* = §§pop();
                                 §§push(_temp_5);
                                 if(_temp_5)
                                 {
                                    if(!_loc4_)
                                    {
                                       addr009b:
                                       §§pop();
                                       if(!_loc4_)
                                       {
                                          §§push(this.token);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop().type);
                                             if(!_loc4_)
                                             {
                                                addr00b4:
                                                §§push(JSONTokenType.COMMA);
                                                if(!_loc4_)
                                                {
                                                   addr00c1:
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         this.nextToken();
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            addr00f2:
                                                            addr00ec:
                                                            addr00ea:
                                                            addr00e6:
                                                            if(this.token.type == JSONTokenType.RIGHT_BRACE)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr00fc);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(this.tokenizer);
                                                               §§push("Leading commas are not supported.  Expecting \'}\' but found ");
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§pop() + this.token.value);
                                                               }
                                                               §§pop().parseError(§§pop());
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.token);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop().type);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§push(JSONTokenType.STRING);
                                                            if(_loc3_)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     _loc2_ = String(this.token.value);
                                                                     if(!(_loc4_ && Boolean(_loc1_)))
                                                                     {
                                                                        this.nextToken();
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr017d:
                                                                           §§push(this.token);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(§§pop().type);
                                                                              if(!(_loc4_ && Boolean(this)))
                                                                              {
                                                                                 §§push(JSONTokenType.COLON);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          this.nextToken();
                                                                                          if(_loc3_ || Boolean(this))
                                                                                          {
                                                                                             _loc1_[_loc2_] = this.parseValue();
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             this.nextToken();
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(this.token);
                                                                                             if(_loc3_ || Boolean(_loc2_))
                                                                                             {
                                                                                                §§push(§§pop().type);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§push(JSONTokenType.RIGHT_BRACE);
                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                   {
                                                                                                      if(§§pop() == §§pop())
                                                                                                      {
                                                                                                         if(!(_loc4_ && _loc3_))
                                                                                                         {
                                                                                                            return _loc1_;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr0236:
                                                                                                      §§push(this.token);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr023f:
                                                                                                         §§push(§§pop().type);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            addr0246:
                                                                                                            §§push(JSONTokenType.COMMA);
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr0251:
                                                                                                               if(§§pop() == §§pop())
                                                                                                               {
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  this.nextToken();
                                                                                                                  if(_loc4_ && Boolean(this))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  addr026e:
                                                                                                                  if(this.strict)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(_loc4_ && _loc3_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  addr028a:
                                                                                                                  addr0288:
                                                                                                                  addr0284:
                                                                                                                  §§push(this.token.type);
                                                                                                                  §§push(JSONTokenType.RIGHT_BRACE);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(this.tokenizer);
                                                                                                                  if(_loc3_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push("Expecting } or , but found ");
                                                                                                                     if(!(_loc4_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        §§push(this.token);
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop().value);
                                                                                                                           if(!(_loc4_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              §§pop().parseError(§§pop());
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr0313:
                                                                                                                              §§push(this.token);
                                                                                                                              if(_loc3_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 addr0324:
                                                                                                                                 §§push(§§pop() + §§pop().value);
                                                                                                                                 if(_loc3_ || Boolean(_loc1_))
                                                                                                                                 {
                                                                                                                                    addr0341:
                                                                                                                                    §§pop().parseError(§§pop());
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 addr035b:
                                                                                                                                 §§push(this.token);
                                                                                                                              }
                                                                                                                              addr0363:
                                                                                                                              §§pop().parseError(§§pop() + §§pop().value);
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr0324);
                                                                                                                     }
                                                                                                                     §§goto(addr0341);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr0352:
                                                                                                                     §§push("Expecting string but found ");
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        §§goto(addr035b);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr0363);
                                                                                                               }
                                                                                                            }
                                                                                                            addr0290:
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr028a);
                                                                                                      }
                                                                                                      §§goto(addr0288);
                                                                                                   }
                                                                                                   §§goto(addr0290);
                                                                                                }
                                                                                                §§goto(addr0246);
                                                                                             }
                                                                                             §§goto(addr023f);
                                                                                          }
                                                                                          §§goto(addr0284);
                                                                                       }
                                                                                       §§goto(addr0236);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this.tokenizer);
                                                                                       if(_loc3_ || Boolean(this))
                                                                                       {
                                                                                          §§push("Expecting : but found ");
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§goto(addr0313);
                                                                                          }
                                                                                          §§goto(addr035b);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr0352);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0352);
                                                                                 }
                                                                                 §§goto(addr0251);
                                                                              }
                                                                              §§goto(addr028a);
                                                                           }
                                                                           §§goto(addr023f);
                                                                        }
                                                                        §§goto(addr026e);
                                                                     }
                                                                     §§goto(addr017d);
                                                                  }
                                                                  §§goto(addr026e);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.tokenizer);
                                                               }
                                                               §§goto(addr0352);
                                                            }
                                                            §§goto(addr0251);
                                                         }
                                                         §§goto(addr0246);
                                                      }
                                                      §§goto(addr0288);
                                                   }
                                                   return _loc1_;
                                                   addr0128:
                                                }
                                                §§goto(addr00f2);
                                             }
                                             §§goto(addr00ec);
                                          }
                                          §§goto(addr00ea);
                                       }
                                       §§goto(addr0128);
                                    }
                                 }
                                 §§goto(addr00c1);
                              }
                           }
                           §§goto(addr009b);
                        }
                        addr00fc:
                        return _loc1_;
                     }
                     §§goto(addr00f2);
                  }
                  §§goto(addr00b4);
               }
               §§goto(addr00ea);
            }
            §§goto(addr00e6);
         }
         §§goto(addr0128);
      }
      
      private function parseArray() : Array
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Array = new Array();
         if(_loc3_ || Boolean(_loc1_))
         {
            this.nextToken();
            if(!(_loc2_ && _loc2_))
            {
               §§push(this.token);
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  §§push(§§pop().type);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(JSONTokenType.RIGHT_BRACKET);
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!_loc2_)
                           {
                              return _loc1_;
                           }
                           addr012f:
                           §§push(this.tokenizer);
                           §§push("Leading commas are not supported.  Expecting \']\' but found ");
                           if(_loc3_)
                           {
                              §§push(§§pop() + this.token.value);
                           }
                           §§pop().parseError(§§pop());
                        }
                        else
                        {
                           §§push(this.strict);
                           if(!_loc2_)
                           {
                              §§push(!§§pop());
                              if(_loc3_ || Boolean(this))
                              {
                                 addr0095:
                                 var _temp_8:* = §§pop();
                                 §§push(_temp_8);
                                 if(_temp_8)
                                 {
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       §§pop();
                                       if(_loc3_)
                                       {
                                          §§push(this.token);
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             §§push(§§pop().type);
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                addr00cd:
                                                §§push(JSONTokenType.COMMA);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   addr00e1:
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(_loc3_ || Boolean(_loc1_))
                                                      {
                                                         addr00f2:
                                                         this.nextToken();
                                                         if(_loc3_)
                                                         {
                                                            addr0108:
                                                            addr0102:
                                                            addr0100:
                                                            if(this.token.type == JSONTokenType.RIGHT_BRACKET)
                                                            {
                                                               if(_loc3_ || Boolean(this))
                                                               {
                                                                  return _loc1_;
                                                                  addr0119:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr012f);
                                                            }
                                                            while(true)
                                                            {
                                                               _loc1_.push(this.parseValue());
                                                               if(!(_loc2_ && _loc3_))
                                                               {
                                                                  this.nextToken();
                                                                  if(_loc3_ || Boolean(_loc1_))
                                                                  {
                                                                     §§push(this.token);
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§push(§§pop().type);
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(JSONTokenType.RIGHT_BRACKET);
                                                                           if(!(_loc2_ && Boolean(_loc1_)))
                                                                           {
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 if(!(_loc2_ && Boolean(this)))
                                                                                 {
                                                                                    return _loc1_;
                                                                                 }
                                                                              }
                                                                              addr01b0:
                                                                              §§push(this.token);
                                                                              if(!(_loc2_ && Boolean(this)))
                                                                              {
                                                                                 addr01c1:
                                                                                 §§push(§§pop().type);
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    addr01d0:
                                                                                    §§push(JSONTokenType.COMMA);
                                                                                    if(_loc3_ || _loc2_)
                                                                                    {
                                                                                       addr01e3:
                                                                                       if(§§pop() != §§pop())
                                                                                       {
                                                                                          §§push(this.tokenizer);
                                                                                          §§push("Expecting ] or , but found ");
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(§§pop() + this.token.value);
                                                                                          }
                                                                                          §§pop().parseError(§§pop());
                                                                                          continue;
                                                                                       }
                                                                                       if(!(_loc2_ && _loc3_))
                                                                                       {
                                                                                          addr01f4:
                                                                                          this.nextToken();
                                                                                          if(!(_loc3_ || _loc3_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(this.strict)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!(_loc3_ || _loc2_))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       addr0221:
                                                                                       addr021f:
                                                                                       §§push(this.token.type);
                                                                                       §§push(JSONTokenType.RIGHT_BRACKET);
                                                                                    }
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       if(_loc3_ || _loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr0221);
                                                                              }
                                                                              §§goto(addr021f);
                                                                           }
                                                                           §§goto(addr01e3);
                                                                        }
                                                                        §§goto(addr01d0);
                                                                     }
                                                                     §§goto(addr01c1);
                                                                  }
                                                                  §§goto(addr01f4);
                                                               }
                                                               §§goto(addr01b0);
                                                            }
                                                            return _loc1_;
                                                            addr014c:
                                                         }
                                                         §§goto(addr0119);
                                                      }
                                                   }
                                                   §§goto(addr014c);
                                                }
                                                §§goto(addr0108);
                                             }
                                             §§goto(addr0102);
                                          }
                                          §§goto(addr0100);
                                       }
                                       §§goto(addr00f2);
                                    }
                                 }
                              }
                              §§goto(addr00e1);
                           }
                           §§goto(addr0095);
                        }
                        §§goto(addr014c);
                     }
                     §§goto(addr0108);
                  }
                  §§goto(addr00cd);
               }
               §§goto(addr0100);
            }
         }
         §§goto(addr014c);
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function parseValue() : Object
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(this.token == null)
            {
               if(_loc3_ || _loc1_)
               {
                  addr002f:
                  this.tokenizer.parseError("Unexpected end of input");
               }
            }
            §§push(this.token);
            loop0:
            while(true)
            {
               §§push(§§pop().type);
               if(_loc3_ || _loc3_)
               {
                  var _loc1_:* = §§pop();
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(JSONTokenType.LEFT_BRACE);
                     if(_loc3_ || Boolean(this))
                     {
                        §§push(_loc1_);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(0);
                                 if(_loc2_ && _loc2_)
                                 {
                                    addr01cb:
                                    §§push(_loc1_);
                                    if(!_loc2_)
                                    {
                                       addr01d1:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc2_)
                                          {
                                             addr01da:
                                             §§push(2);
                                             if(_loc2_ && _loc3_)
                                             {
                                                addr02a7:
                                                §§push(_loc1_);
                                                if(_loc3_)
                                                {
                                                   addr02ad:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         addr02c1:
                                                         §§push(6);
                                                         if(_loc2_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr02dc:
                                                         §§push(7);
                                                         if(_loc2_)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(JSONTokenType.NAN);
                                                      if(!_loc2_)
                                                      {
                                                         addr02d8:
                                                         addr02d7:
                                                         if(§§pop() === _loc1_)
                                                         {
                                                            §§goto(addr02dc);
                                                         }
                                                         else
                                                         {
                                                            §§push(8);
                                                         }
                                                      }
                                                   }
                                                   addr02f5:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         return this.parseObject();
                                                      case 1:
                                                         return this.parseArray();
                                                      case 2:
                                                      case 3:
                                                      case 4:
                                                      case 5:
                                                      case 6:
                                                         §§push(this.token);
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            break loop0;
                                                         }
                                                         continue;
                                                      case 7:
                                                         if(!this.strict)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(this.token);
                                                            if(!(_loc2_ && Boolean(this)))
                                                            {
                                                               return §§pop().value;
                                                            }
                                                            continue;
                                                         }
                                                         §§push(this.tokenizer);
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            §§push("Unexpected ");
                                                            if(_loc3_)
                                                            {
                                                               §§goto(addr0105);
                                                            }
                                                            §§goto(addr00fd);
                                                         }
                                                         §§goto(addr00ed);
                                                   }
                                                   addr00ed:
                                                   §§push("Unexpected ");
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      §§goto(addr00fd);
                                                   }
                                                   addr0105:
                                                   §§push(this.token);
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop() + §§pop().value);
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         §§pop().parseError(§§pop());
                                                         if(_loc3_)
                                                         {
                                                            break loop1;
                                                         }
                                                         §§goto(addr0315);
                                                      }
                                                      addr00fd:
                                                      §§push(this.token);
                                                   }
                                                   §§pop().parseError(§§pop() + §§pop().value);
                                                   if(_loc3_)
                                                   {
                                                   }
                                                   addr0315:
                                                   return null;
                                                   §§push(this.tokenizer);
                                                   addr02f3:
                                                }
                                                §§goto(addr02d8);
                                             }
                                          }
                                          else
                                          {
                                             addr020f:
                                             §§push(3);
                                             if(_loc3_)
                                             {
                                             }
                                          }
                                          §§goto(addr02f3);
                                       }
                                       else
                                       {
                                          §§push(JSONTokenType.NUMBER);
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             §§push(_loc1_);
                                             if(!_loc2_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      §§goto(addr020f);
                                                   }
                                                   else
                                                   {
                                                      addr0289:
                                                      §§push(5);
                                                      if(_loc2_ && Boolean(this))
                                                      {
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(JSONTokenType.TRUE);
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      addr022d:
                                                      §§push(_loc1_);
                                                      if(_loc3_ || Boolean(this))
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               §§push(4);
                                                               if(_loc2_)
                                                               {
                                                                  §§goto(addr02a7);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr0289);
                                                            }
                                                            §§goto(addr02f3);
                                                         }
                                                         else
                                                         {
                                                            §§push(JSONTokenType.FALSE);
                                                            if(_loc3_ || _loc1_)
                                                            {
                                                               addr026a:
                                                               §§push(_loc1_);
                                                               if(_loc3_ || Boolean(this))
                                                               {
                                                                  addr0278:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        §§goto(addr0289);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr02c1);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(JSONTokenType.NULL);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§goto(addr02a7);
                                                                     }
                                                                  }
                                                                  §§goto(addr02f3);
                                                               }
                                                               §§goto(addr02ad);
                                                            }
                                                         }
                                                         §§goto(addr02d7);
                                                      }
                                                      §§goto(addr02d8);
                                                   }
                                                }
                                                §§goto(addr02f3);
                                             }
                                             §§goto(addr0278);
                                          }
                                       }
                                       §§goto(addr02a7);
                                    }
                                    §§goto(addr02d8);
                                 }
                              }
                              else
                              {
                                 addr01a5:
                                 §§push(1);
                                 if(!(_loc3_ || Boolean(this)))
                                 {
                                    §§goto(addr022d);
                                 }
                              }
                              §§goto(addr02f3);
                           }
                           else
                           {
                              §§push(JSONTokenType.LEFT_BRACKET);
                              if(!_loc2_)
                              {
                                 §§push(_loc1_);
                                 if(_loc3_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§goto(addr01a5);
                                       }
                                       else
                                       {
                                          §§goto(addr01da);
                                       }
                                    }
                                    else
                                    {
                                       §§push(JSONTokenType.STRING);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§goto(addr01cb);
                                       }
                                    }
                                    §§goto(addr022d);
                                 }
                                 §§goto(addr02d8);
                              }
                           }
                           §§goto(addr02f3);
                        }
                        §§goto(addr01d1);
                     }
                     §§goto(addr026a);
                  }
                  §§goto(addr02dc);
               }
               §§goto(addr02f5);
            }
            return §§pop().value;
         }
         §§goto(addr002f);
      }
   }
}

