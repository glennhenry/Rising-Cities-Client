package com.greensock
{
   import com.greensock.core.*;
   
   public final class OverwriteManager
   {
      
      public static var enabled:Boolean;
      
      public static var mode:int;
      
      public static const ALL_ONSTART:int = 4;
      
      public static const ALL_IMMEDIATE:int = 1;
      
      public static const PREEXISTING:int = 5;
      
      public static const AUTO:int = 2;
      
      public static const version:Number = 6.1;
      
      public static const NONE:int = 0;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc1_)
      {
         version = 6.1;
         if(!_loc2_)
         {
            NONE = 0;
            if(!_loc2_)
            {
               ALL_IMMEDIATE = 1;
               if(!_loc2_)
               {
                  AUTO = 2;
                  if(!_loc2_)
                  {
                     §§goto(addr0069);
                  }
               }
            }
            §§goto(addr008d);
         }
         §§goto(addr0078);
      }
      addr0069:
      
      public static const CONCURRENT:int = 3;
      
      if(!_loc2_)
      {
         addr0078:
         ALL_ONSTART = 4;
         if(_loc1_ || OverwriteManager)
         {
            addr008d:
            PREEXISTING = 5;
         }
      }
      
      public function OverwriteManager()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function getGlobalPaused(param1:TweenCore) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = false;
         for(; param1; param1 = param1.timeline)
         {
            §§push(param1.cachedPaused);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(true);
                     if(_loc4_ || Boolean(param1))
                     {
                        addr005c:
                        _loc2_ = §§pop();
                        if(_loc4_)
                        {
                        }
                        break;
                     }
                     §§goto(addr0075);
                  }
                  break;
               }
               continue;
            }
            §§goto(addr005c);
         }
         addr0075:
         _loc2_;
         return §§pop();
      }
      
      public static function init(param1:int = 2) : int
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(TweenLite.version < 11.6)
            {
               if(_loc3_)
               {
                  throw new Error("Warning: Your TweenLite class needs to be updated to work with OverwriteManager (or you may need to clear your ASO files). Please download and install the latest version from http://www.tweenlite.com.");
                  addr0027:
               }
               else
               {
                  addr007a:
                  enabled = true;
               }
            }
            else
            {
               TweenLite.overwriteManager = OverwriteManager;
               if(!(_loc2_ && _loc3_))
               {
                  mode = param1;
                  if(_loc3_)
                  {
                     §§goto(addr007a);
                  }
               }
            }
            return mode;
         }
         §§goto(addr0027);
      }
      
      public static function manageOverwrites(param1:TweenLite, param2:Object, param3:Array, param4:int) : Boolean
      {
         §§push(false);
         var _loc20_:Boolean = true;
         var _loc21_:* = §§pop();
         var _loc5_:* = 0;
         var _loc6_:* = false;
         var _loc7_:TweenLite = null;
         var _loc13_:* = 0;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:TweenCore = null;
         var _loc17_:* = NaN;
         var _loc18_:SimpleTimeline = null;
         if(_loc20_)
         {
            §§push(param4);
            if(!_loc21_)
            {
               if(§§pop() >= 4)
               {
                  if(!_loc21_)
                  {
                     §§push(int(param3.length));
                     if(!(_loc21_ && OverwriteManager))
                     {
                        _loc13_ = §§pop();
                        if(!_loc21_)
                        {
                           addr0071:
                           _loc5_ = 0;
                           addr006f:
                        }
                        while(_loc5_ < _loc13_)
                        {
                           _loc7_ = param3[_loc5_];
                           if(_loc7_ != param1)
                           {
                              if(!(_loc20_ || Boolean(param3)))
                              {
                                 break;
                              }
                              §§push(_loc7_.setEnabled(false,false));
                              if(_loc20_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc21_)
                                    {
                                       §§push(true);
                                       if(_loc20_ || Boolean(param3))
                                       {
                                          addr00be:
                                          _loc6_ = §§pop();
                                          if(!_loc20_)
                                          {
                                             break;
                                          }
                                          addr00dc:
                                          _loc5_++;
                                          if(_loc20_)
                                          {
                                             continue;
                                          }
                                          addr00ef:
                                          var _loc8_:* = param1.cachedStartTime + 1e-10;
                                          var _loc9_:Array = [];
                                          var _loc10_:Array = [];
                                          var _loc11_:int = 0;
                                          var _loc12_:int = 0;
                                          if(!(_loc21_ && Boolean(param3)))
                                          {
                                             §§push(param3);
                                             if(_loc20_ || Boolean(param1))
                                             {
                                                §§push(int(§§pop().length));
                                                if(_loc20_)
                                                {
                                                   _loc5_ = §§pop();
                                                   if(!(_loc21_ && OverwriteManager))
                                                   {
                                                      loop1:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         if(!(_loc20_ || Boolean(param1)))
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop() - 1);
                                                         if(_loc21_ && Boolean(param2))
                                                         {
                                                            break;
                                                         }
                                                         loop8:
                                                         while(true)
                                                         {
                                                            var _temp_10:* = §§pop();
                                                            §§push(_temp_10);
                                                            §§push(_temp_10);
                                                            if(!(_loc20_ || Boolean(param2)))
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop());
                                                            if(!_loc21_)
                                                            {
                                                               _loc5_ = §§pop();
                                                               if(_loc20_)
                                                               {
                                                                  §§push(-1);
                                                                  if(!_loc21_)
                                                                  {
                                                                     if(§§pop() <= §§pop())
                                                                     {
                                                                        if(_loc20_)
                                                                        {
                                                                           §§push(_loc11_);
                                                                           if(!_loc21_)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc20_)
                                                                              {
                                                                                 addr03f6:
                                                                                 if(§§pop() != §§pop())
                                                                                 {
                                                                                    if(_loc20_ || OverwriteManager)
                                                                                    {
                                                                                       addr0408:
                                                                                       §§push(param1.cachedTimeScale);
                                                                                       if(_loc20_ || Boolean(param1))
                                                                                       {
                                                                                          _loc14_ = §§pop();
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             addr0434:
                                                                                             §§push(_loc8_);
                                                                                             if(!(_loc21_ && Boolean(param1)))
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                             }
                                                                                             _loc15_ = §§pop();
                                                                                             if(_loc20_ || Boolean(param3))
                                                                                             {
                                                                                                addr0444:
                                                                                                _loc18_ = param1.timeline;
                                                                                                if(_loc20_ || OverwriteManager)
                                                                                                {
                                                                                                   loop9:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         if(_loc20_ || Boolean(param3))
                                                                                                         {
                                                                                                            addr04e3:
                                                                                                            §§push(_loc14_);
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               §§push(§§pop() * _loc15_);
                                                                                                               if(!(_loc21_ && Boolean(param1)))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                            }
                                                                                                            addr04fd:
                                                                                                            _loc8_ = §§pop();
                                                                                                            if(!(_loc21_ && Boolean(param3)))
                                                                                                            {
                                                                                                               §§push(_loc11_);
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     _loc5_ = §§pop();
                                                                                                                     if(_loc20_)
                                                                                                                     {
                                                                                                                        loop13:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           if(_loc20_ || Boolean(param3))
                                                                                                                           {
                                                                                                                              §§push(§§pop() - 1);
                                                                                                                              if(!(_loc21_ && Boolean(param1)))
                                                                                                                              {
                                                                                                                                 var _temp_22:* = §§pop();
                                                                                                                                 §§push(_temp_22);
                                                                                                                                 §§push(_temp_22);
                                                                                                                                 if(!(_loc21_ && Boolean(param2)))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(!_loc21_)
                                                                                                                                    {
                                                                                                                                       addr0759:
                                                                                                                                       _loc5_ = §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(-1);
                                                                                                                                       }
                                                                                                                                       addr0761:
                                                                                                                                       §§push(_loc12_);
                                                                                                                                       if(!(_loc21_ && Boolean(param3)))
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          if(!_loc21_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() == §§pop())
                                                                                                                                             {
                                                                                                                                                if(!_loc21_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                   if(_loc20_)
                                                                                                                                                   {
                                                                                                                                                      return §§pop();
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr0792:
                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                   if(!(_loc21_ && Boolean(param1)))
                                                                                                                                                   {
                                                                                                                                                      addr07a2:
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(!(_loc21_ && OverwriteManager))
                                                                                                                                                      {
                                                                                                                                                         addr07b1:
                                                                                                                                                         _loc5_ = §§pop();
                                                                                                                                                         if(_loc20_)
                                                                                                                                                         {
                                                                                                                                                            §§push(param4);
                                                                                                                                                            if(!(_loc21_ && Boolean(param1)))
                                                                                                                                                            {
                                                                                                                                                               §§push(2);
                                                                                                                                                               if(!_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() == §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc20_ || Boolean(param1))
                                                                                                                                                                     {
                                                                                                                                                                        loop17:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              loop24:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - 1);
                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    var _temp_29:* = §§pop();
                                                                                                                                                                                    §§push(_temp_29);
                                                                                                                                                                                    §§push(_temp_29);
                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          if(!(_loc21_ && Boolean(param1)))
                                                                                                                                                                                          {
                                                                                                                                                                                             break loop8;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr08ad:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() <= §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(true);
                                                                                                                                                                                                      if(_loc21_ && Boolean(param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      loop6:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc6_ = §§pop();
                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         loop7:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                            if(!(_loc21_ && Boolean(param3)))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() - 1);
                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop24;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr0922:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr0939:
                                                                                                                                                                                                            loop4:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(-1);
                                                                                                                                                                                                               addr093b:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop() <= §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop6;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(TweenLite(_loc9_[_loc5_]).setEnabled(false,false));
                                                                                                                                                                                                                  if(!(_loc21_ && Boolean(param3)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break loop6;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break loop6;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break loop4;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break loop7;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break loop24;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr0941:
                                                                                                                                                                                                   return §§pop();
                                                                                                                                                                                                   addr08ec:
                                                                                                                                                                                                }
                                                                                                                                                                                                addr093f:
                                                                                                                                                                                                §§goto(addr0941);
                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc7_ = _loc9_[_loc5_];
                                                                                                                                                                                                §§push(_loc7_.killVars(param2));
                                                                                                                                                                                                if(_loc20_ || Boolean(param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(true);
                                                                                                                                                                                                         if(!(_loc21_ && OverwriteManager))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc6_ = §§pop();
                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr0829:
                                                                                                                                                                                                               §§push(_loc7_.cachedPT1 == null);
                                                                                                                                                                                                               if(_loc20_ || Boolean(param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  var _temp_38:* = §§pop();
                                                                                                                                                                                                                  §§push(_temp_38);
                                                                                                                                                                                                                  if(_temp_38)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr0849:
                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                        if(!(_loc20_ || Boolean(param3)))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop17;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr0858:
                                                                                                                                                                                                                        §§push(_loc7_.initted);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr085e:
                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop17;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop17;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            _loc7_.setEnabled(false,false);
                                                                                                                                                                                                            continue loop17;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0849);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0858);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0829);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr085e);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop24;
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                       addr0886:
                                                                                                                                                                                    }
                                                                                                                                                                                    break loop8;
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              addr0878:
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        break loop1;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0912);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc5_ = §§pop();
                                                                                                                                                                        §§goto(addr0939);
                                                                                                                                                                     }
                                                                                                                                                                     addr0937:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr093b);
                                                                                                                                                               }
                                                                                                                                                               addr0930:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0922);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0912);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0878);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0941);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0792);
                                                                                                                                          }
                                                                                                                                          §§goto(addr093b);
                                                                                                                                       }
                                                                                                                                       §§goto(addr07b1);
                                                                                                                                       addr075b:
                                                                                                                                    }
                                                                                                                                    while(§§pop() > §§pop())
                                                                                                                                    {
                                                                                                                                       _loc16_ = _loc10_[_loc5_];
                                                                                                                                       §§push(_loc16_.cachedTimeScale);
                                                                                                                                       if(!(_loc21_ && Boolean(param3)))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(!(_loc21_ && Boolean(param3)))
                                                                                                                                          {
                                                                                                                                             _loc14_ = §§pop();
                                                                                                                                             if(!(_loc21_ && Boolean(param2)))
                                                                                                                                             {
                                                                                                                                                addr057a:
                                                                                                                                                §§push(_loc16_.cachedStartTime);
                                                                                                                                                if(_loc20_ || Boolean(param2))
                                                                                                                                                {
                                                                                                                                                   addr0579:
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                }
                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                             }
                                                                                                                                             _loc18_ = _loc16_.timeline;
                                                                                                                                             if(!(_loc21_ && Boolean(param2)))
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc20_ || Boolean(param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                         if(_loc20_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         addr062e:
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         if(_loc20_)
                                                                                                                                                         {
                                                                                                                                                            var _temp_47:* = §§pop();
                                                                                                                                                            §§push(_temp_47);
                                                                                                                                                            §§push(_temp_47);
                                                                                                                                                            if(_loc20_ || Boolean(param2))
                                                                                                                                                            {
                                                                                                                                                               _loc17_ = §§pop();
                                                                                                                                                               if(_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() <= §§pop());
                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                     {
                                                                                                                                                                        var _temp_49:* = §§pop();
                                                                                                                                                                        §§push(_temp_49);
                                                                                                                                                                        §§push(_temp_49);
                                                                                                                                                                        if(!(_loc21_ && Boolean(param2)))
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 if(_loc20_ || Boolean(param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr0683:
                                                                                                                                                                                    §§push(_loc17_);
                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc16_.totalDuration);
                                                                                                                                                                                       if(_loc20_ || Boolean(param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr069e:
                                                                                                                                                                                          §§push(§§pop() * _loc14_);
                                                                                                                                                                                          if(!(_loc21_ && Boolean(param2)))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr06af:
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr06b6:
                                                                                                                                                                                                §§push(1e-10);
                                                                                                                                                                                                if(!_loc21_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(!(_loc21_ && Boolean(param3)))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr06cf:
                                                                                                                                                                                                      addr06cd:
                                                                                                                                                                                                      §§push(§§pop() > _loc8_);
                                                                                                                                                                                                      if(!(_loc21_ && Boolean(param1)))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         var _temp_56:* = §§pop();
                                                                                                                                                                                                         addr06df:
                                                                                                                                                                                                         §§push(_temp_56);
                                                                                                                                                                                                         if(!_temp_56)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr06e9:
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               if(!(_loc21_ && Boolean(param3)))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr0700:
                                                                                                                                                                                                                  addr06fd:
                                                                                                                                                                                                                  addr06f8:
                                                                                                                                                                                                                  if(_loc16_.cachedDuration != 0)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop13;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!(_loc20_ || Boolean(param3)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop13;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               var _loc19_:*;
                                                                                                                                                                                                               _loc9_[_loc19_ = _loc12_++] = _loc16_;
                                                                                                                                                                                                               continue loop13;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0700);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr06e9);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr06fd);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr06cf);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr06cd);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr06cf);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr06fd);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr06f8);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0700);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr06df);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0700);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr069e);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr06b6);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr06af);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr06fd);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr06f8);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                      if(_loc21_ && Boolean(param1))
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() * _loc18_.cachedTimeScale);
                                                                                                                                                      if(!_loc21_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         if(!_loc21_)
                                                                                                                                                         {
                                                                                                                                                            _loc14_ = §§pop();
                                                                                                                                                            if(!_loc20_)
                                                                                                                                                            {
                                                                                                                                                               continue loop13;
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                            if(_loc20_ || Boolean(param1))
                                                                                                                                                            {
                                                                                                                                                               addr05d4:
                                                                                                                                                               §§push(§§pop() + _loc18_.cachedStartTime);
                                                                                                                                                               if(_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  _loc15_ = §§pop();
                                                                                                                                                                  if(_loc20_ || Boolean(param3))
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0683);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr06b6);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr06fd);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr05d4);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr06cd);
                                                                                                                                                   _loc18_ = _loc18_.timeline;
                                                                                                                                                }
                                                                                                                                                §§push(_loc15_);
                                                                                                                                                if(!_loc21_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc20_ || Boolean(param3))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr062e);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr06cd);
                                                                                                                                                }
                                                                                                                                                §§goto(addr06af);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0683);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0579);
                                                                                                                                       }
                                                                                                                                       §§goto(addr057a);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0761);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0759);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr075b);
                                                                                                                        }
                                                                                                                        addr0724:
                                                                                                                     }
                                                                                                                     §§goto(addr0761);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr075b);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0724);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(_loc14_);
                                                                                                         if(!_loc21_)
                                                                                                         {
                                                                                                            §§push(§§pop() * _loc18_.cachedTimeScale);
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               addr0474:
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc20_ || Boolean(param1))
                                                                                                               {
                                                                                                                  _loc14_ = §§pop();
                                                                                                                  if(!(_loc21_ && OverwriteManager))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc15_);
                                                                                                                        if(!(_loc21_ && Boolean(param3)))
                                                                                                                        {
                                                                                                                           do
                                                                                                                           {
                                                                                                                              §§push(§§pop() + _loc18_.cachedStartTime);
                                                                                                                           }
                                                                                                                           while(_loc20_);
                                                                                                                           
                                                                                                                           break loop9;
                                                                                                                           addr04b0:
                                                                                                                        }
                                                                                                                        addr04bd:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc15_ = §§pop();
                                                                                                                           if(!_loc20_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     addr04a0:
                                                                                                                  }
                                                                                                                  §§goto(addr04e3);
                                                                                                               }
                                                                                                               §§goto(addr04b0);
                                                                                                            }
                                                                                                            §§goto(addr04bd);
                                                                                                         }
                                                                                                         §§goto(addr0474);
                                                                                                      }
                                                                                                      _loc18_ = _loc18_.timeline;
                                                                                                   }
                                                                                                   §§goto(addr04fd);
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                                §§goto(addr04a0);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr093f);
                                                                                       }
                                                                                       §§goto(addr0434);
                                                                                    }
                                                                                    §§goto(addr0444);
                                                                                 }
                                                                                 §§goto(addr0761);
                                                                              }
                                                                              §§goto(addr0886);
                                                                           }
                                                                           §§goto(addr0922);
                                                                        }
                                                                        §§goto(addr0408);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(param3);
                                                                        while(true)
                                                                        {
                                                                           _loc7_ = §§pop()[_loc5_];
                                                                           §§push(_loc7_ == param1);
                                                                           if(_loc20_ || Boolean(param3))
                                                                           {
                                                                              var _temp_70:* = §§pop();
                                                                              §§push(_temp_70);
                                                                              §§push(_temp_70);
                                                                              if(_loc20_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       §§push(_loc7_.gc);
                                                                                       if(_loc20_ || Boolean(param1))
                                                                                       {
                                                                                          addr0190:
                                                                                          var _temp_72:* = §§pop();
                                                                                          §§push(_temp_72);
                                                                                          §§push(_temp_72);
                                                                                          if(!(_loc21_ && Boolean(param3)))
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(_loc20_ || Boolean(param2))
                                                                                                   {
                                                                                                      §§push(!_loc7_.initted);
                                                                                                      if(!(_loc21_ && OverwriteManager))
                                                                                                      {
                                                                                                         var _temp_76:* = §§pop();
                                                                                                         §§push(_temp_76);
                                                                                                         §§push(_temp_76);
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!(_loc21_ && Boolean(param2)))
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - _loc7_.cachedStartTime);
                                                                                                                     if(_loc20_ || OverwriteManager)
                                                                                                                     {
                                                                                                                        §§push(2e-10);
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() <= §§pop());
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              addr0217:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                                 addr0324:
                                                                                                                                 §§push(param1.cachedDuration == 0);
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    addr0331:
                                                                                                                                    var _temp_79:* = §§pop();
                                                                                                                                    addr0332:
                                                                                                                                    §§push(_temp_79);
                                                                                                                                    if(_temp_79)
                                                                                                                                    {
                                                                                                                                       if(_loc20_ || Boolean(param2))
                                                                                                                                       {
                                                                                                                                          addr0344:
                                                                                                                                          §§pop();
                                                                                                                                          if(_loc20_ || OverwriteManager)
                                                                                                                                          {
                                                                                                                                             addr0353:
                                                                                                                                             addr0373:
                                                                                                                                             addr0363:
                                                                                                                                             addr0361:
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             if(!_loc21_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - _loc7_.cachedStartTime);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() <= 2e-10);
                                                                                                                                             if(_loc20_ || OverwriteManager)
                                                                                                                                             {
                                                                                                                                                addr0372:
                                                                                                                                                §§push(!§§pop());
                                                                                                                                             }
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc20_ || OverwriteManager)
                                                                                                                                                {
                                                                                                                                                   addr0385:
                                                                                                                                                   _loc9_[_loc19_ = _loc12_++] = _loc7_;
                                                                                                                                                   addr0395:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop1;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr0372);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 if(_loc7_.timeline != param1.timeline)
                                                                                                                                 {
                                                                                                                                    if(!(_loc21_ && Boolean(param1)))
                                                                                                                                    {
                                                                                                                                       §§push(getGlobalPaused(_loc7_));
                                                                                                                                       if(!_loc21_)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             continue loop1;
                                                                                                                                          }
                                                                                                                                          if(_loc21_)
                                                                                                                                          {
                                                                                                                                             continue loop1;
                                                                                                                                          }
                                                                                                                                          _loc10_[_loc19_ = _loc11_++] = _loc7_;
                                                                                                                                          if(!(_loc21_ && Boolean(param3)))
                                                                                                                                          {
                                                                                                                                             if(!_loc21_)
                                                                                                                                             {
                                                                                                                                                continue loop1;
                                                                                                                                             }
                                                                                                                                             §§goto(addr0324);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0395);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr031d:
                                                                                                                                          §§pop();
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr0324);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr0385);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0353);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_.cachedStartTime <= _loc8_);
                                                                                                                                    if(!(_loc21_ && Boolean(param2)))
                                                                                                                                    {
                                                                                                                                       addr0299:
                                                                                                                                       var _temp_91:* = §§pop();
                                                                                                                                       §§push(_temp_91);
                                                                                                                                       §§push(_temp_91);
                                                                                                                                       if(_loc20_)
                                                                                                                                       {
                                                                                                                                          addr02a0:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc21_ && Boolean(param1)))
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                if(_loc20_)
                                                                                                                                                {
                                                                                                                                                   addr02b9:
                                                                                                                                                   §§push(_loc7_.cachedStartTime + _loc7_.totalDuration + 1e-10 > _loc8_);
                                                                                                                                                   if(!(_loc21_ && OverwriteManager))
                                                                                                                                                   {
                                                                                                                                                      addr02d8:
                                                                                                                                                      var _temp_94:* = §§pop();
                                                                                                                                                      §§push(_temp_94);
                                                                                                                                                      §§push(_temp_94);
                                                                                                                                                      if(!(_loc21_ && Boolean(param1)))
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!_loc21_)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               if(!_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(!_loc7_.cachedPaused);
                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     addr0304:
                                                                                                                                                                     var _temp_96:* = §§pop();
                                                                                                                                                                     §§push(_temp_96);
                                                                                                                                                                     §§push(_temp_96);
                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                     {
                                                                                                                                                                        addr030b:
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc20_ || OverwriteManager)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr031d);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0331);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0373);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0332);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0344);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0385);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0344);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0304);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0332);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0304);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0353);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0344);
                                                                                                                                          }
                                                                                                                                          §§goto(addr02d8);
                                                                                                                                       }
                                                                                                                                       §§goto(addr030b);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr031d);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr0372);
                                                                                                                        }
                                                                                                                        §§goto(addr0363);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr0361);
                                                                                                               }
                                                                                                               §§goto(addr031d);
                                                                                                            }
                                                                                                            §§goto(addr0217);
                                                                                                         }
                                                                                                         §§goto(addr02a0);
                                                                                                      }
                                                                                                      §§goto(addr0299);
                                                                                                   }
                                                                                                   §§goto(addr02b9);
                                                                                                }
                                                                                                §§goto(addr0304);
                                                                                             }
                                                                                             §§goto(addr0217);
                                                                                          }
                                                                                          §§goto(addr030b);
                                                                                       }
                                                                                       §§goto(addr0331);
                                                                                    }
                                                                                    §§goto(addr0217);
                                                                                 }
                                                                                 §§goto(addr0190);
                                                                              }
                                                                              §§goto(addr02a0);
                                                                           }
                                                                           §§goto(addr0373);
                                                                        }
                                                                        addr0149:
                                                                     }
                                                                  }
                                                                  §§goto(addr0937);
                                                               }
                                                               §§goto(addr07a2);
                                                            }
                                                            §§goto(addr03f6);
                                                         }
                                                         while(true)
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(!(_loc20_ || Boolean(param2)))
                                                            {
                                                               break;
                                                            }
                                                            §§push(-1);
                                                            if(!_loc21_)
                                                            {
                                                               §§goto(addr08ad);
                                                            }
                                                            §§goto(addr0930);
                                                         }
                                                         §§goto(addr0939);
                                                      }
                                                      while(true)
                                                      {
                                                         var _temp_99:* = §§pop();
                                                         §§push(_temp_99);
                                                         §§push(_temp_99);
                                                         if(_loc20_)
                                                         {
                                                            §§goto(addr0930);
                                                         }
                                                         §§goto(addr0937);
                                                      }
                                                      §§goto(addr093f);
                                                   }
                                                   §§goto(addr08ec);
                                                }
                                                §§goto(addr03b6);
                                             }
                                             §§goto(addr0149);
                                          }
                                          §§goto(addr0792);
                                       }
                                       §§goto(addr00ee);
                                    }
                                    continue;
                                 }
                                 §§goto(addr00dc);
                              }
                              §§goto(addr00be);
                           }
                           else if(param4 == 5)
                           {
                              if(_loc20_)
                              {
                                 break;
                              }
                              continue;
                           }
                           §§goto(addr00dc);
                        }
                        addr00ee:
                        return §§pop();
                        §§push(_loc6_);
                     }
                     §§goto(addr0071);
                  }
                  §§goto(addr006f);
               }
               §§goto(addr00ef);
            }
            §§goto(addr0071);
         }
         §§goto(addr006f);
      }
   }
}

