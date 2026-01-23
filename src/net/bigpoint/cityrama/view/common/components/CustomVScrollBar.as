package net.bigpoint.cityrama.view.common.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import spark.components.VScrollBar;
   
   public class CustomVScrollBar extends VScrollBar
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         _skinParts = {
            "decrementButton":false,
            "incrementButton":false,
            "track":false,
            "thumb":false
         };
      }
      
      private var _shouldCheckScroll:Boolean = true;
      
      public function CustomVScrollBar()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override protected function button_buttonDownHandler(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = NaN;
         if(!(_loc4_ && _loc3_))
         {
            if(!this._shouldCheckScroll)
            {
               if(_loc3_ || _loc3_)
               {
                  return;
               }
               §§goto(addr010d);
            }
            else
            {
               incrementButton.visible = true;
               if(_loc3_)
               {
                  decrementButton.visible = true;
                  if(_loc3_ || _loc3_)
                  {
                     if(param1.target == incrementButton)
                     {
                        if(!_loc4_)
                        {
                           addr0077:
                           §§push(Math.min(value + pageSize,maximum));
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              _loc2_ = §§pop();
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 incrementButton.visible = _loc2_ != maximum;
                                 if(_loc4_ && _loc3_)
                                 {
                                    addr00f7:
                                    _loc2_ = Math.max(value - pageSize,minimum);
                                    addr00e6:
                                    if(_loc3_)
                                    {
                                       decrementButton.visible = _loc2_ != minimum;
                                       if(_loc3_)
                                       {
                                          §§goto(addr010d);
                                       }
                                    }
                                    §§goto(addr013f);
                                 }
                                 §§goto(addr010d);
                              }
                              §§goto(addr0134);
                           }
                           §§goto(addr00f7);
                        }
                        §§goto(addr00e6);
                     }
                     else if(param1.target == decrementButton)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           §§goto(addr00e6);
                        }
                     }
                     addr010d:
                     if(!isNaN(_loc2_))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0134:
                           this._shouldCheckScroll = false;
                           if(!_loc4_)
                           {
                              addr013f:
                              TweenMax.to(this.viewport,0.5,{
                                 "verticalScrollPosition":_loc2_,
                                 "onComplete":this.resetCheckScroll
                              });
                           }
                           §§goto(addr0159);
                        }
                        §§goto(addr013f);
                     }
                     addr0159:
                     return;
                  }
                  §§goto(addr00e6);
               }
               §§goto(addr0077);
            }
         }
         §§goto(addr013f);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
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
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this._shouldCheckScroll)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  decrementButton.visible = this.viewport.verticalScrollPosition != minimum;
                  if(!_loc2_)
                  {
                     incrementButton.visible = this.viewport.verticalScrollPosition != maximum;
                  }
               }
            }
         }
      }
      
      private function resetCheckScroll() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            this._shouldCheckScroll = true;
         }
      }
      
      override protected function button_buttonUpHandler(param1:Event) : void
      {
      }
      
      public function scrollpositionChanged() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._shouldCheckScroll = true;
            if(!(_loc1_ && Boolean(this)))
            {
               addr0028:
               invalidateProperties();
            }
            return;
         }
         §§goto(addr0028);
      }
   }
}

