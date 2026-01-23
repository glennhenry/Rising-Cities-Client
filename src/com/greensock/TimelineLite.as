package com.greensock
{
   import com.greensock.core.*;
   
   public class TimelineLite extends SimpleTimeline
   {
      
      public static const version:Number = 1.672;
      
      private static var _overwriteMode:int;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         version = 1.672;
         if(_loc2_)
         {
            §§push(§§findproperty(_overwriteMode));
            if(!_loc1_)
            {
               if(OverwriteManager.enabled)
               {
                  addr0052:
                  §§push(OverwriteManager.mode);
                  if(_loc2_)
                  {
                     §§goto(addr007e);
                  }
                  §§goto(addr007d);
               }
               else
               {
                  §§push(OverwriteManager.init(2));
                  if(_loc2_)
                  {
                     §§goto(addr007d);
                  }
               }
               addr007e:
               §§push(§§pop());
               if(!(_loc2_ || _loc1_))
               {
                  addr007d:
                  §§push(§§pop());
               }
               §§pop()._overwriteMode = §§pop();
               §§goto(addr0082);
            }
            §§goto(addr0052);
         }
      }
      addr0082:
      
      protected var _endCaps:Array;
      
      protected var _labels:Object;
      
      public function TimelineLite(param1:Object = null)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super(param1);
            if(!_loc3_)
            {
               addr0020:
               _endCaps = [null,null];
               if(!(_loc3_ && Boolean(this)))
               {
                  _labels = {};
                  if(_loc2_)
                  {
                     §§goto(addr0044);
                  }
                  §§goto(addr006b);
               }
               addr0044:
               this.autoRemoveChildren = Boolean(this.vars.autoRemoveChildren == true);
               if(!_loc3_)
               {
                  addr006b:
                  _hasUpdate = Boolean(typeof this.vars.onUpdate == "function");
                  if(_loc2_)
                  {
                     if(this.vars.tweens is Array)
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.insertMultiple(this.vars.tweens,0,this.vars.align != null ? this.vars.align : "normal",this.vars.stagger ? Number(this.vars.stagger) : 0);
                        }
                     }
                  }
               }
               §§goto(addr00fc);
            }
            addr00fc:
            return;
         }
         §§goto(addr0020);
      }
      
      public function set timeScale(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc4_)
            {
               if(§§pop() == 0)
               {
                  if(_loc4_ || _loc2_)
                  {
                     addr0033:
                     §§push(0.0001);
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        §§push(§§pop());
                        if(_loc4_)
                        {
                           param1 = §§pop();
                           if(_loc4_ || Boolean(this))
                           {
                              addr0058:
                              §§push(Boolean(this.cachedPauseTime));
                              if(!_loc3_)
                              {
                                 var _temp_5:* = §§pop();
                                 §§push(_temp_5);
                                 if(!_temp_5)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§pop();
                                       if(!_loc3_)
                                       {
                                          addr0084:
                                          addr0072:
                                          if(this.cachedPauseTime == 0)
                                          {
                                             addr0088:
                                             §§push(this.cachedPauseTime);
                                             if(_loc3_ && _loc2_)
                                             {
                                             }
                                             addr00ac:
                                             §§push(§§pop());
                                          }
                                          else
                                          {
                                             §§push(this.timeline.cachedTotalTime);
                                             if(_loc4_)
                                             {
                                                §§goto(addr00ac);
                                             }
                                          }
                                          addr00ad:
                                          var _loc2_:* = §§pop();
                                          if(_loc4_)
                                          {
                                             §§push(this);
                                             §§push(_loc2_);
                                             if(_loc4_ || Boolean(param1))
                                             {
                                                §§push(_loc2_);
                                                if(_loc4_ || _loc3_)
                                                {
                                                   addr00f8:
                                                   §§push(§§pop() - this.cachedStartTime);
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§pop() * this.cachedTimeScale);
                                                      if(_loc4_)
                                                      {
                                                         addr00f5:
                                                         §§push(§§pop() / param1);
                                                      }
                                                   }
                                                   §§pop().cachedStartTime = §§pop() - §§pop();
                                                   if(!_loc3_)
                                                   {
                                                      this.cachedTimeScale = param1;
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         addr0113:
                                                         setDirtyCache(false);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr0113);
                                                }
                                                §§goto(addr00f5);
                                             }
                                             §§goto(addr00f8);
                                          }
                                          §§goto(addr0113);
                                       }
                                       §§goto(addr0088);
                                    }
                                 }
                              }
                              §§goto(addr0084);
                           }
                           §§goto(addr0072);
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr00ac);
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0058);
            }
            §§goto(addr00ac);
         }
         §§goto(addr0033);
      }
      
      public function stop() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.paused = true;
         }
      }
      
      override public function renderTime(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc8_:TweenCore = null;
         var _loc9_:* = false;
         var _loc10_:* = false;
         var _loc11_:TweenCore = null;
         var _loc12_:* = NaN;
         if(!(_loc15_ && Boolean(param1)))
         {
            if(this.gc)
            {
               if(!(_loc15_ && param2))
               {
                  addr0050:
                  this.setEnabled(true,false);
                  if(!_loc16_)
                  {
                     addr008e:
                     addr0093:
                     if(!this.cachedPaused)
                     {
                        if(_loc16_ || param2)
                        {
                           addr00a5:
                           this.active = true;
                           if(!_loc15_)
                           {
                              addr00b0:
                              if(this.cacheIsDirty)
                              {
                                 addr00b8:
                                 §§push(this.totalDuration);
                                 if(_loc16_)
                                 {
                                    §§push(§§pop());
                                    if(_loc16_)
                                    {
                                       addr00d8:
                                       §§push(§§pop());
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(this.cachedTotalDuration);
                                 if(_loc16_)
                                 {
                                    §§goto(addr00d8);
                                 }
                              }
                              var _loc4_:* = §§pop();
                              var _loc5_:Number = this.cachedTime;
                              var _loc6_:Number = this.cachedStartTime;
                              var _loc7_:Number = this.cachedTimeScale;
                              var _loc13_:Boolean = this.cachedPaused;
                              if(!_loc15_)
                              {
                                 §§push(param1);
                                 if(!_loc15_)
                                 {
                                    if(§§pop() >= _loc4_)
                                    {
                                       if(!(_loc15_ && param2))
                                       {
                                          §§push(_rawPrevTime <= _loc4_);
                                          if(_loc16_ || param2)
                                          {
                                             var _temp_7:* = §§pop();
                                             §§push(_temp_7);
                                             §§push(_temp_7);
                                             if(_loc16_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc16_)
                                                   {
                                                      §§pop();
                                                      if(_loc16_ || Boolean(this))
                                                      {
                                                         §§push(_rawPrevTime == param1);
                                                         if(!_loc15_)
                                                         {
                                                            §§push(!§§pop());
                                                            if(!(_loc15_ && param2))
                                                            {
                                                               addr0166:
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc15_ && Boolean(param1)))
                                                                  {
                                                                     this.cachedTotalTime = this.cachedTime = _loc4_;
                                                                     if(_loc16_)
                                                                     {
                                                                        forceChildrenToEnd(_loc4_,param2);
                                                                        if(!_loc15_)
                                                                        {
                                                                           §§push(this.hasPausedChild());
                                                                           if(!_loc15_)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              if(!_loc15_)
                                                                              {
                                                                                 var _temp_12:* = §§pop();
                                                                                 §§push(_temp_12);
                                                                                 §§push(_temp_12);
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc16_ || Boolean(this))
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc16_ || Boolean(this))
                                                                                          {
                                                                                             §§push(!this.cachedReversed);
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                addr01e4:
                                                                                                §§push(§§pop());
                                                                                                if(!(_loc15_ && Boolean(this)))
                                                                                                {
                                                                                                   _loc9_ = §§pop();
                                                                                                   if(!(_loc15_ && Boolean(this)))
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         _loc10_ = §§pop();
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            §§push(this.cachedDuration == 0);
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               var _temp_17:* = §§pop();
                                                                                                               §§push(_temp_17);
                                                                                                               §§push(_temp_17);
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           §§push(_loc9_);
                                                                                                                           if(_loc16_ || Boolean(this))
                                                                                                                           {
                                                                                                                              addr0247:
                                                                                                                              §§push(§§pop());
                                                                                                                              if(_loc16_ || Boolean(param1))
                                                                                                                              {
                                                                                                                                 addr0256:
                                                                                                                                 var _temp_20:* = §§pop();
                                                                                                                                 §§push(_temp_20);
                                                                                                                                 §§push(_temp_20);
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc16_)
                                                                                                                                       {
                                                                                                                                          addr0267:
                                                                                                                                          §§pop();
                                                                                                                                          if(!_loc15_)
                                                                                                                                          {
                                                                                                                                             §§push(param1);
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                addr0275:
                                                                                                                                                §§push(0);
                                                                                                                                                if(_loc16_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                   if(!_loc15_)
                                                                                                                                                   {
                                                                                                                                                      var _temp_21:* = §§pop();
                                                                                                                                                      §§push(_temp_21);
                                                                                                                                                      §§push(_temp_21);
                                                                                                                                                      if(!_loc15_)
                                                                                                                                                      {
                                                                                                                                                         addr028b:
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(_loc16_ || Boolean(this))
                                                                                                                                                            {
                                                                                                                                                               addr029d:
                                                                                                                                                               §§pop();
                                                                                                                                                               if(_loc16_ || param3)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_rawPrevTime < 0);
                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     addr02b8:
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           addr02c2:
                                                                                                                                                                           §§push(true);
                                                                                                                                                                           if(!_loc15_)
                                                                                                                                                                           {
                                                                                                                                                                              param3 = §§pop();
                                                                                                                                                                              if(_loc15_ && Boolean(this))
                                                                                                                                                                              {
                                                                                                                                                                                 addr0356:
                                                                                                                                                                                 §§push(_rawPrevTime >= 0);
                                                                                                                                                                                 if(_loc16_ || Boolean(param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr036a:
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc16_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr0374:
                                                                                                                                                                                          §§push(true);
                                                                                                                                                                                          if(!(_loc15_ && Boolean(param1)))
                                                                                                                                                                                          {
                                                                                                                                                                                             param3 = §§pop();
                                                                                                                                                                                             if(!_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr038a:
                                                                                                                                                                                                §§push(true);
                                                                                                                                                                                                if(_loc16_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc9_ = §§pop();
                                                                                                                                                                                                   if(!_loc15_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr041e:
                                                                                                                                                                                                      §§push(_rawPrevTime >= 0);
                                                                                                                                                                                                      if(_loc16_ || param3)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         var _temp_28:* = §§pop();
                                                                                                                                                                                                         §§push(_temp_28);
                                                                                                                                                                                                         §§push(_temp_28);
                                                                                                                                                                                                         if(_loc16_ || Boolean(this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc15_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr0453:
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                  if(!(_loc15_ && Boolean(param1)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_rawPrevTime == param1);
                                                                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                                                                        if(!(_loc15_ && Boolean(param1)))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr047c:
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc15_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr048e:
                                                                                                                                                                                                                                 this.cachedTotalTime = 0;
                                                                                                                                                                                                                                 if(!_loc15_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr049a:
                                                                                                                                                                                                                                    this.cachedTime = 0;
                                                                                                                                                                                                                                    if(_loc16_ || param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       forceChildrenToBeginning(0,param2);
                                                                                                                                                                                                                                       if(_loc16_ || param3)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr04c6:
                                                                                                                                                                                                                                          §§push(true);
                                                                                                                                                                                                                                          if(!(_loc15_ && param2))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr04d5:
                                                                                                                                                                                                                                             _loc10_ = §§pop();
                                                                                                                                                                                                                                             if(!_loc15_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr04dd:
                                                                                                                                                                                                                                                if(this.cachedReversed)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc16_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(true);
                                                                                                                                                                                                                                                      if(_loc16_ || param3)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc9_ = §§pop();
                                                                                                                                                                                                                                                         if(!_loc15_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr0524:
                                                                                                                                                                                                                                                            _rawPrevTime = param1;
                                                                                                                                                                                                                                                            if(_loc16_ || param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr0539:
                                                                                                                                                                                                                                                               §§push(this.cachedTime == _loc5_);
                                                                                                                                                                                                                                                               if(!(_loc15_ && param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr054e:
                                                                                                                                                                                                                                                                  var _temp_40:* = §§pop();
                                                                                                                                                                                                                                                                  §§push(_temp_40);
                                                                                                                                                                                                                                                                  §§push(_temp_40);
                                                                                                                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc16_ || param3)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr0567:
                                                                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                                                                           if(!_loc15_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr056e:
                                                                                                                                                                                                                                                                              §§push(param3);
                                                                                                                                                                                                                                                                              if(!(_loc15_ && Boolean(this)))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr057d:
                                                                                                                                                                                                                                                                                 §§push(!§§pop());
                                                                                                                                                                                                                                                                                 if(!_loc15_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr0584:
                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc16_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr058e);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr0595:
                                                                                                                                                                                                                                                                                    if(!this.initted)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc15_ && param2))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr05ab:
                                                                                                                                                                                                                                                                                          this.initted = true;
                                                                                                                                                                                                                                                                                          if(!(_loc15_ && param3))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr05be:
                                                                                                                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                                                                                                                             if(_loc16_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr05c6:
                                                                                                                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                                                                                                                if(_loc16_ || Boolean(this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                                                                   if(!_loc15_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr05dd:
                                                                                                                                                                                                                                                                                                      var _temp_46:* = §§pop();
                                                                                                                                                                                                                                                                                                      §§push(_temp_46);
                                                                                                                                                                                                                                                                                                      if(_temp_46)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                                                                         if(!(_loc15_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr05fb:
                                                                                                                                                                                                                                                                                                            addr05f2:
                                                                                                                                                                                                                                                                                                            §§push(this.vars.onStart);
                                                                                                                                                                                                                                                                                                            if(_loc16_ || Boolean(param1))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr060b:
                                                                                                                                                                                                                                                                                                               var _temp_49:* = §§pop();
                                                                                                                                                                                                                                                                                                               §§push(_temp_49);
                                                                                                                                                                                                                                                                                                               §§push(_temp_49);
                                                                                                                                                                                                                                                                                                               if(!_loc15_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr0612:
                                                                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!(_loc15_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr0624:
                                                                                                                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                                                                                                                        if(_loc16_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr062b:
                                                                                                                                                                                                                                                                                                                           §§push(this.cachedTime == 0);
                                                                                                                                                                                                                                                                                                                           if(_loc16_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr0638:
                                                                                                                                                                                                                                                                                                                              §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                              if(_loc16_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr063f:
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                 if(_loc16_ || param2)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr064f:
                                                                                                                                                                                                                                                                                                                                    var _temp_52:* = §§pop();
                                                                                                                                                                                                                                                                                                                                    addr0650:
                                                                                                                                                                                                                                                                                                                                    §§push(_temp_52);
                                                                                                                                                                                                                                                                                                                                    if(_temp_52)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc16_ || param2)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr0670:
                                                                                                                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                                                                                                                          if(!(_loc15_ && param3))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr067f:
                                                                                                                                                                                                                                                                                                                                             §§push(param2);
                                                                                                                                                                                                                                                                                                                                             if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr0686:
                                                                                                                                                                                                                                                                                                                                                §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                if(!(_loc15_ && param3))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr0695:
                                                                                                                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc16_ || param3)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr06a7:
                                                                                                                                                                                                                                                                                                                                                         this.vars.onStart.apply(null,this.vars.onStartParams);
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc15_ && param2))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr06cb:
                                                                                                                                                                                                                                                                                                                                                            addr06cd:
                                                                                                                                                                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc15_ && Boolean(param1))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr06f0:
                                                                                                                                                                                                                                                                                                                                                                  _loc8_ = _firstChild;
                                                                                                                                                                                                                                                                                                                                                                  for(; _loc8_; _loc8_ = _loc11_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     _loc11_ = _loc8_.nextNode;
                                                                                                                                                                                                                                                                                                                                                                     if(_loc15_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§push(this.cachedPaused);
                                                                                                                                                                                                                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        var _temp_59:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                        §§push(_temp_59);
                                                                                                                                                                                                                                                                                                                                                                        §§push(_temp_59);
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc15_ && param3))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc16_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc15_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr0757:
                                                                                                                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc16_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             addr085e:
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                                             §§push(this.cachedTime - _loc8_.cachedStartTime);
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() * _loc8_.cachedTimeScale);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§pop().renderTime(§§pop(),param2,false);
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc16_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc8_.active);
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr0783:
                                                                                                                                                                                                                                                                                                                                                                                                   var _temp_65:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_temp_65);
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_temp_65);
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr078a:
                                                                                                                                                                                                                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc15_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc16_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc8_.cachedPaused);
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     addr07bd:
                                                                                                                                                                                                                                                                                                                                                                                                                     var _temp_68:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_temp_68);
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_temp_68);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr07c4:
                                                                                                                                                                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc16_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              addr07d6:
                                                                                                                                                                                                                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc16_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc8_.cachedStartTime);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() <= this.cachedTime);
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr07fb:
                                                                                                                                                                                                                                                                                                                                                                                                                                       var _temp_71:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr07fc:
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_temp_71);
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_temp_71)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc15_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr080e:
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc16_ || param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr081d:
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc8_.gc);
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc16_ || Boolean(param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr0830:
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr0837:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr0841:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc8_.cachedReversed);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr084c:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc16_ || param3))
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr085e);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr0893:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc8_.cacheIsDirty)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr089d:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc8_.totalDuration);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc15_ && param2)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr08ce:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr08de:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc15_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr08dd:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        _loc12_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc15_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr08ee:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(this.cachedTime - _loc8_.cachedStartTime);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc15_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * _loc8_.cachedTimeScale);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§pop().renderTime(§§pop(),param2,false);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr08dd);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr08ee);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc8_.cachedTotalDuration);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc16_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr08ce);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr08de);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr0893);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr089d);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr0893);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr084c);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr0830);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr0837);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr080e);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr08dd);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr085e);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr084c);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr07fb);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr07fc);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr084c);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr07bd);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr0841);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr0837);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr07c4);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr07d6);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr0783);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr08ee);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr07fb);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr0830);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr081d);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr07fb);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr0757);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr078a);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr0783);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr0b8c:
                                                                                                                                                                                                                                                                                                                                                               §§push(_hasUpdate);
                                                                                                                                                                                                                                                                                                                                                               if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  var _temp_81:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                  §§push(_temp_81);
                                                                                                                                                                                                                                                                                                                                                                  §§push(_temp_81);
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc16_ || Boolean(param1))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                                                                                                                                                                           if(_loc16_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(param2);
                                                                                                                                                                                                                                                                                                                                                                              if(_loc16_ || Boolean(param1))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr0bd4:
                                                                                                                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc16_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          this.vars.onUpdate.apply(null,this.vars.onUpdateParams);
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr0c02:
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc15_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr0c19:
                                                                                                                                                                                                                                                                                                                                                                                                   var _temp_87:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_temp_87);
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_temp_87);
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc16_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc15_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() == this.cachedStartTime);
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc16_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     addr0c5c:
                                                                                                                                                                                                                                                                                                                                                                                                                     var _temp_91:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_temp_91);
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_temp_91);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr0c63:
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc15_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc16_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr0c84:
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() == this.cachedTimeScale);
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc15_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr0ca6:
                                                                                                                                                                                                                                                                                                                                                                                                                                          var _temp_95:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(_temp_95);
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(_temp_95);
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc15_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr0cbf:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc15_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr0cd0);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr0d02);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr0ce8);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr0d09);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr0ce9);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr0d09);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr0ce8);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr0cd0:
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr0cce);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              addr0cce:
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc4_ >= this.totalDuration);
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr0ce8:
                                                                                                                                                                                                                                                                                                                                                                                                                                 var _temp_98:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr0ce9:
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_temp_98);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_temp_98)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc15_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr0cfb);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr0d09);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              addr0cfb:
                                                                                                                                                                                                                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr0d09:
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr0d02:
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(this.cachedTime == 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       complete(true,param2);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr0d1c);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr0cbf);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr0ca6);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr0ce9);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr0cbf);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr0cd0);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr0d1c);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr0ca6);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr0ce9);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr0cbf);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr0c19);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr0c84);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr0d1c:
                                                                                                                                                                                                                                                                                                                                                                                       return;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr0c02);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr0cbf);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr0ca6);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr0c02);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr0c5c);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr0bd4);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr0c63);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr0d09);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr06ec:
                                                                                                                                                                                                                                                                                                                                                               addr06ea:
                                                                                                                                                                                                                                                                                                                                                               if(this.cachedTime - _loc5_ > 0)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr06f0);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  _loc8_ = _lastChild;
                                                                                                                                                                                                                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     for(; _loc8_; _loc8_ = _loc11_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        _loc11_ = _loc8_.prevNode;
                                                                                                                                                                                                                                                                                                                                                                        if(_loc16_ || param3)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(this.cachedPaused);
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              var _temp_101:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                              §§push(_temp_101);
                                                                                                                                                                                                                                                                                                                                                                              §§push(_temp_101);
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc15_ && param2))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc15_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc16_ || Boolean(param1))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc15_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                addr09ab:
                                                                                                                                                                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc16_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   addr0b07:
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc8_.totalDuration);
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc16_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         addr0b30:
                                                                                                                                                                                                                                                                                                                                                                                                         addr0b40:
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc16_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr0b3f:
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         _loc12_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc16_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr0b50:
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc16_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(this.cachedTime - _loc8_.cachedStartTime);
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * _loc8_.cachedTimeScale);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§pop().renderTime(§§pop(),param2,false);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc8_.active);
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc16_ || Boolean(param1))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr09d8:
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         addr09df:
                                                                                                                                                                                                                                                                                                                                                                                                         var _temp_112:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_temp_112);
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_temp_112);
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc16_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc8_.cachedPaused);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc15_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           addr0a19:
                                                                                                                                                                                                                                                                                                                                                                                                                           var _temp_115:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_temp_115);
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_temp_115);
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc15_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc16_ || Boolean(param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc8_.cachedStartTime);
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() <= _loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr0a55:
                                                                                                                                                                                                                                                                                                                                                                                                                                             var _temp_118:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr0a56:
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(_temp_118);
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_temp_118)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr0a60:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc15_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc8_.gc);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc16_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr0a82:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr0a89:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc16_ || Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr0a9b:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc8_.cachedReversed);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc16_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr0aae:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc15_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr0ac0:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(this.cachedTime - _loc8_.cachedStartTime);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * _loc8_.cachedTimeScale);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§pop().renderTime(§§pop(),param2,false);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc15_ && Boolean(this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr0b07);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr0af5:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc8_.cacheIsDirty)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc16_ || Boolean(param1)))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr0b07);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc8_.cachedTotalDuration);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr0b30);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr0b3f);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr0af5);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr0aae);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr0a89);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr0b50);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr0af5);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr0a89);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr0b40);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr0ac0);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr0a82);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr0a55);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr0a56);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr0a89);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr0a55);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr0b07);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr0a60);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr0a89);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr0a56);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr0a60);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr0aae);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr0b3f);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr09d8);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr09df);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr0a9b);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr0a19);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr09ab);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr0a56);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr0a55);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr0a9b);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr0b8c);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr06f0);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr06cb);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr06cd);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr0695);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr06cb);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr0695);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr0686);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr0695);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr067f);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr063f);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr064f);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr0650);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr064f);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr0b8c);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr05fb);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr0670);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr06ec);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr06ea);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr0b8c);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr067f);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr05be);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr06cd);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr064f);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr05ab);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr05dd);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr0584);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr0650);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr0584);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr056e);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr05be);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr054e);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr056e);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr0524);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr057d);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr06cb);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr0595);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr05f2);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr058e);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0524);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr054e);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr04d5);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr048e);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr05dd);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr047c);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0612);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr057d);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr04dd);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr057d);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr056e);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0584);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr048e);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr041e);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0686);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0524);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr03c3:
                                                                                                                                                                              var _temp_126:* = §§pop();
                                                                                                                                                                              §§push(_temp_126);
                                                                                                                                                                              §§push(_temp_126);
                                                                                                                                                                              if(!_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr03ca:
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc16_ || Boolean(param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr03dc:
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       if(!(_loc15_ && Boolean(param1)))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(!this.initted);
                                                                                                                                                                                          if(!_loc15_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr03f6:
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc16_ || param3)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(true);
                                                                                                                                                                                                   if(!_loc15_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      param3 = §§pop();
                                                                                                                                                                                                      if(!(_loc15_ && Boolean(param1)))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr041e);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr04dd);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr060b);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr058e:
                                                                                                                                                                                                return;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr041e);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0638);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0539);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr047c);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr03f6);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0612);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr04dd);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0524);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0567);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr04c6);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0453);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr02b8);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0612);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr03dc);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr03bc:
                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr03c3);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr057d);
                                                                                                                                             }
                                                                                                                                             §§goto(addr06ea);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0356);
                                                                                                                                       }
                                                                                                                                       §§goto(addr03c3);
                                                                                                                                    }
                                                                                                                                    §§goto(addr02b8);
                                                                                                                                 }
                                                                                                                                 §§goto(addr028b);
                                                                                                                              }
                                                                                                                              §§goto(addr0624);
                                                                                                                           }
                                                                                                                           §§goto(addr06cd);
                                                                                                                        }
                                                                                                                        §§goto(addr067f);
                                                                                                                     }
                                                                                                                     §§goto(addr0453);
                                                                                                                  }
                                                                                                                  §§goto(addr0256);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr0345:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        addr034f:
                                                                                                                        §§pop();
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           §§goto(addr0356);
                                                                                                                        }
                                                                                                                        §§goto(addr0374);
                                                                                                                     }
                                                                                                                     §§goto(addr054e);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr036a);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr033e:
                                                                                                               var _temp_131:* = §§pop();
                                                                                                               §§push(_temp_131);
                                                                                                               §§push(_temp_131);
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  §§goto(addr0345);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr0650);
                                                                                                         }
                                                                                                         §§goto(addr038a);
                                                                                                      }
                                                                                                      §§goto(addr0256);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr030d:
                                                                                                      §§push(param1);
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            if(§§pop() < §§pop())
                                                                                                            {
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  this.active = false;
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     §§push(this.cachedDuration == 0);
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        §§goto(addr033e);
                                                                                                                     }
                                                                                                                     §§goto(addr0584);
                                                                                                                  }
                                                                                                                  §§goto(addr062b);
                                                                                                               }
                                                                                                               §§goto(addr0595);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(param1);
                                                                                                               if(!(_loc15_ && Boolean(this)))
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  if(_loc16_ || Boolean(param1))
                                                                                                                  {
                                                                                                                     §§goto(addr03bc);
                                                                                                                  }
                                                                                                                  §§goto(addr06ec);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr06ea);
                                                                                                         }
                                                                                                         §§goto(addr06ec);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr05c6);
                                                                                                }
                                                                                                §§goto(addr034f);
                                                                                             }
                                                                                             §§goto(addr04d5);
                                                                                          }
                                                                                          §§goto(addr06cb);
                                                                                       }
                                                                                       §§goto(addr05dd);
                                                                                    }
                                                                                    §§goto(addr01e4);
                                                                                 }
                                                                                 §§goto(addr028b);
                                                                              }
                                                                              §§goto(addr0695);
                                                                           }
                                                                           §§goto(addr0247);
                                                                        }
                                                                        §§goto(addr06cb);
                                                                     }
                                                                     §§goto(addr0539);
                                                                  }
                                                                  §§goto(addr05ab);
                                                               }
                                                               §§goto(addr0524);
                                                            }
                                                            §§goto(addr029d);
                                                         }
                                                         §§goto(addr0267);
                                                      }
                                                      §§goto(addr049a);
                                                   }
                                                   §§goto(addr036a);
                                                }
                                                §§goto(addr0166);
                                             }
                                             §§goto(addr03ca);
                                          }
                                          §§goto(addr047c);
                                       }
                                       §§goto(addr02c2);
                                    }
                                    else
                                    {
                                       §§push(param1);
                                       if(!(_loc15_ && Boolean(param1)))
                                       {
                                          §§push(0);
                                          if(_loc16_ || Boolean(this))
                                          {
                                             if(§§pop() <= §§pop())
                                             {
                                                if(!(_loc15_ && param2))
                                                {
                                                   §§goto(addr030d);
                                                }
                                                §§goto(addr0b8c);
                                             }
                                             else
                                             {
                                                this.cachedTotalTime = this.cachedTime = param1;
                                                if(!(_loc15_ && Boolean(param1)))
                                                {
                                                   §§goto(addr0524);
                                                }
                                             }
                                             §§goto(addr06a7);
                                          }
                                          §§goto(addr03bc);
                                       }
                                    }
                                    §§goto(addr06ea);
                                 }
                                 §§goto(addr0275);
                              }
                              §§goto(addr0595);
                           }
                           §§goto(addr00b8);
                        }
                     }
                  }
                  §§goto(addr00b0);
               }
               §§goto(addr00a5);
            }
            else
            {
               §§push(!this.active);
               if(!_loc15_)
               {
                  var _temp_139:* = §§pop();
                  §§push(_temp_139);
                  if(_temp_139)
                  {
                     if(_loc16_ || param3)
                     {
                        §§pop();
                        if(!(_loc15_ && param2))
                        {
                           §§goto(addr008e);
                        }
                        §§goto(addr00a5);
                     }
                  }
               }
            }
            §§goto(addr0093);
         }
         §§goto(addr0050);
      }
      
      override public function remove(param1:TweenCore, param2:Boolean = false) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(_loc5_ || param2)
         {
            §§push(param1.cachedOrphan);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  addr0047:
                  addr0046:
                  if(!param2)
                  {
                     if(_loc5_ || Boolean(param1))
                     {
                        param1.setEnabled(false,true);
                        if(_loc5_)
                        {
                           var _loc3_:TweenCore = this.gc ? _endCaps[0] : _firstChild;
                           addr0066:
                           if(!_loc6_)
                           {
                              var _loc4_:TweenCore = this.gc ? _endCaps[1] : _lastChild;
                              if(_loc5_ || Boolean(_loc3_))
                              {
                                 §§push(param1.nextNode);
                                 if(_loc5_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc6_ && Boolean(param1)))
                                       {
                                          §§push(param1.nextNode);
                                          if(!_loc6_)
                                          {
                                             §§pop().prevNode = param1.prevNode;
                                             if(!_loc6_)
                                             {
                                                addr0123:
                                                §§push(param1.prevNode);
                                                if(!_loc6_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc5_ || Boolean(this))
                                                      {
                                                         addr0143:
                                                         param1.prevNode.nextNode = param1.nextNode;
                                                         if(_loc5_ || Boolean(this))
                                                         {
                                                            addr0178:
                                                            if(this.gc)
                                                            {
                                                               if(_loc5_ || Boolean(this))
                                                               {
                                                                  addr018e:
                                                                  §§push(_endCaps);
                                                                  if(!(_loc6_ && Boolean(param1)))
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§pop()[§§pop()] = _loc3_;
                                                                        if(_loc5_)
                                                                        {
                                                                           §§goto(addr01b6);
                                                                        }
                                                                        §§goto(addr01fd);
                                                                     }
                                                                     addr01b6:
                                                                     _endCaps[1] = _loc4_;
                                                                     §§goto(addr01b4);
                                                                  }
                                                                  addr01b4:
                                                                  §§goto(addr01b1);
                                                               }
                                                               addr01b1:
                                                               if(_loc5_)
                                                               {
                                                                  addr01fd:
                                                                  param1.cachedOrphan = true;
                                                                  if(_loc5_)
                                                                  {
                                                                     addr0208:
                                                                     setDirtyCache(true);
                                                                  }
                                                               }
                                                               §§goto(addr0210);
                                                            }
                                                            else
                                                            {
                                                               _firstChild = _loc3_;
                                                               if(_loc5_ || Boolean(param1))
                                                               {
                                                                  §§goto(addr01e7);
                                                               }
                                                            }
                                                            §§goto(addr01fd);
                                                         }
                                                         §§goto(addr0208);
                                                      }
                                                      §§goto(addr018e);
                                                   }
                                                   else if(_loc3_ == param1)
                                                   {
                                                      if(_loc5_ || Boolean(param1))
                                                      {
                                                         addr0174:
                                                         _loc3_ = param1.nextNode;
                                                         addr0170:
                                                         §§goto(addr0178);
                                                      }
                                                      addr01e7:
                                                      _lastChild = _loc4_;
                                                      if(_loc5_ || Boolean(param1))
                                                      {
                                                         §§goto(addr01fd);
                                                      }
                                                      addr0210:
                                                      return;
                                                   }
                                                   §§goto(addr0178);
                                                }
                                                §§goto(addr0143);
                                             }
                                             §§goto(addr018e);
                                          }
                                          §§goto(addr0174);
                                       }
                                       §§goto(addr0208);
                                    }
                                    else if(_loc4_ == param1)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(param1.prevNode);
                                          if(!(_loc6_ && Boolean(_loc3_)))
                                          {
                                             _loc4_ = §§pop();
                                             §§goto(addr0123);
                                          }
                                          §§goto(addr0143);
                                       }
                                       §§goto(addr0170);
                                    }
                                    §§goto(addr0123);
                                 }
                                 §§goto(addr0174);
                              }
                              §§goto(addr01fd);
                           }
                           §§goto(addr0095);
                        }
                     }
                     §§goto(addr006e);
                  }
               }
               §§goto(addr0066);
            }
            §§goto(addr0047);
         }
         §§goto(addr0046);
      }
      
      public function get currentProgress() : Number
      {
         return this.cachedTime / this.duration;
      }
      
      override public function get totalDuration() : Number
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:TweenCore = null;
         var _loc4_:* = NaN;
         var _loc5_:TweenCore = null;
         if(!_loc8_)
         {
            if(this.cacheIsDirty)
            {
               if(!(_loc8_ && Boolean(_loc2_)))
               {
                  addr0043:
                  _loc1_ = 0;
                  if(!_loc8_)
                  {
                     _loc3_ = this.gc ? _endCaps[0] : _firstChild;
                     if(_loc7_)
                     {
                        §§push(-Infinity);
                        if(_loc7_)
                        {
                           §§push(§§pop());
                        }
                        _loc4_ = §§pop();
                     }
                     for(; _loc3_; _loc3_ = _loc5_)
                     {
                        _loc5_ = _loc3_.nextNode;
                        if(!_loc8_)
                        {
                           §§push(_loc3_.cachedStartTime);
                           if(!(_loc8_ && Boolean(this)))
                           {
                              §§push(_loc4_);
                              if(_loc7_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(_loc7_ || Boolean(this))
                                    {
                                       §§push(this);
                                       §§push(_loc3_);
                                       §§push(_loc3_.cachedStartTime);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() - _loc3_.delay);
                                       }
                                       §§pop().insert(§§pop(),§§pop());
                                       if(_loc7_)
                                       {
                                          §§push(_loc3_.prevNode.cachedStartTime);
                                          if(!(_loc8_ && Boolean(this)))
                                          {
                                             addr00f2:
                                             §§push(§§pop());
                                             if(_loc7_ || Boolean(_loc1_))
                                             {
                                                _loc4_ = §§pop();
                                                if(!_loc8_)
                                                {
                                                   addr012e:
                                                   §§push(_loc3_.cachedStartTime);
                                                   if(_loc7_ || Boolean(_loc3_))
                                                   {
                                                      addr014d:
                                                      if(§§pop() < 0)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            addr0159:
                                                            §§push(_loc1_);
                                                            if(_loc7_)
                                                            {
                                                               §§push(_loc3_.cachedStartTime);
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!(_loc8_ && Boolean(this)))
                                                                  {
                                                                     addr0179:
                                                                     §§push(§§pop());
                                                                     if(_loc7_)
                                                                     {
                                                                        addr0180:
                                                                        _loc1_ = §§pop();
                                                                        if(!(_loc8_ && Boolean(this)))
                                                                        {
                                                                           addr018f:
                                                                           §§push(this);
                                                                           §§push(_loc3_.cachedStartTime);
                                                                           if(!(_loc8_ && Boolean(this)))
                                                                           {
                                                                              §§push(-§§pop());
                                                                           }
                                                                           §§pop().shiftChildren(§§pop(),false,-9999999999);
                                                                           if(!(_loc7_ || Boolean(_loc1_)))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr01b8:
                                                                           §§push(_loc3_.cachedStartTime);
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(_loc3_.totalDuration);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§push(§§pop() / _loc3_.cachedTimeScale);
                                                                                 if(!(_loc8_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    addr01df:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       addr01e6:
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc8_ && Boolean(this)))
                                                                                       {
                                                                                          addr01f5:
                                                                                          _loc2_ = §§pop();
                                                                                          if(!(_loc8_ && Boolean(this)))
                                                                                          {
                                                                                             addr0204:
                                                                                             §§push(_loc2_);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr020b:
                                                                                                addr020c:
                                                                                                if(§§pop() <= _loc1_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(_loc2_);
                                                                                                if(_loc7_ || Boolean(this))
                                                                                                {
                                                                                                   addr0225:
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                             }
                                                                                             addr0226:
                                                                                             _loc1_ = §§pop();
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr020b);
                                                                                    }
                                                                                    §§goto(addr01f5);
                                                                                 }
                                                                                 §§goto(addr020c);
                                                                              }
                                                                              §§goto(addr01df);
                                                                           }
                                                                           §§goto(addr01f5);
                                                                        }
                                                                        §§goto(addr0204);
                                                                     }
                                                                     §§goto(addr01e6);
                                                                  }
                                                                  §§goto(addr0180);
                                                               }
                                                               §§goto(addr01df);
                                                            }
                                                            §§goto(addr0225);
                                                         }
                                                         §§goto(addr018f);
                                                      }
                                                      §§goto(addr01b8);
                                                   }
                                                   §§goto(addr0225);
                                                }
                                                §§goto(addr018f);
                                             }
                                             §§goto(addr014d);
                                          }
                                          §§goto(addr0226);
                                       }
                                    }
                                    §§goto(addr012e);
                                 }
                                 else
                                 {
                                    §§push(_loc3_.cachedStartTime);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop());
                                       if(!_loc8_)
                                       {
                                          _loc4_ = §§pop();
                                          if(!(_loc8_ && Boolean(_loc3_)))
                                          {
                                             §§goto(addr012e);
                                          }
                                          §§goto(addr0159);
                                       }
                                       §§goto(addr0179);
                                    }
                                 }
                                 §§goto(addr014d);
                              }
                              §§goto(addr020c);
                           }
                           §§goto(addr00f2);
                        }
                        §§goto(addr012e);
                     }
                     if(!(_loc8_ && Boolean(_loc1_)))
                     {
                        this.cachedDuration = this.cachedTotalDuration = _loc1_;
                        if(!(_loc8_ && Boolean(_loc2_)))
                        {
                           this.cacheIsDirty = false;
                        }
                     }
                     §§goto(addr0271);
                  }
               }
               §§goto(addr0055);
            }
            addr0271:
            return this.cachedTotalDuration;
         }
         §§goto(addr0043);
      }
      
      public function gotoAndPlay(param1:*, param2:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && param2))
         {
            setTotalTime(parseTimeOrLabel(param1),param2);
            if(!_loc3_)
            {
               addr0036:
               play();
            }
            return;
         }
         §§goto(addr0036);
      }
      
      public function appendMultiple(param1:Array, param2:Number = 0, param3:String = "normal", param4:Number = 0) : Array
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         §§push(§§findproperty(insertMultiple));
         §§push(param1);
         §§push(this.duration);
         if(!(_loc6_ && Boolean(this)))
         {
            §§push(§§pop() + param2);
         }
         return §§pop().insertMultiple(§§pop(),§§pop(),param3,param4);
      }
      
      public function set currentProgress(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§findproperty(setTotalTime));
            §§push(this.duration);
            if(_loc2_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().setTotalTime(§§pop(),false);
         }
      }
      
      public function clear(param1:Array = null) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() == null)
               {
                  §§goto(addr0025);
               }
               §§goto(addr004c);
            }
            §§goto(addr003c);
         }
         addr0025:
         §§push(getChildren(false,true,true));
         if(_loc3_ || _loc3_)
         {
            addr003c:
            param1 = §§pop();
            addr004c:
            §§push(param1);
         }
         var _loc2_:* = int(§§pop().length);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() - 1);
               if(!_loc4_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        addr00a5:
                        _loc2_ = §§pop();
                        addr00a6:
                        §§push(-1);
                     }
                     if(§§pop() <= §§pop())
                     {
                        break;
                     }
                     TweenCore(param1[_loc2_]).setEnabled(false,false);
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr00a5);
               }
            }
            §§goto(addr00a6);
         }
      }
      
      public function prepend(param1:TweenCore, param2:Boolean = false) : TweenCore
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §§push(§§findproperty(shiftChildren));
            §§push(param1.totalDuration);
            if(_loc3_ || _loc3_)
            {
               §§push(param1.cachedTimeScale);
               if(_loc3_ || param2)
               {
                  §§push(§§pop() / §§pop());
                  if(!_loc4_)
                  {
                     addr0060:
                     addr005c:
                     §§push(§§pop() + param1.delay);
                  }
                  §§pop().shiftChildren(§§pop(),param2,0);
                  §§goto(addr0068);
               }
               §§goto(addr0060);
            }
            §§goto(addr005c);
         }
         addr0068:
         return insert(param1,0);
      }
      
      public function removeLabel(param1:String) : Number
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Number = Number(_labels[param1]);
         if(!_loc3_)
         {
            delete _labels[param1];
         }
         return _loc2_;
      }
      
      protected function parseTimeOrLabel(param1:*) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(typeof param1 == "string")
            {
               if(!_loc2_)
               {
                  if(!(param1 in _labels))
                  {
                     if(!_loc2_)
                     {
                        throw new Error("TimelineLite error: the " + param1 + " label was not found.");
                        addr003e:
                     }
                     else
                     {
                        §§goto(addr0078);
                     }
                  }
               }
               return getLabelTime(String(param1));
            }
            addr0078:
            return Number(param1);
         }
         §§goto(addr003e);
      }
      
      public function addLabel(param1:String, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param2)))
         {
            _labels[param1] = param2;
         }
      }
      
      public function hasPausedChild() : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc1_))
         {
            var _loc1_:TweenCore = this.gc ? _endCaps[0] : _firstChild;
            while(true)
            {
               if(_loc1_)
               {
                  §§push(_loc1_.cachedPaused);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(_loc3_)
                     {
                        if(!§§pop())
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr007a:
                              §§pop();
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(_loc1_ is TimelineLite);
                                 if(!_loc2_)
                                 {
                                    var _temp_6:* = §§pop();
                                    addr0093:
                                    §§push(_temp_6);
                                    if(_temp_6)
                                    {
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       addr009c:
                                       §§pop();
                                       if(_loc3_)
                                       {
                                          addr00a2:
                                          §§push((_loc1_ as TimelineLite).hasPausedChild());
                                          if(!(_loc2_ && Boolean(_loc1_)))
                                          {
                                             §§push(§§pop());
                                             if(_loc3_ || _loc2_)
                                             {
                                                addr00d2:
                                                if(!§§pop())
                                                {
                                                   continue;
                                                }
                                                if(!_loc2_)
                                                {
                                                   §§push(true);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   addr00fc:
                                                   return false;
                                                }
                                             }
                                             return §§pop();
                                          }
                                          break;
                                       }
                                       §§goto(addr00fc);
                                    }
                                    §§goto(addr00d2);
                                 }
                                 §§goto(addr009c);
                              }
                              §§goto(addr00a2);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr00d2);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr007a);
               }
               §§goto(addr00fc);
               _loc1_ = _loc1_.nextNode;
            }
            return §§pop();
         }
         §§goto(addr0028);
      }
      
      public function getTweensOf(param1:Object, param2:Boolean = true) : Array
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc5_:* = 0;
         var _loc3_:Array = getChildren(param2,true,false);
         var _loc4_:Array = [];
         var _loc6_:int = int(_loc3_.length);
         var _loc7_:int = 0;
         if(_loc9_ || Boolean(param1))
         {
            _loc5_ = 0;
         }
         loop0:
         do
         {
            §§push(_loc5_);
            loop1:
            while(true)
            {
               §§push(_loc6_);
               while(§§pop() < §§pop())
               {
                  if(TweenLite(_loc3_[_loc5_]).target == param1)
                  {
                     if(!(_loc10_ && Boolean(_loc3_)))
                     {
                        var _loc8_:*;
                        _loc4_[_loc8_ = _loc7_++] = _loc3_[_loc5_];
                        if(_loc10_)
                        {
                           break;
                        }
                     }
                  }
                  §§push(_loc5_);
                  if(!_loc10_)
                  {
                     §§push(1);
                     if(_loc9_)
                     {
                        §§push(int(§§pop() + §§pop()));
                        if(!(_loc10_ && Boolean(param1)))
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                     continue;
                  }
                  continue loop1;
               }
               break;
            }
            break;
         }
         while(_loc5_ = §§pop(), _loc9_ || param2);
         
         return _loc4_;
      }
      
      public function gotoAndStop(param1:*, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || param2)
         {
            setTotalTime(parseTimeOrLabel(param1),param2);
            if(!_loc4_)
            {
               addr0038:
               this.paused = true;
            }
            return;
         }
         §§goto(addr0038);
      }
      
      public function append(param1:TweenCore, param2:Number = 0) : TweenCore
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§§findproperty(insert));
         §§push(param1);
         §§push(this.duration);
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop() + param2);
         }
         return §§pop().insert(§§pop(),§§pop());
      }
      
      override public function get duration() : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = NaN;
         if(_loc3_ || _loc2_)
         {
            if(this.cacheIsDirty)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr0042:
                  §§push(this.totalDuration);
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                  }
                  _loc1_ = §§pop();
               }
            }
            return this.cachedDuration;
         }
         §§goto(addr0042);
      }
      
      public function get useFrames() : Boolean
      {
         var _loc1_:SimpleTimeline = this.timeline;
         while(_loc1_.timeline)
         {
            _loc1_ = _loc1_.timeline;
         }
         return Boolean(_loc1_ == TweenLite.rootFramesTimeline);
      }
      
      public function shiftChildren(param1:Number, param2:Boolean = false, param3:Number = 0) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc5_:String = null;
         if(_loc8_)
         {
            var _loc4_:TweenCore = this.gc ? _endCaps[0] : _firstChild;
            while(true)
            {
               if(!_loc4_)
               {
                  if(_loc8_ || param2)
                  {
                     break;
                  }
               }
               else
               {
                  if(_loc4_.cachedStartTime < param3)
                  {
                     continue;
                  }
                  if(_loc9_ && Boolean(param3))
                  {
                     break;
                  }
                  §§push(_loc4_);
                  §§push(_loc4_.cachedStartTime);
                  if(_loc8_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().cachedStartTime = §§pop();
                  if(!_loc9_)
                  {
                     continue;
                  }
               }
               addr0131:
               return;
               _loc4_ = _loc4_.nextNode;
            }
            if(param2)
            {
               if(!_loc9_)
               {
                  var _loc6_:int = 0;
                  if(_loc8_)
                  {
                     var _loc7_:* = _labels;
                     if(!_loc9_)
                     {
                        for(_loc5_ in _loc7_)
                        {
                           if(!(_loc9_ && param2))
                           {
                              if(_labels[_loc5_] < param3)
                              {
                                 continue;
                              }
                              if(_loc9_ && Boolean(param1))
                              {
                                 continue;
                              }
                           }
                        }
                        addr0123:
                        if(_loc8_)
                        {
                           addr012b:
                           this.setDirtyCache(true);
                        }
                        §§goto(addr0131);
                        addr011a:
                     }
                     while(true)
                     {
                        _labels[_loc5_] += param1;
                        §§goto(addr011a);
                     }
                  }
                  §§goto(addr0123);
               }
            }
            §§goto(addr012b);
         }
         §§goto(addr0027);
      }
      
      public function goto(param1:*, param2:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            setTotalTime(parseTimeOrLabel(param1),param2);
         }
      }
      
      public function killTweensOf(param1:Object, param2:Boolean = true, param3:Object = null) : Boolean
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:TweenLite = null;
         var _loc4_:Array = getTweensOf(param1,param2);
         var _loc5_:* = int(_loc4_.length);
         while(true)
         {
            §§push(_loc5_);
            if(!_loc7_)
            {
               §§push(§§pop() - 1);
               if(!_loc7_)
               {
                  addr00fd:
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(!_loc7_)
                  {
                     §§push(§§pop());
                     if(_loc8_)
                     {
                        _loc5_ = §§pop();
                        addr010d:
                        §§push(-1);
                     }
                  }
                  if(§§pop() <= §§pop())
                  {
                     break;
                  }
                  _loc6_ = _loc4_[_loc5_];
                  if(_loc8_)
                  {
                     if(param3 != null)
                     {
                        if(!_loc8_)
                        {
                           continue;
                        }
                        _loc6_.killVars(param3);
                        if(!_loc7_)
                        {
                           addr005d:
                           §§push(param3 == null);
                           if(!(_loc7_ && Boolean(this)))
                           {
                              var _temp_5:* = §§pop();
                              §§push(_temp_5);
                              §§push(_temp_5);
                              if(!(_loc7_ && param2))
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       addr0093:
                                       §§pop();
                                       if(_loc8_ || Boolean(param1))
                                       {
                                          §§push(_loc6_.cachedPT1 == null);
                                          if(!_loc7_)
                                          {
                                             var _temp_8:* = §§pop();
                                             addr00b0:
                                             §§push(_temp_8);
                                             if(_temp_8)
                                             {
                                                if(_loc8_)
                                                {
                                                   addr00ba:
                                                   §§pop();
                                                   if(_loc7_ && Boolean(param1))
                                                   {
                                                      continue;
                                                   }
                                                   addr00c9:
                                                   §§push(_loc6_.initted);
                                                }
                                             }
                                          }
                                          addr00cf:
                                          if(§§pop())
                                          {
                                             if(_loc8_)
                                             {
                                                _loc6_.setEnabled(false,false);
                                                addr00d9:
                                             }
                                          }
                                       }
                                       continue;
                                    }
                                    §§goto(addr00ba);
                                 }
                                 §§goto(addr00cf);
                              }
                              §§goto(addr00b0);
                           }
                           §§goto(addr0093);
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr005d);
                  }
                  §§goto(addr00d9);
               }
               §§goto(addr010d);
            }
            §§goto(addr00fd);
         }
         return Boolean(_loc4_.length > 0);
      }
      
      override public function set duration(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(this.duration);
            if(_loc2_)
            {
               §§push(0);
               if(!_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§push(!§§pop());
                     if(!_loc3_)
                     {
                        var _temp_3:* = §§pop();
                        §§push(_temp_3);
                        if(_temp_3)
                        {
                           if(_loc2_)
                           {
                              addr005d:
                              §§pop();
                              if(!_loc3_)
                              {
                                 §§goto(addr0079);
                              }
                              §§goto(addr0082);
                           }
                        }
                        addr0079:
                        §§goto(addr0072);
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr005d);
               }
               addr0072:
               §§goto(addr0070);
            }
            addr0070:
            §§push(param1 == 0);
            if(_loc2_)
            {
               addr0078:
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc2_)
               {
                  addr0082:
                  §§push(this);
                  §§push(this.duration);
                  if(_loc2_ || Boolean(this))
                  {
                     §§push(§§pop() / param1);
                  }
                  §§pop().timeScale = §§pop();
               }
            }
            §§goto(addr0099);
         }
         addr0099:
      }
      
      public function insertMultiple(param1:Array, param2:* = 0, param3:String = "normal", param4:Number = 0) : Array
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc5_:* = 0;
         var _loc6_:TweenCore = null;
         if(_loc9_ || param2)
         {
            §§push(Number(param2));
            if(!(_loc10_ && Boolean(this)))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(!_temp_3)
               {
                  if(!(_loc10_ && param2))
                  {
                     addr0054:
                     §§pop();
                     addr0055:
                     §§push(0);
                     if(!(_loc10_ && param2))
                     {
                        addr0066:
                        §§push(§§pop());
                     }
                     var _loc7_:* = §§pop();
                     var _loc8_:int = int(param1.length);
                     if(!(_loc10_ && Boolean(param1)))
                     {
                        if(typeof param2 == "string")
                        {
                           if(!(_loc10_ && Boolean(param3)))
                           {
                              if(!(param2 in _labels))
                              {
                                 if(!(_loc10_ && Boolean(param1)))
                                 {
                                    addLabel(param2,this.duration);
                                    if(!_loc10_)
                                    {
                                       addr00bd:
                                       _loc7_ = Number(_labels[param2]);
                                       if(!_loc10_)
                                       {
                                          addr00cd:
                                          _loc5_ = 0;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc5_ >= _loc8_)
                                    {
                                       §§push(param1);
                                       break;
                                    }
                                    §§push(param1);
                                    if(_loc10_)
                                    {
                                       break;
                                    }
                                    _loc6_ = §§pop()[_loc5_] as TweenCore;
                                    if(!(_loc9_ || Boolean(this)))
                                    {
                                       continue;
                                    }
                                    insert(_loc6_,_loc7_);
                                    if(!_loc9_)
                                    {
                                       continue;
                                    }
                                    §§push(param3);
                                    if(_loc9_)
                                    {
                                       §§push("sequence");
                                       if(!_loc10_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc10_)
                                             {
                                                continue;
                                             }
                                             §§push(_loc6_.cachedStartTime);
                                             if(_loc9_ || param2)
                                             {
                                                §§push(_loc6_.totalDuration);
                                                if(_loc9_)
                                                {
                                                   §§push(§§pop() / _loc6_.cachedTimeScale);
                                                   if(!(_loc10_ && Boolean(this)))
                                                   {
                                                      addr0164:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc9_)
                                                      {
                                                         addr016b:
                                                         §§push(§§pop());
                                                         if(!_loc10_)
                                                         {
                                                            _loc7_ = §§pop();
                                                            if(_loc10_)
                                                            {
                                                               continue;
                                                            }
                                                            addr01b0:
                                                            §§push(_loc7_);
                                                            if(!_loc10_)
                                                            {
                                                               addr01ba:
                                                               §§push(§§pop() + param4);
                                                               if(_loc9_ || Boolean(param3))
                                                               {
                                                                  addr01c9:
                                                                  §§push(§§pop());
                                                                  if(!(_loc10_ && Boolean(this)))
                                                                  {
                                                                     addr01e6:
                                                                     _loc7_ = §§pop();
                                                                     if(!(_loc10_ && Boolean(param1)))
                                                                     {
                                                                        addr01f6:
                                                                        §§push(_loc5_);
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr0201:
                                                                           §§push(int(§§pop() + 1));
                                                                        }
                                                                        _loc5_ = §§pop();
                                                                     }
                                                                     continue;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr0201);
                                                         }
                                                         §§goto(addr01e6);
                                                      }
                                                      §§goto(addr01c9);
                                                   }
                                                   §§goto(addr01ba);
                                                }
                                                §§goto(addr0164);
                                             }
                                             §§goto(addr016b);
                                          }
                                          else
                                          {
                                             addr0182:
                                             addr017f:
                                             if(param3 == "start")
                                             {
                                                if(_loc10_ && Boolean(this))
                                                {
                                                   continue;
                                                }
                                                §§push(_loc6_);
                                                §§push(_loc6_.cachedStartTime);
                                                if(!_loc10_)
                                                {
                                                   §§push(§§pop() - _loc6_.delay);
                                                }
                                                §§pop().cachedStartTime = §§pop();
                                                if(!_loc10_)
                                                {
                                                   §§goto(addr01b0);
                                                }
                                                §§goto(addr01f6);
                                             }
                                          }
                                          §§goto(addr01b0);
                                       }
                                       §§goto(addr0182);
                                    }
                                    §§goto(addr017f);
                                 }
                                 return §§pop();
                                 addr0204:
                              }
                              §§goto(addr00bd);
                           }
                           §§goto(addr0204);
                        }
                        §§goto(addr00cd);
                     }
                     §§goto(addr0204);
                  }
               }
               §§goto(addr0066);
            }
            §§goto(addr0054);
         }
         §§goto(addr0055);
      }
      
      public function getLabelTime(param1:String) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(param1 in _labels)
            {
               addr0022:
               §§push(Number(_labels[param1]));
               if(_loc3_)
               {
               }
            }
            else
            {
               return -1;
            }
            return §§pop();
         }
         §§goto(addr0022);
      }
      
      override public function get rawTime() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.cachedTotalTime == 0);
            if(_loc1_ || _loc2_)
            {
               §§push(!§§pop());
               if(_loc1_ || Boolean(this))
               {
                  addr003f:
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        §§goto(addr005b);
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr0078);
               }
               addr005b:
               §§pop();
               if(!_loc2_)
               {
                  addr0078:
                  addr0061:
                  §§push(this.cachedTotalTime == this.cachedTotalDuration);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0077:
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc1_ || _loc2_)
                     {
                        return this.cachedTotalTime;
                     }
                  }
               }
               §§push(this.timeline.rawTime - this.cachedStartTime);
               if(_loc1_ || _loc1_)
               {
                  return §§pop() * this.cachedTimeScale;
               }
            }
            §§goto(addr003f);
         }
         §§goto(addr0061);
      }
      
      override public function set totalDuration(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            §§push(this.totalDuration);
            if(_loc3_)
            {
               §§push(0);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_)
                  {
                     §§push(!§§pop());
                     if(!(_loc2_ && _loc3_))
                     {
                        var _temp_5:* = §§pop();
                        §§push(_temp_5);
                        if(_temp_5)
                        {
                           if(_loc3_ || Boolean(param1))
                           {
                              §§pop();
                              if(_loc3_)
                              {
                                 addr0084:
                                 addr0070:
                                 addr006e:
                                 §§push(param1 == 0);
                                 if(_loc3_)
                                 {
                                    addr0083:
                                    §§push(!§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(this);
                                       §§push(this.totalDuration);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(§§pop() / param1);
                                       }
                                       §§pop().timeScale = §§pop();
                                    }
                                 }
                              }
                              §§goto(addr00ac);
                           }
                           §§goto(addr0083);
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0070);
            }
            §§goto(addr006e);
         }
         addr00ac:
      }
      
      public function getChildren(param1:Boolean = true, param2:Boolean = true, param3:Boolean = true, param4:Number = -9999999999) : Array
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc5_:Array = [];
         var _loc6_:int = 0;
         if(_loc10_ || Boolean(this))
         {
            var _loc7_:TweenCore = this.gc ? _endCaps[0] : _firstChild;
            for(; _loc7_; _loc7_ = _loc7_.nextNode)
            {
               if(_loc7_.cachedStartTime < param4)
               {
                  if(_loc10_ || param1)
                  {
                     continue;
                  }
                  addr0119:
                  §§push(param1);
               }
               else
               {
                  §§push(_loc7_ is TweenLite);
                  if(_loc10_)
                  {
                     if(§§pop())
                     {
                        if(_loc10_ || param1)
                        {
                           §§push(param2);
                           if(!(_loc9_ && Boolean(this)))
                           {
                              if(§§pop())
                              {
                                 if(_loc10_)
                                 {
                                    var _loc8_:*;
                                    _loc5_[_loc8_ = _loc6_++] = _loc7_;
                                    if(_loc10_ || Boolean(this))
                                    {
                                       if(_loc10_ || param2)
                                       {
                                          continue;
                                       }
                                    }
                                    else
                                    {
                                       addr0109:
                                       if(!(_loc10_ || param3))
                                       {
                                          break;
                                       }
                                       §§goto(addr0119);
                                    }
                                 }
                                 addr0138:
                                 _loc5_ = _loc5_.concat(TimelineLite(_loc7_).getChildren(true,param2,param3));
                                 _loc6_ = int(_loc5_.length);
                              }
                              continue;
                           }
                           addr011a:
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(!(_loc10_ || param1))
                           {
                              break;
                           }
                           §§goto(addr0138);
                        }
                        else
                        {
                           addr00f9:
                           _loc5_[_loc8_ = _loc6_++] = _loc7_;
                        }
                        §§goto(addr0109);
                     }
                     else
                     {
                        §§push(param3);
                        if(_loc10_)
                        {
                           if(§§pop())
                           {
                              if(!_loc9_)
                              {
                                 §§goto(addr00f9);
                              }
                           }
                           §§goto(addr0119);
                        }
                     }
                  }
               }
               §§goto(addr011a);
            }
            return _loc5_;
         }
         §§goto(addr0037);
      }
      
      protected function forceChildrenToEnd(param1:Number, param2:Boolean = false) : Number
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:TweenCore = null;
         var _loc5_:* = NaN;
         var _loc3_:TweenCore = _firstChild;
         var _loc6_:Boolean = this.cachedPaused;
         for(; _loc3_; _loc3_ = _loc4_)
         {
            _loc4_ = _loc3_.nextNode;
            if(!(_loc7_ && Boolean(this)))
            {
               §§push(this.cachedPaused);
               if(!_loc7_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(!_loc7_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc7_ && Boolean(this)))
                        {
                           §§pop();
                           if(!_loc8_)
                           {
                              continue;
                           }
                           addr0074:
                           §§push(_loc6_);
                           if(!_loc7_)
                           {
                              §§push(!§§pop());
                              if(_loc8_ || Boolean(_loc3_))
                              {
                                 addr008b:
                                 if(§§pop())
                                 {
                                    if(_loc8_ || param2)
                                    {
                                       break;
                                    }
                                    §§goto(addr0314);
                                 }
                                 else
                                 {
                                    §§push(_loc3_.active);
                                    if(_loc8_ || Boolean(_loc3_))
                                    {
                                       §§push(§§pop());
                                       if(!_loc7_)
                                       {
                                          var _temp_13:* = §§pop();
                                          §§push(_temp_13);
                                          §§push(_temp_13);
                                          if(!(_loc7_ && Boolean(this)))
                                          {
                                             if(!§§pop())
                                             {
                                                if(!(_loc7_ && param2))
                                                {
                                                   §§pop();
                                                   if(!_loc7_)
                                                   {
                                                      §§push(_loc3_.cachedPaused);
                                                      if(!(_loc7_ && param2))
                                                      {
                                                         §§push(!§§pop());
                                                         if(_loc8_)
                                                         {
                                                            addr00ff:
                                                            var _temp_17:* = §§pop();
                                                            §§push(_temp_17);
                                                            §§push(_temp_17);
                                                            if(!_loc7_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc7_ && param2))
                                                                  {
                                                                     §§pop();
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(_loc3_.gc);
                                                                        if(_loc8_ || Boolean(this))
                                                                        {
                                                                           §§push(!§§pop());
                                                                           if(_loc8_)
                                                                           {
                                                                              addr0138:
                                                                              var _temp_20:* = §§pop();
                                                                              §§push(_temp_20);
                                                                              §§push(_temp_20);
                                                                              if(!(_loc7_ && Boolean(_loc3_)))
                                                                              {
                                                                                 addr0147:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc8_ || Boolean(this))
                                                                                    {
                                                                                       addr0159:
                                                                                       §§pop();
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§push(_loc3_.cachedTotalTime);
                                                                                          if(!(_loc7_ && param2))
                                                                                          {
                                                                                             §§push(§§pop() == _loc3_.cachedTotalDuration);
                                                                                             if(_loc8_ || Boolean(param1))
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   addr018c:
                                                                                                   var _temp_25:* = §§pop();
                                                                                                   §§push(_temp_25);
                                                                                                   §§push(_temp_25);
                                                                                                   if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                   {
                                                                                                      addr019b:
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            addr01a5:
                                                                                                            §§pop();
                                                                                                            if(_loc7_ && Boolean(param1))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            addr01b4:
                                                                                                            §§push(_loc3_.cachedDuration);
                                                                                                            if(_loc8_ || Boolean(_loc3_))
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     addr01d5:
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(_loc8_ || Boolean(_loc3_))
                                                                                                                     {
                                                                                                                        §§push(param1);
                                                                                                                        if(_loc8_ || Boolean(_loc3_))
                                                                                                                        {
                                                                                                                           addr0203:
                                                                                                                           §§push(§§pop() == this.cachedDuration);
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              var _temp_31:* = §§pop();
                                                                                                                              §§push(_temp_31);
                                                                                                                              §§push(_temp_31);
                                                                                                                              if(_loc8_ || param2)
                                                                                                                              {
                                                                                                                                 addr021d:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_.cachedDuration);
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             addr0240:
                                                                                                                                             addr0242:
                                                                                                                                             §§push(§§pop() == 0);
                                                                                                                                             if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                                             {
                                                                                                                                                addr0251:
                                                                                                                                                §§push(!§§pop());
                                                                                                                                                if(_loc8_ || Boolean(_loc3_))
                                                                                                                                                {
                                                                                                                                                   var _temp_36:* = §§pop();
                                                                                                                                                   addr0261:
                                                                                                                                                   §§push(_temp_36);
                                                                                                                                                   if(!_temp_36)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc7_ && Boolean(this)))
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         if(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_.cachedStartTime);
                                                                                                                                                            if(_loc8_ || param2)
                                                                                                                                                            {
                                                                                                                                                               addr028c:
                                                                                                                                                               §§push(§§pop() == this.cachedDuration);
                                                                                                                                                               if(!(_loc7_ && Boolean(this)))
                                                                                                                                                               {
                                                                                                                                                                  addr029f:
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc8_ || Boolean(param1)))
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     addr02b1:
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     if(_loc8_ || Boolean(this))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc3_.cachedReversed)
                                                                                                                                                                        {
                                                                                                                                                                           addr02c8:
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_.cachedTotalDuration);
                                                                                                                                                                           if(!(_loc7_ && Boolean(this)))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().renderTime(§§pop(),param2,false);
                                                                                                                                                                        if(!(_loc7_ && Boolean(this)))
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0314);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr02c8);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_.cachedReversed);
                                                                                                                                                                     if(_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        addr030a:
                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              addr0314:
                                                                                                                                                                              §§push(_loc3_);
                                                                                                                                                                              §§push(param1);
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc3_.cachedStartTime);
                                                                                                                                                                                 if(_loc8_ || Boolean(_loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr033a);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0339);
                                                                                                                                                                              }
                                                                                                                                                                              addr033a:
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr0339:
                                                                                                                                                                                 §§push(§§pop() * _loc3_.cachedTimeScale);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().renderTime(§§pop(),param2,false);
                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0358);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr034e:
                                                                                                                                                                           if(_loc3_.cacheIsDirty)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              addr0358:
                                                                                                                                                                              §§push(_loc3_.totalDuration);
                                                                                                                                                                              if(_loc8_ || Boolean(param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr0396:
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr0403);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr03a5:
                                                                                                                                                                                 §§push(_loc3_);
                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                 if(_loc8_ || Boolean(this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param1);
                                                                                                                                                                                    if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc3_.cachedStartTime);
                                                                                                                                                                                       if(!(_loc7_ && Boolean(param1)))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr03f1:
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          if(_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr03ef:
                                                                                                                                                                                             addr03eb:
                                                                                                                                                                                             §§push(§§pop() * _loc3_.cachedTimeScale);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().renderTime(§§pop() - §§pop(),param2,false);
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr03ef);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr03eb);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr03f1);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0403);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc3_.cachedTotalDuration);
                                                                                                                                                                              if(_loc8_ || Boolean(this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 if(_loc8_ || Boolean(_loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr0396);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0403);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0396);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr034e);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr030a);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0396);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0314);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr030a);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr029f);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr034e);
                                                                                                                                          }
                                                                                                                                          §§goto(addr028c);
                                                                                                                                       }
                                                                                                                                       §§goto(addr02b1);
                                                                                                                                    }
                                                                                                                                    §§goto(addr030a);
                                                                                                                                 }
                                                                                                                                 §§goto(addr029f);
                                                                                                                              }
                                                                                                                              §§goto(addr0261);
                                                                                                                           }
                                                                                                                           §§goto(addr030a);
                                                                                                                        }
                                                                                                                        §§goto(addr0240);
                                                                                                                     }
                                                                                                                     §§goto(addr0358);
                                                                                                                  }
                                                                                                                  §§goto(addr030a);
                                                                                                               }
                                                                                                               §§goto(addr0242);
                                                                                                            }
                                                                                                            §§goto(addr0396);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr01d5);
                                                                                                   }
                                                                                                   §§goto(addr021d);
                                                                                                }
                                                                                                §§goto(addr0251);
                                                                                             }
                                                                                             §§goto(addr01d5);
                                                                                          }
                                                                                          §§goto(addr0203);
                                                                                       }
                                                                                       §§goto(addr02b1);
                                                                                    }
                                                                                    §§goto(addr018c);
                                                                                 }
                                                                                 §§goto(addr01d5);
                                                                              }
                                                                              §§goto(addr019b);
                                                                           }
                                                                           §§goto(addr034e);
                                                                        }
                                                                        §§goto(addr029f);
                                                                     }
                                                                     §§goto(addr01b4);
                                                                  }
                                                                  §§goto(addr0251);
                                                               }
                                                               §§goto(addr0138);
                                                            }
                                                            §§goto(addr0261);
                                                         }
                                                         §§goto(addr0159);
                                                      }
                                                      §§goto(addr01d5);
                                                   }
                                                   §§goto(addr03a5);
                                                }
                                                §§goto(addr00ff);
                                             }
                                             §§goto(addr01d5);
                                          }
                                          §§goto(addr0147);
                                       }
                                       §§goto(addr01a5);
                                    }
                                    §§goto(addr0138);
                                 }
                              }
                              §§goto(addr034e);
                           }
                        }
                        §§goto(addr00ff);
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr021d);
               }
               §§goto(addr008b);
            }
            §§goto(addr0074);
         }
         addr0403:
         param1;
         return §§pop();
      }
      
      protected function forceChildrenToBeginning(param1:Number, param2:Boolean = false) : Number
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:TweenCore = null;
         var _loc5_:* = NaN;
         var _loc3_:TweenCore = _lastChild;
         var _loc6_:Boolean = this.cachedPaused;
         for(; _loc3_; _loc3_ = _loc4_)
         {
            _loc4_ = _loc3_.prevNode;
            if(_loc7_)
            {
               §§push(this.cachedPaused);
               if(!(_loc8_ && Boolean(this)))
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  §§push(_temp_2);
                  if(_loc7_)
                  {
                     if(§§pop())
                     {
                        if(_loc7_ || Boolean(_loc3_))
                        {
                           §§pop();
                           if(_loc7_)
                           {
                              §§push(_loc6_);
                              if(_loc7_ || Boolean(param1))
                              {
                                 §§push(!§§pop());
                                 if(_loc7_ || param2)
                                 {
                                    addr0090:
                                    if(§§pop())
                                    {
                                       if(_loc7_ || Boolean(_loc3_))
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    §§push(_loc3_.active);
                                    if(!(_loc8_ && Boolean(_loc3_)))
                                    {
                                       §§push(§§pop());
                                       if(!(_loc8_ && Boolean(this)))
                                       {
                                          addr00cb:
                                          var _temp_9:* = §§pop();
                                          §§push(_temp_9);
                                          §§push(_temp_9);
                                          if(!(_loc8_ && Boolean(param1)))
                                          {
                                             if(!§§pop())
                                             {
                                                if(!(_loc8_ && Boolean(param1)))
                                                {
                                                   §§pop();
                                                   if(_loc7_)
                                                   {
                                                      §§push(_loc3_.cachedPaused);
                                                      if(!(_loc8_ && Boolean(this)))
                                                      {
                                                         §§push(!§§pop());
                                                         if(_loc7_)
                                                         {
                                                            var _temp_13:* = §§pop();
                                                            §§push(_temp_13);
                                                            §§push(_temp_13);
                                                            if(!_loc8_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     addr011d:
                                                                     §§pop();
                                                                     if(_loc8_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(_loc3_.gc);
                                                                     if(_loc7_ || Boolean(this))
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr013d:
                                                                           var _temp_15:* = §§pop();
                                                                           §§push(_temp_15);
                                                                           §§push(_temp_15);
                                                                           if(_loc7_ || Boolean(this))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc7_ || Boolean(this))
                                                                                 {
                                                                                    addr015e:
                                                                                    §§pop();
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       §§push(_loc3_.cachedTotalTime);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(!(_loc8_ && param2))
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             if(_loc7_ || param2)
                                                                                             {
                                                                                                addr018e:
                                                                                                §§push(!§§pop());
                                                                                                if(!(_loc8_ && param2))
                                                                                                {
                                                                                                   var _temp_21:* = §§pop();
                                                                                                   §§push(_temp_21);
                                                                                                   §§push(_temp_21);
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         if(_loc7_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(!(_loc7_ || param2))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            addr01c5:
                                                                                                            §§push(_loc3_.cachedDuration);
                                                                                                            if(!(_loc8_ && param2))
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  if(!(_loc8_ && Boolean(param1)))
                                                                                                                  {
                                                                                                                     addr01ee:
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(!(_loc7_ || Boolean(this)))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§push(param1);
                                                                                                                     if(_loc7_ || Boolean(_loc3_))
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                                        {
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           if(_loc7_ || Boolean(this))
                                                                                                                           {
                                                                                                                              addr023a:
                                                                                                                              var _temp_30:* = §§pop();
                                                                                                                              §§push(_temp_30);
                                                                                                                              §§push(_temp_30);
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 addr0241:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       if(_loc7_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_.cachedDuration);
                                                                                                                                          if(!(_loc8_ && Boolean(param1)))
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(!(_loc8_ && param2))
                                                                                                                                             {
                                                                                                                                                addr027c:
                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                if(_loc7_ || Boolean(_loc3_))
                                                                                                                                                {
                                                                                                                                                   addr028b:
                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                   if(!(_loc8_ && param2))
                                                                                                                                                   {
                                                                                                                                                      var _temp_36:* = §§pop();
                                                                                                                                                      addr029b:
                                                                                                                                                      §§push(_temp_36);
                                                                                                                                                      if(!_temp_36)
                                                                                                                                                      {
                                                                                                                                                         if(_loc7_ || Boolean(param1))
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc3_.cachedStartTime);
                                                                                                                                                               if(!_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  addr02c0:
                                                                                                                                                                  addr02be:
                                                                                                                                                                  §§push(§§pop() == 0);
                                                                                                                                                                  if(_loc7_ || Boolean(param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr02cf:
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc7_ || Boolean(_loc3_)))
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        addr02e1:
                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_.cachedReversed)
                                                                                                                                                                           {
                                                                                                                                                                              addr02f0:
                                                                                                                                                                              §§push(_loc3_.cachedTotalDuration);
                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 if(_loc8_ && Boolean(param1))
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().renderTime(§§pop(),param2,false);
                                                                                                                                                                           if(!_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           addr0388:
                                                                                                                                                                           §§push(_loc3_.totalDuration);
                                                                                                                                                                           if(_loc7_ || Boolean(this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(!(_loc7_ || Boolean(param1)))
                                                                                                                                                                              {
                                                                                                                                                                                 addr03bf:
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 if(_loc7_ || Boolean(_loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr03ce:
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr0438);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr03d5:
                                                                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                                                                 if(!_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr03dd:
                                                                                                                                                                                 §§push(_loc3_);
                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                 if(_loc7_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param1);
                                                                                                                                                                                    if(_loc7_ || Boolean(this))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc3_.cachedStartTime);
                                                                                                                                                                                       if(_loc7_ || Boolean(this))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr0425:
                                                                                                                                                                                          addr0426:
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          if(!_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr0424:
                                                                                                                                                                                             §§push(§§pop() * _loc3_.cachedTimeScale);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().renderTime(§§pop() - §§pop(),param2,false);
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0424);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0425);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0426);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr03ce);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr03d5);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr02f0);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc3_.cachedReversed);
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           addr032a:
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc7_ || Boolean(this)))
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              addr033c:
                                                                                                                                                                              §§push(_loc3_);
                                                                                                                                                                              §§push(param1);
                                                                                                                                                                              if(_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc3_.cachedStartTime);
                                                                                                                                                                                 if(!(_loc8_ && Boolean(this)))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                    if(_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr0361:
                                                                                                                                                                                       addr035d:
                                                                                                                                                                                       §§push(§§pop() * _loc3_.cachedTimeScale);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().renderTime(§§pop(),param2,false);
                                                                                                                                                                                    if(_loc7_ || Boolean(_loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0388);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0361);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr035d);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr037e:
                                                                                                                                                                              if(_loc3_.cacheIsDirty)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0388);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc3_.cachedTotalDuration);
                                                                                                                                                                                 if(!(_loc8_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr03bf);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr03d5);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr037e);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr032a);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr03ce);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr02e1);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr037e);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr02cf);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr037e);
                                                                                                                                                }
                                                                                                                                                §§goto(addr032a);
                                                                                                                                             }
                                                                                                                                             §§goto(addr02c0);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0438);
                                                                                                                                       }
                                                                                                                                       §§goto(addr033c);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr02cf);
                                                                                                                              }
                                                                                                                              §§goto(addr029b);
                                                                                                                           }
                                                                                                                           §§goto(addr028b);
                                                                                                                        }
                                                                                                                        §§goto(addr027c);
                                                                                                                     }
                                                                                                                     §§goto(addr03bf);
                                                                                                                  }
                                                                                                                  §§goto(addr032a);
                                                                                                               }
                                                                                                               §§goto(addr02c0);
                                                                                                            }
                                                                                                            §§goto(addr03d5);
                                                                                                         }
                                                                                                         §§goto(addr02cf);
                                                                                                      }
                                                                                                      §§goto(addr01ee);
                                                                                                   }
                                                                                                   §§goto(addr0241);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr032a);
                                                                                          }
                                                                                          §§goto(addr02c0);
                                                                                       }
                                                                                       §§goto(addr02be);
                                                                                    }
                                                                                    §§goto(addr01c5);
                                                                                 }
                                                                                 §§goto(addr018e);
                                                                              }
                                                                              §§goto(addr01ee);
                                                                           }
                                                                           §§goto(addr0241);
                                                                        }
                                                                        §§goto(addr023a);
                                                                     }
                                                                     §§goto(addr037e);
                                                                  }
                                                                  §§goto(addr028b);
                                                               }
                                                               §§goto(addr013d);
                                                            }
                                                            §§goto(addr029b);
                                                         }
                                                         §§goto(addr023a);
                                                      }
                                                      §§goto(addr015e);
                                                   }
                                                   §§goto(addr03dd);
                                                }
                                             }
                                             §§goto(addr01ee);
                                          }
                                          §§goto(addr0241);
                                       }
                                       §§goto(addr037e);
                                    }
                                    §§goto(addr011d);
                                 }
                                 §§goto(addr018e);
                              }
                              §§goto(addr00cb);
                           }
                           §§goto(addr02e1);
                        }
                        §§goto(addr00cb);
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr029b);
               }
               §§goto(addr02cf);
            }
            §§goto(addr03dd);
         }
         addr0438:
         param1;
         return §§pop();
      }
      
      override public function insert(param1:TweenCore, param2:* = 0) : TweenCore
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc6_:TweenCore = null;
         var _loc7_:* = NaN;
         var _loc8_:SimpleTimeline = null;
         if(!(_loc10_ && Boolean(this)))
         {
            if(typeof param2 == "string")
            {
               if(!_loc10_)
               {
                  addr0043:
                  if(!(param2 in _labels))
                  {
                     if(_loc11_)
                     {
                        addr0052:
                        addLabel(param2,this.duration);
                     }
                  }
                  param2 = Number(_labels[param2]);
                  addr006c:
                  var _loc3_:SimpleTimeline = param1.timeline;
                  if(_loc11_)
                  {
                     §§push(param1.cachedOrphan);
                     if(!_loc10_)
                     {
                        §§push(!§§pop());
                        if(!(_loc10_ && Boolean(this)))
                        {
                           var _temp_4:* = §§pop();
                           §§push(_temp_4);
                           §§push(_temp_4);
                           if(_loc11_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc10_ && Boolean(this)))
                                 {
                                    §§pop();
                                    if(_loc11_ || param2)
                                    {
                                       §§push(Boolean(_loc3_));
                                       if(!(_loc10_ && Boolean(this)))
                                       {
                                          addr00cb:
                                          if(§§pop())
                                          {
                                             if(_loc11_)
                                             {
                                                _loc3_.remove(param1,true);
                                                if(_loc11_ || Boolean(param1))
                                                {
                                                   addr00ea:
                                                   param1.timeline = this;
                                                   if(!_loc10_)
                                                   {
                                                      param1.cachedStartTime = Number(param2) + param1.delay;
                                                      if(_loc11_)
                                                      {
                                                         §§push(param1.cachedPaused);
                                                         if(!(_loc10_ && param2))
                                                         {
                                                            addr011c:
                                                            §§push(§§pop());
                                                            if(!_loc10_)
                                                            {
                                                               addr0123:
                                                               var _temp_10:* = §§pop();
                                                               addr0124:
                                                               §§push(_temp_10);
                                                               if(_temp_10)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     addr012e:
                                                                     §§pop();
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(_loc3_ == this);
                                                                        if(!(_loc10_ && Boolean(this)))
                                                                        {
                                                                           addr0146:
                                                                           §§push(!§§pop());
                                                                           if(_loc11_)
                                                                           {
                                                                              addr014d:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc11_ || param2)
                                                                                 {
                                                                                    addr015f:
                                                                                    §§push(param1);
                                                                                    §§push(param1.cachedStartTime);
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§push(this.rawTime);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§push(param1.cachedStartTime);
                                                                                          if(!(_loc10_ && Boolean(param1)))
                                                                                          {
                                                                                             addr0193:
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                addr0191:
                                                                                                addr018d:
                                                                                                §§push(§§pop() / param1.cachedTimeScale);
                                                                                             }
                                                                                             §§pop().cachedPauseTime = §§pop() + §§pop();
                                                                                             if(!(_loc10_ && Boolean(this)))
                                                                                             {
                                                                                                addr01a4:
                                                                                                addr01a8:
                                                                                                if(param1.gc)
                                                                                                {
                                                                                                   if(!(_loc10_ && param2))
                                                                                                   {
                                                                                                      param1.setEnabled(true,true);
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         addr01c7:
                                                                                                         setDirtyCache(true);
                                                                                                         if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                         {
                                                                                                            var _loc4_:TweenCore = this.gc ? _endCaps[0] : _firstChild;
                                                                                                            addr01dd:
                                                                                                            if(!(_loc10_ && Boolean(param1)))
                                                                                                            {
                                                                                                               var _loc5_:TweenCore = this.gc ? _endCaps[1] : _lastChild;
                                                                                                               if(_loc5_ == null)
                                                                                                               {
                                                                                                                  _loc4_ = _loc5_ = param1;
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     param1.nextNode = param1.prevNode = null;
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  _loc6_ = _loc5_;
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     §§push(param1.cachedStartTime);
                                                                                                                     if(_loc11_ || Boolean(_loc3_))
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                     }
                                                                                                                     _loc7_ = §§pop();
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc6_ == null);
                                                                                                                     if(!(_loc10_ && Boolean(param1)))
                                                                                                                     {
                                                                                                                        §§push(!§§pop());
                                                                                                                        if(!(_loc10_ && Boolean(this)))
                                                                                                                        {
                                                                                                                           var _temp_23:* = §§pop();
                                                                                                                           §§push(_temp_23);
                                                                                                                           if(_temp_23)
                                                                                                                           {
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                                 addr02be:
                                                                                                                                 §§pop();
                                                                                                                                 if(!(_loc11_ || param2))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(_loc7_ < _loc6_.cachedStartTime);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              if(_loc6_ == null)
                                                                                                                              {
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    addr02fa:
                                                                                                                                    _loc4_.prevNode = param1;
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    addr032d:
                                                                                                                                    _loc4_ = param1;
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr0385:
                                                                                                                                    _loc5_ = param1;
                                                                                                                                    addr038b:
                                                                                                                                    param1.prevNode = _loc6_;
                                                                                                                                    if(_loc11_ || param2)
                                                                                                                                    {
                                                                                                                                       addr039f:
                                                                                                                                       param1.nextNode = _loc6_.nextNode;
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          _loc6_.nextNode = param1;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.nextNode);
                                                                                                                                 if(_loc11_ || param2)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                                       {
                                                                                                                                          addr0361:
                                                                                                                                          _loc6_.nextNode.prevNode = param1;
                                                                                                                                          if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                                          {
                                                                                                                                             §§goto(addr038b);
                                                                                                                                          }
                                                                                                                                          addr03b4:
                                                                                                                                          param1.cachedOrphan = false;
                                                                                                                                          if(_loc11_ || param2)
                                                                                                                                          {
                                                                                                                                             if(this.gc)
                                                                                                                                             {
                                                                                                                                                if(_loc11_)
                                                                                                                                                {
                                                                                                                                                   §§push(_endCaps);
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      if(!(_loc10_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§pop()[§§pop()] = _loc4_;
                                                                                                                                                         if(_loc11_)
                                                                                                                                                         {
                                                                                                                                                            addr03fe:
                                                                                                                                                            _endCaps[1] = _loc5_;
                                                                                                                                                            addr03fc:
                                                                                                                                                            if(_loc11_ || Boolean(_loc3_))
                                                                                                                                                            {
                                                                                                                                                               addr0431:
                                                                                                                                                               §§push(this.gc);
                                                                                                                                                               if(_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  var _temp_32:* = §§pop();
                                                                                                                                                                  §§push(_temp_32);
                                                                                                                                                                  §§push(_temp_32);
                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc11_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           if(_loc11_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(!this.cachedPaused);
                                                                                                                                                                              if(!_loc10_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr045f:
                                                                                                                                                                                 var _temp_33:* = §§pop();
                                                                                                                                                                                 §§push(_temp_33);
                                                                                                                                                                                 §§push(_temp_33);
                                                                                                                                                                                 if(_loc11_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr0466);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr04e1);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0505);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr04c7);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0505);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr045f);
                                                                                                                                                                  }
                                                                                                                                                                  addr0466:
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                                                                     {
                                                                                                                                                                        addr0478:
                                                                                                                                                                        §§pop();
                                                                                                                                                                        if(!(_loc10_ && Boolean(this)))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.cachedStartTime + (param1.cachedStartTime + param1.cachedTotalDuration / param1.cachedTimeScale) / this.cachedTimeScale > this.timeline.cachedTime);
                                                                                                                                                                           if(!(_loc10_ && Boolean(this)))
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr04b5);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr04e0);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr04c7);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr04b5:
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc10_ && Boolean(this)))
                                                                                                                                                                     {
                                                                                                                                                                        addr04c7:
                                                                                                                                                                        §§push(this.timeline == TweenLite.rootTimeline);
                                                                                                                                                                        if(_loc11_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           addr04e0:
                                                                                                                                                                           var _temp_39:* = §§pop();
                                                                                                                                                                           addr04e1:
                                                                                                                                                                           §§push(_temp_39);
                                                                                                                                                                           if(!_temp_39)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc11_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr04eb:
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 if(_loc11_ || Boolean(param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr0505:
                                                                                                                                                                                    addr04fa:
                                                                                                                                                                                    if(this.timeline == TweenLite.rootFramesTimeline)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.setTotalTime(this.cachedTotalTime,true);
                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr051f:
                                                                                                                                                                                             this.setEnabled(true,false);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr0526:
                                                                                                                                                                                          _loc8_ = this.timeline;
                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             loop1:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc8_.gc);
                                                                                                                                                                                                if(_loc11_ || Boolean(_loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   var _temp_42:* = §§pop();
                                                                                                                                                                                                   §§push(_temp_42);
                                                                                                                                                                                                   if(_temp_42)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc11_ || Boolean(this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr05a8:
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         if(!(_loc11_ || Boolean(param1)))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Boolean(_loc8_.timeline));
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop1;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc8_.cachedStartTime + _loc8_.totalDuration / _loc8_.cachedTimeScale <= _loc8_.timeline.cachedTime)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc11_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop1;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc8_.setEnabled(true,false);
                                                                                                                                                                                                      if(_loc11_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(Boolean(_loc8_.timeline));
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr05a8);
                                                                                                                                                                                                _loc8_ = _loc8_.timeline;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr05c1);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr05b7);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr051f);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0526);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0505);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr04eb);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr051f);
                                                                                                                                                                  }
                                                                                                                                                                  addr05c1:
                                                                                                                                                                  return param1;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0478);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr051f);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr0423:
                                                                                                                                                            _lastChild = _loc5_;
                                                                                                                                                            if(_loc11_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr0431);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0526);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr03fe);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr03fc);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                _firstChild = _loc4_;
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr0423);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr04fa);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else if(_loc6_ == _loc5_)
                                                                                                                                    {
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr0385);
                                                                                                                                       }
                                                                                                                                       §§goto(addr039f);
                                                                                                                                    }
                                                                                                                                    §§goto(addr038b);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0361);
                                                                                                                              }
                                                                                                                              §§goto(addr03b4);
                                                                                                                           }
                                                                                                                           §§goto(addr02fa);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr02be);
                                                                                                                     _loc6_ = _loc6_.prevNode;
                                                                                                                  }
                                                                                                                  param1.nextNode = _loc4_;
                                                                                                                  if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                  {
                                                                                                                     param1.prevNode = null;
                                                                                                                     if(!(_loc10_ && param2))
                                                                                                                     {
                                                                                                                        §§goto(addr032d);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr038b);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr03b4);
                                                                                                            }
                                                                                                            §§goto(addr0215);
                                                                                                         }
                                                                                                         §§goto(addr01e5);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr01dd);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr01c7);
                                                                                          }
                                                                                          §§goto(addr0191);
                                                                                       }
                                                                                       §§goto(addr018d);
                                                                                    }
                                                                                    §§goto(addr0193);
                                                                                 }
                                                                                 §§goto(addr01e5);
                                                                              }
                                                                              §§goto(addr01a4);
                                                                           }
                                                                        }
                                                                        §§goto(addr01a8);
                                                                     }
                                                                     §§goto(addr01c7);
                                                                  }
                                                               }
                                                               §§goto(addr014d);
                                                            }
                                                            §§goto(addr01a8);
                                                         }
                                                         §§goto(addr014d);
                                                      }
                                                   }
                                                   §§goto(addr015f);
                                                }
                                                §§goto(addr01c7);
                                             }
                                             §§goto(addr015f);
                                          }
                                          §§goto(addr00ea);
                                       }
                                       §§goto(addr0123);
                                    }
                                    §§goto(addr01a4);
                                 }
                                 §§goto(addr012e);
                              }
                              §§goto(addr00cb);
                           }
                           §§goto(addr0124);
                        }
                        §§goto(addr011c);
                     }
                     §§goto(addr0146);
                  }
                  §§goto(addr015f);
               }
               §§goto(addr0052);
            }
            §§goto(addr006c);
         }
         §§goto(addr0043);
      }
      
      override public function invalidate() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            var _loc1_:TweenCore = this.gc ? _endCaps[0] : _firstChild;
            while(_loc1_)
            {
               _loc1_.invalidate();
               if(_loc2_)
               {
                  break;
               }
               _loc1_ = _loc1_.nextNode;
            }
            return;
         }
         §§goto(addr0029);
      }
      
      public function get timeScale() : Number
      {
         return this.cachedTimeScale;
      }
      
      public function prependMultiple(param1:Array, param2:String = "normal", param3:Number = 0, param4:Boolean = false) : Array
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:TimelineLite = new TimelineLite({
            "tweens":param1,
            "align":param2,
            "stagger":param3
         });
         if(!(_loc7_ && Boolean(param2)))
         {
            shiftChildren(_loc5_.duration,param4,0);
            if(!(_loc7_ && Boolean(param2)))
            {
               insertMultiple(param1,0,param2,param3);
               if(_loc6_ || Boolean(this))
               {
                  addr0090:
                  _loc5_.kill();
               }
               return param1;
            }
         }
         §§goto(addr0090);
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : Boolean
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:TweenCore = null;
         if(_loc6_ || Boolean(this))
         {
            §§push(param1);
            if(_loc6_)
            {
               if(§§pop() == this.gc)
               {
                  if(_loc6_ || param2)
                  {
                     addr0046:
                     if(param1)
                     {
                        addr004a:
                        _firstChild = _loc3_ = _endCaps[0];
                        if(!_loc5_)
                        {
                           _lastChild = _endCaps[1];
                           if(!_loc5_)
                           {
                              addr008a:
                              _endCaps = [null,null];
                           }
                           while(_loc3_)
                           {
                              _loc3_.setEnabled(param1,true);
                              if(_loc5_ && param1)
                              {
                                 break;
                              }
                              _loc3_ = _loc3_.nextNode;
                           }
                           addr010a:
                           return super.setEnabled(param1,param2);
                           addr0105:
                        }
                        §§goto(addr008a);
                     }
                     else
                     {
                        _loc3_ = _firstChild;
                        if(!(_loc5_ && Boolean(_loc3_)))
                        {
                           _endCaps = [_firstChild,_lastChild];
                           if(_loc6_)
                           {
                              addr00c1:
                              _firstChild = _lastChild = null;
                           }
                           §§goto(addr0105);
                        }
                        §§goto(addr00c1);
                     }
                  }
                  §§goto(addr004a);
               }
               §§goto(addr010a);
            }
            §§goto(addr0046);
         }
         §§goto(addr004a);
      }
   }
}

