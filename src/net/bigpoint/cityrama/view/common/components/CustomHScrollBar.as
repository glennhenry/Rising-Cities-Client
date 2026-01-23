package net.bigpoint.cityrama.view.common.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import spark.components.HScrollBar;
   
   public class CustomHScrollBar extends HScrollBar
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc1_)
      {
         _skinParts = {
            "decrementButton":false,
            "incrementButton":false,
            "track":false,
            "thumb":false
         };
      }
      
      public var showScroller:Boolean;
      
      public var includeScroller:Boolean = true;
      
      private var _shouldCheckScroll:Boolean = true;
      
      private const DEFAULT_SCROLLSPEED:Number = 0.2;
      
      private var _incrementEnabled:Boolean;
      
      private var _decrementEnabled:Boolean;
      
      public function CustomHScrollBar()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override protected function button_buttonDownHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = NaN;
         if(_loc4_ || Boolean(this))
         {
            §§push(this._shouldCheckScroll);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     return;
                  }
                  addr00cc:
                  §§push(Math.min(value + pageSize,maximum));
                  if(!_loc3_)
                  {
                     _loc2_ = §§pop();
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        §§push(this.showScroller);
                        if(!_loc3_)
                        {
                           addr00f9:
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 incrementButton.enabled = _loc2_ != maximum;
                                 if(_loc3_)
                                 {
                                 }
                              }
                              addr01b6:
                              this._incrementEnabled = incrementButton.enabled;
                              if(_loc4_ || _loc3_)
                              {
                                 addr01ce:
                                 this._decrementEnabled = decrementButton.enabled;
                                 if(_loc4_)
                                 {
                                    incrementButton.enabled = false;
                                    if(!_loc3_)
                                    {
                                       addr01ea:
                                       decrementButton.enabled = false;
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr01fe:
                                          if(!isNaN(_loc2_))
                                          {
                                             if(_loc4_)
                                             {
                                                addr021a:
                                                this._shouldCheckScroll = false;
                                                if(_loc4_ || Boolean(_loc2_))
                                                {
                                                   addr022d:
                                                   TweenMax.to(this.viewport,this.scrollspeed,{
                                                      "horizontalScrollPosition":_loc2_,
                                                      "onComplete":this.resetCheckScroll
                                                   });
                                                }
                                                §§goto(addr0249);
                                             }
                                             §§goto(addr022d);
                                          }
                                       }
                                    }
                                    addr0249:
                                    return;
                                 }
                              }
                              §§goto(addr01fe);
                           }
                           else
                           {
                              incrementButton.visible = _loc2_ != maximum;
                              if(_loc4_)
                              {
                                 §§goto(addr01b6);
                              }
                           }
                           §§goto(addr022d);
                        }
                        else
                        {
                           addr0177:
                           if(§§pop())
                           {
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr0188:
                                 decrementButton.enabled = _loc2_ != minimum;
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§goto(addr01b6);
                                 }
                                 §§goto(addr021a);
                              }
                              §§goto(addr01fe);
                           }
                           else
                           {
                              decrementButton.visible = _loc2_ != minimum;
                              if(!_loc3_)
                              {
                                 §§goto(addr01b6);
                              }
                           }
                        }
                        §§goto(addr01ea);
                     }
                     else
                     {
                        addr0173:
                        §§push(this.showScroller);
                     }
                     §§goto(addr0177);
                  }
                  else
                  {
                     addr0164:
                     _loc2_ = §§pop();
                     if(_loc4_ || Boolean(this))
                     {
                        §§goto(addr0173);
                     }
                  }
                  §§goto(addr0188);
               }
               else
               {
                  §§push(this.showScroller);
                  if(_loc4_ || Boolean(this))
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           incrementButton.enabled = true;
                           if(_loc4_ || _loc3_)
                           {
                              decrementButton.enabled = true;
                              if(!(_loc3_ && Boolean(param1)))
                              {
                                 addr00bc:
                                 if(param1.target == incrementButton)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§goto(addr00cc);
                                    }
                                 }
                                 else if(param1.target == decrementButton)
                                 {
                                    if(_loc4_ || Boolean(param1))
                                    {
                                       §§goto(addr0164);
                                       §§push(Math.max(value - pageSize,minimum));
                                    }
                                    §§goto(addr0173);
                                 }
                                 §§goto(addr01b6);
                              }
                              §§goto(addr0173);
                           }
                           else
                           {
                              addr00a9:
                              decrementButton.visible = true;
                              if(!(_loc3_ && Boolean(_loc2_)))
                              {
                                 §§goto(addr00bc);
                              }
                           }
                           §§goto(addr01b6);
                        }
                        §§goto(addr022d);
                     }
                     else
                     {
                        incrementButton.visible = true;
                        if(_loc4_ || _loc3_)
                        {
                           §§goto(addr00a9);
                        }
                     }
                     §§goto(addr0188);
                  }
               }
               §§goto(addr00f9);
            }
            §§goto(addr0177);
         }
         §§goto(addr01ce);
      }
      
      public function scrollTo(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(!isNaN(param1))
            {
               if(_loc2_)
               {
                  this._incrementEnabled = incrementButton.enabled;
                  if(_loc2_ || Boolean(param1))
                  {
                     this._decrementEnabled = decrementButton.enabled;
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        incrementButton.enabled = false;
                        if(_loc2_)
                        {
                           addr0071:
                           decrementButton.enabled = false;
                           if(_loc2_)
                           {
                              addr007d:
                              param1 = Math.max(Math.min(param1,maximum),minimum);
                              if(_loc2_)
                              {
                                 addr00a3:
                                 this._shouldCheckScroll = false;
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00b5:
                                    TweenMax.to(this.viewport,this.scrollspeed,{
                                       "horizontalScrollPosition":param1,
                                       "onComplete":this.resetCheckScroll
                                    });
                                 }
                              }
                              §§goto(addr00d1);
                           }
                           §§goto(addr00a3);
                        }
                        §§goto(addr00d1);
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr0071);
               }
            }
            addr00d1:
            return;
         }
         §§goto(addr007d);
      }
      
      private function get scrollspeed() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            if(this.getStyle("scrollSpeed") != null)
            {
               if(!(_loc1_ && _loc1_))
               {
                  return this.getStyle("scrollSpeed");
               }
            }
         }
         return this.DEFAULT_SCROLLSPEED;
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.commitProperties();
            if(_loc2_)
            {
               this.checkScroll();
            }
         }
      }
      
      private function checkScroll() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            §§push(this.includeScroller);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr0033:
                     §§push(this._shouldCheckScroll);
                     if(!_loc3_)
                     {
                        addr003c:
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              addr0049:
                              if(this.showScroller)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    decrementButton.enabled = this.viewport.horizontalScrollPosition != minimum;
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       incrementButton.enabled = this.viewport.horizontalScrollPosition != maximum;
                                       if(_loc2_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr00b7:
                                    incrementButton.visible = this.viewport.horizontalScrollPosition != maximum;
                                    if(_loc3_ && _loc2_)
                                    {
                                       addr00fa:
                                       decrementButton.includeInLayout = decrementButton.visible = false;
                                    }
                                 }
                              }
                              else
                              {
                                 decrementButton.visible = this.viewport.horizontalScrollPosition != minimum;
                                 if(!_loc3_)
                                 {
                                    §§goto(addr00b7);
                                 }
                              }
                              §§goto(addr010a);
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr010a);
                     }
                     §§goto(addr0049);
                  }
               }
               else
               {
                  incrementButton.includeInLayout = incrementButton.visible = false;
                  if(_loc2_)
                  {
                     §§goto(addr00fa);
                  }
               }
               addr010a:
               return;
            }
            §§goto(addr003c);
         }
         §§goto(addr0033);
      }
      
      private function resetCheckScroll() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this._shouldCheckScroll = true;
            if(_loc1_ || _loc2_)
            {
               addr0039:
               incrementButton.enabled = this._incrementEnabled;
               if(_loc1_ || _loc1_)
               {
                  decrementButton.enabled = this._decrementEnabled;
               }
            }
            return;
         }
         §§goto(addr0039);
      }
      
      public function scrollpositionChanged() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._shouldCheckScroll = true;
            if(_loc1_)
            {
               invalidateProperties();
            }
         }
      }
      
      override protected function button_buttonUpHandler(param1:Event) : void
      {
      }
   }
}

