package com.greensock.plugins
{
   import com.greensock.core.*;
   import flash.filters.*;
   
   public class FilterPlugin extends TweenPlugin
   {
      
      public static const VERSION:Number = 2.03;
      
      public static const API:Number = 1;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || FilterPlugin)
      {
         VERSION = 2.03;
         if(!(_loc1_ && _loc1_))
         {
            API = 1;
         }
      }
      
      protected var _remove:Boolean;
      
      protected var _target:Object;
      
      protected var _index:int;
      
      protected var _filter:BitmapFilter;
      
      protected var _type:Class;
      
      public function FilterPlugin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function onCompleteTween() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Array = null;
         var _loc2_:* = 0;
         if(_loc3_ || _loc3_)
         {
            if(_remove)
            {
               addr002e:
               _loc1_ = _target.filters;
               if(_loc3_ || Boolean(_loc2_))
               {
                  if(!(_loc1_[_index] is _type))
                  {
                     if(_loc3_)
                     {
                        _loc2_ = int(_loc1_.length);
                     }
                     do
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           var _temp_3:* = §§pop();
                           §§push(_temp_3);
                           §§push(_temp_3);
                           if(_loc3_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc2_ = §§pop();
                        }
                        if(!§§pop())
                        {
                           if(_loc4_)
                           {
                           }
                           break;
                        }
                        if(!(_loc1_[_loc2_] is _type))
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           break;
                        }
                        _loc1_.splice(_loc2_,1);
                     }
                     while(!(_loc3_ || _loc3_));
                     
                     addr00d9:
                     _target.filters = _loc1_;
                     addr0098:
                  }
                  else
                  {
                     _loc1_.splice(_index,1);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§goto(addr00d9);
                     }
                  }
                  §§goto(addr00e0);
               }
               §§goto(addr0098);
            }
            addr00e0:
            return;
         }
         §§goto(addr002e);
      }
      
      protected function initFilter(param1:Object, param2:BitmapFilter, param3:Array) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc5_:* = null;
         var _loc6_:* = 0;
         var _loc7_:HexColorsPlugin = null;
         var _loc4_:Array = _target.filters;
         if(!_loc9_)
         {
            var _loc8_:Object = param1 is BitmapFilter ? {} : param1;
            if(_loc10_ || Boolean(param1))
            {
               _index = -1;
               if(!_loc9_)
               {
                  if(_loc8_.index != null)
                  {
                     if(_loc10_ || Boolean(param2))
                     {
                        _index = _loc8_.index;
                        if(!_loc10_)
                        {
                           while(true)
                           {
                              §§push(_loc6_);
                              if(!(_loc9_ && Boolean(param1)))
                              {
                                 var _temp_5:* = §§pop();
                                 §§push(_temp_5);
                                 §§push(_temp_5);
                                 if(_loc10_ || Boolean(param3))
                                 {
                                    §§push(§§pop() - 1);
                                    if(!_loc9_)
                                    {
                                       _loc6_ = §§pop();
                                       if(_loc10_)
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc10_ || Boolean(param2))
                                             {
                                                addr0117:
                                                §§push(_index);
                                                if(!_loc9_)
                                                {
                                                   addr0120:
                                                   §§push(-1);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc10_ || Boolean(param3))
                                                      {
                                                         var _temp_9:* = §§pop();
                                                         §§push(_temp_9);
                                                         §§push(_temp_9);
                                                         if(_loc10_ || Boolean(param2))
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  §§pop();
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(_loc4_[_index] == null);
                                                                     if(!_loc9_)
                                                                     {
                                                                        addr0167:
                                                                        var _temp_11:* = §§pop();
                                                                        §§push(_temp_11);
                                                                        §§push(_temp_11);
                                                                        if(!(_loc9_ && Boolean(this)))
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              if(_loc10_ || Boolean(param2))
                                                                              {
                                                                                 §§pop();
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    addr018f:
                                                                                    §§push(_loc8_.addFilter == true);
                                                                                    if(!(_loc9_ && Boolean(param3)))
                                                                                    {
                                                                                       §§goto(addr01a5);
                                                                                    }
                                                                                    §§goto(addr0373);
                                                                                 }
                                                                                 §§goto(addr0229);
                                                                              }
                                                                           }
                                                                           §§goto(addr01a5);
                                                                        }
                                                                        §§goto(addr04a0);
                                                                     }
                                                                     §§goto(addr04d1);
                                                                  }
                                                                  §§goto(addr054b);
                                                               }
                                                               addr01a5:
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc9_ && Boolean(param3)))
                                                                  {
                                                                     §§push(§§findproperty(_index));
                                                                     if(_loc10_ || Boolean(this))
                                                                     {
                                                                        if(_loc8_.index != null)
                                                                        {
                                                                           addr01d2:
                                                                           §§push(int(_loc8_.index));
                                                                           if(_loc10_)
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(int(_loc4_.length));
                                                                        }
                                                                        §§pop()._index = §§pop();
                                                                        if(!_loc9_)
                                                                        {
                                                                           _loc4_[_index] = param2;
                                                                           if(!_loc9_)
                                                                           {
                                                                              _target.filters = _loc4_;
                                                                              if(!(_loc9_ && Boolean(param1)))
                                                                              {
                                                                                 §§goto(addr0215);
                                                                              }
                                                                              §§goto(addr038b);
                                                                           }
                                                                           §§goto(addr04fb);
                                                                        }
                                                                        §§goto(addr038b);
                                                                     }
                                                                     §§goto(addr01d2);
                                                                  }
                                                                  §§goto(addr0247);
                                                               }
                                                               addr0215:
                                                               _filter = _loc4_[_index];
                                                               if(_loc10_)
                                                               {
                                                                  addr0229:
                                                                  if(_loc8_.remove == true)
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        addr023a:
                                                                        _remove = true;
                                                                        if(_loc10_)
                                                                        {
                                                                           addr0247:
                                                                           this.onComplete = onCompleteTween;
                                                                           if(_loc10_)
                                                                           {
                                                                              addr0255:
                                                                              §§push(param3);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push(int(§§pop().length));
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    _loc6_ = §§pop();
                                                                                    if(!(_loc9_ && Boolean(param3)))
                                                                                    {
                                                                                       loop6:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          if(_loc10_ || Boolean(param1))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                var _temp_20:* = §§pop();
                                                                                                §§push(_temp_20);
                                                                                                §§push(_temp_20);
                                                                                                if(_loc10_ || Boolean(param2))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() - 1);
                                                                                                   }
                                                                                                   addr056a:
                                                                                                }
                                                                                                addr056b:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                }
                                                                                             }
                                                                                             addr055b:
                                                                                          }
                                                                                          addr056d:
                                                                                          loop10:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§push(param3);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop()[_loc6_]);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      _loc5_ = §§pop();
                                                                                                      §§push(_loc5_);
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§push(§§pop() in param1);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            var _temp_23:* = §§pop();
                                                                                                            §§push(_temp_23);
                                                                                                            §§push(_temp_23);
                                                                                                            if(!(_loc9_ && Boolean(param3)))
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc10_ || Boolean(param1))
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        break loop10;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_filter[_loc5_] == param1[_loc5_]);
                                                                                                                        if(_loc10_ || Boolean(this))
                                                                                                                        {
                                                                                                                           §§push(!§§pop());
                                                                                                                           if(!(_loc9_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              while(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc10_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_);
                                                                                                                                    if(!(_loc9_ && Boolean(this)))
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push("color");
                                                                                                                                          if(!(_loc9_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                             if(_loc10_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   var _temp_31:* = §§pop();
                                                                                                                                                   §§push(_temp_31);
                                                                                                                                                   §§push(_temp_31);
                                                                                                                                                   if(_loc10_)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                               if(!(_loc9_ && Boolean(param1)))
                                                                                                                                                               {
                                                                                                                                                                  §§push("highlightColor");
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                                                                     if(_loc10_ || Boolean(param1))
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           var _temp_34:* = §§pop();
                                                                                                                                                                           §§push(_temp_34);
                                                                                                                                                                           §§push(_temp_34);
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc5_);
                                                                                                                                                                                          if(_loc10_ || Boolean(param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push("shadowColor");
                                                                                                                                                                                             if(!(_loc10_ || Boolean(this)))
                                                                                                                                                                                             {
                                                                                                                                                                                                break loop6;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                                                                if(_loc10_ || Boolean(param3))
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc7_ = new HexColorsPlugin();
                                                                                                                                                                                                               _loc7_.initColor(_filter,_loc5_,_filter[_loc5_],param1[_loc5_]);
                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _tweens[_tweens.length] = new PropTween(_loc7_,"changeFactor",0,1,_loc5_,false);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break loop10;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr03c5:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                                                                               if(_loc10_ || Boolean(param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push("knockout");
                                                                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break loop6;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr04e8:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                                                                                                                        addr04e9:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc10_ || Boolean(this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _filter[_loc5_] = param1[_loc5_];
                                                                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break loop10;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr04fb:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addTween(_filter,_loc5_,_filter[_loc5_],param1[_loc5_],_loc5_);
                                                                                                                                                                                                                              if(_loc10_ || Boolean(this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break loop10;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0571);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr04c1:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr04e5:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr04e8);
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr04b1:
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                         if(!(_loc9_ && Boolean(param3)))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push("quality");
                                                                                                                                                                                                               if(!(_loc10_ || Boolean(param2)))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break loop6;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() == §§pop());
                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     var _temp_44:* = §§pop();
                                                                                                                                                                                                                     §§push(_temp_44);
                                                                                                                                                                                                                     §§push(_temp_44);
                                                                                                                                                                                                                     if(!(_loc9_ && Boolean(param2)))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc9_ && Boolean(param3)))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    if(_loc10_ || Boolean(param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc5_);
                                                                                                                                                                                                                                       if(!(_loc9_ && Boolean(param1)))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push("inner");
                                                                                                                                                                                                                                             if(!(_loc9_ && Boolean(param3)))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                if(!(_loc9_ && Boolean(this)))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      var _temp_51:* = §§pop();
                                                                                                                                                                                                                                                      §§push(_temp_51);
                                                                                                                                                                                                                                                      §§push(_temp_51);
                                                                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr04b1);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr04fb);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr04aa:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr04d1:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               var _temp_52:* = §§pop();
                                                                                                                                                                                                                                                               §§push(_temp_52);
                                                                                                                                                                                                                                                               §§push(_temp_52);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr04a0:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break loop10;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr04e5);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                               addr04dc:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr04e9);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr04d1);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr0499:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr04dc);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr04e8);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr0479:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr04c1);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr04b1);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr045a:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr04aa);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0499);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr0448:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr04a0);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr0439:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr04e9);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr0421:
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr04c1);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr03bb:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0499);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0421);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr038b:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr03c5);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0439);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr03bb);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0448);
                                                                                                                                                                        }
                                                                                                                                                                        addr0373:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr03bb);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr03ac);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0479);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr04b1);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr04dc);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0373);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr04a0);
                                                                                                                                                }
                                                                                                                                                addr0333:
                                                                                                                                             }
                                                                                                                                             §§goto(addr04e9);
                                                                                                                                          }
                                                                                                                                          §§goto(addr03ac);
                                                                                                                                       }
                                                                                                                                       addr031b:
                                                                                                                                    }
                                                                                                                                    §§goto(addr0421);
                                                                                                                                 }
                                                                                                                                 §§goto(addr03c5);
                                                                                                                              }
                                                                                                                              break loop10;
                                                                                                                              addr02f9:
                                                                                                                           }
                                                                                                                           §§goto(addr0333);
                                                                                                                        }
                                                                                                                        §§goto(addr04d1);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr045a);
                                                                                                               }
                                                                                                               §§goto(addr02f9);
                                                                                                            }
                                                                                                            §§goto(addr04a0);
                                                                                                         }
                                                                                                         §§goto(addr03bb);
                                                                                                      }
                                                                                                      §§goto(addr0421);
                                                                                                   }
                                                                                                   §§goto(addr031b);
                                                                                                }
                                                                                                addr027b:
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§goto(addr04d1);
                                                                                          }
                                                                                          §§goto(addr04dc);
                                                                                       }
                                                                                       addr054b:
                                                                                    }
                                                                                    §§goto(addr0571);
                                                                                 }
                                                                                 §§goto(addr055b);
                                                                              }
                                                                              §§goto(addr027b);
                                                                           }
                                                                           §§goto(addr02cd);
                                                                        }
                                                                        §§goto(addr04e3);
                                                                     }
                                                                     §§goto(addr0247);
                                                                  }
                                                                  §§goto(addr0255);
                                                               }
                                                               addr0571:
                                                               return;
                                                            }
                                                            §§goto(addr0167);
                                                         }
                                                         §§goto(addr04a0);
                                                      }
                                                      §§goto(addr045a);
                                                   }
                                                   §§goto(addr056a);
                                                }
                                                §§goto(addr056d);
                                             }
                                             §§goto(addr023a);
                                          }
                                          else
                                          {
                                             §§push(_loc4_[_loc6_] is _type);
                                             if(_loc10_ || Boolean(param2))
                                             {
                                                if(!§§pop())
                                                {
                                                   continue;
                                                }
                                                if(!_loc9_)
                                                {
                                                   _index = _loc6_;
                                                   if(_loc10_)
                                                   {
                                                      §§goto(addr0117);
                                                   }
                                                   §§goto(addr018f);
                                                }
                                                §§goto(addr04e3);
                                             }
                                          }
                                          §§goto(addr04d1);
                                       }
                                       §§goto(addr0120);
                                    }
                                    §§goto(addr056b);
                                 }
                                 §§goto(addr056a);
                              }
                              §§goto(addr0120);
                           }
                           addr00d7:
                        }
                     }
                     §§goto(addr0117);
                  }
                  else
                  {
                     _loc6_ = int(_loc4_.length);
                  }
                  §§goto(addr00d7);
               }
            }
            §§goto(addr0117);
         }
         §§goto(addr003e);
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:PropTween = null;
         var _loc2_:* = int(_tweens.length);
         var _loc4_:Array = _target.filters;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc7_)
            {
               break;
            }
            var _temp_1:* = §§pop();
            §§push(_temp_1);
            §§push(_temp_1);
            if(!(_loc7_ && Boolean(param1)))
            {
               §§push(§§pop() - 1);
               if(_loc6_ || Boolean(_loc2_))
               {
                  §§goto(addr007b);
               }
               while(true)
               {
                  _loc2_ = §§pop();
                  §§goto(addr015c);
               }
               addr015b:
            }
            addr007b:
            _loc2_ = §§pop();
            if(_loc7_ && Boolean(this))
            {
               break;
            }
            if(!§§pop())
            {
               if(_loc6_)
               {
                  §§push(_loc4_[_index] is _type);
                  if(_loc6_ || Boolean(this))
                  {
                     if(!§§pop())
                     {
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           §§push(_index = _loc4_.length);
                           if(!(_loc7_ && Boolean(_loc3_)))
                           {
                              _loc2_ = §§pop();
                              if(!(_loc7_ && Boolean(param1)))
                              {
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc7_ && Boolean(_loc2_)))
                                    {
                                       break loop0;
                                    }
                                    addr015c:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             break;
                                          }
                                          _target.filters = _loc4_;
                                          addr010b:
                                       }
                                       §§goto(addr0177);
                                    }
                                 }
                              }
                              §§goto(addr0166);
                           }
                           §§goto(addr015c);
                        }
                        §§goto(addr0177);
                     }
                     §§goto(addr0166);
                  }
                  §§goto(addr010b);
               }
               addr0166:
               _loc4_[_index] = _filter;
               if(_loc6_)
               {
                  addr0177:
                  §§goto(addr017f);
               }
               addr017f:
            }
            _loc3_ = _tweens[_loc2_];
            if(_loc6_)
            {
               _loc3_.target[_loc3_.property] = _loc3_.start + _loc3_.change * param1;
            }
            continue;
            §§push(_loc4_[_loc2_] is _type);
            while(§§pop())
            {
               if(_loc7_)
               {
                  break loop2;
               }
               _index = _loc2_;
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  break loop2;
               }
            }
            continue loop1;
            return;
         }
         while(true)
         {
            var _temp_12:* = §§pop();
            §§push(_temp_12);
            §§push(_temp_12);
            if(_loc6_ || Boolean(param1))
            {
               §§push(§§pop() - 1);
            }
            §§goto(addr015b);
         }
      }
   }
}

