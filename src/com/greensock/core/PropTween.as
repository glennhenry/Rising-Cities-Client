package com.greensock.core
{
   public final class PropTween
   {
      
      public var priority:int;
      
      public var start:Number;
      
      public var prevNode:PropTween;
      
      public var change:Number;
      
      public var target:Object;
      
      public var name:String;
      
      public var property:String;
      
      public var nextNode:PropTween;
      
      public var isPlugin:Boolean;
      
      public function PropTween(param1:Object, param2:String, param3:Number, param4:Number, param5:String, param6:Boolean, param7:PropTween = null, param8:int = 0)
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         if(!(_loc9_ && Boolean(param2)))
         {
            super();
            if(!_loc9_)
            {
               addr002d:
               this.target = param1;
               if(_loc10_ || Boolean(param1))
               {
                  this.property = param2;
                  if(!(_loc9_ && Boolean(this)))
                  {
                     this.start = param3;
                     if(!(_loc9_ && Boolean(param3)))
                     {
                        addr0073:
                        this.change = param4;
                        if(_loc10_)
                        {
                           addr007f:
                           this.name = param5;
                           if(!(_loc9_ && Boolean(param2)))
                           {
                              addr0093:
                              this.isPlugin = param6;
                              if(!_loc9_)
                              {
                                 if(param7)
                                 {
                                    if(!_loc9_)
                                    {
                                       addr00b8:
                                       param7.prevNode = this;
                                       if(_loc10_)
                                       {
                                          this.nextNode = param7;
                                          if(_loc10_ || Boolean(this))
                                          {
                                             addr00d8:
                                             this.priority = param8;
                                          }
                                          return;
                                       }
                                    }
                                 }
                                 §§goto(addr00d8);
                              }
                           }
                           §§goto(addr00b8);
                        }
                        §§goto(addr0093);
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0073);
            }
            §§goto(addr0093);
         }
         §§goto(addr002d);
      }
   }
}

