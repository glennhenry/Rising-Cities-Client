package net.bigpoint.cityrama.view.mainMenu.ui.components
{
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.mainMenu.ui.events.QuadButtonEvent;
   import spark.components.ToggleButton;
   
   public class QuadToggleButton extends ToggleButton
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         _skinParts = {
            "labelDisplay":false,
            "iconDisplay":false,
            "badgeImage":false
         };
      }
      
      private var _inactive:Boolean;
      
      private var _blinking:Boolean;
      
      private var _dispatchChangeFlag:Boolean = true;
      
      public var badgeImage:BriskImageDynaLib;
      
      public function QuadToggleButton()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               addr0025:
               focusEnabled = false;
            }
            return;
         }
         §§goto(addr0025);
      }
      
      public function get inactive() : Boolean
      {
         return this._inactive;
      }
      
      public function set inactive(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(param1 != this._inactive)
            {
               if(!_loc2_)
               {
                  this._inactive = param1;
                  if(_loc3_ || param1)
                  {
                     addr0043:
                     invalidateSkinState();
                  }
               }
            }
            return;
         }
         §§goto(addr0043);
      }
      
      public function get blinking() : Boolean
      {
         return this._blinking;
      }
      
      public function set blinking(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(param1 != this._blinking)
            {
               if(_loc3_ || _loc3_)
               {
                  this._blinking = param1;
                  if(_loc3_ || param1)
                  {
                     addr004c:
                     invalidateSkinState();
                  }
               }
            }
            return;
         }
         §§goto(addr004c);
      }
      
      override public function set selected(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || param1)
         {
            if(super.selected != param1)
            {
               if(_loc3_ || _loc3_)
               {
                  addr0043:
                  super.selected = param1;
               }
            }
            return;
         }
         §§goto(addr0043);
      }
      
      override protected function getCurrentSkinState() : String
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:* = super.getCurrentSkinState();
         if(_loc4_)
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop().split("And").shift());
               if(!_loc3_)
               {
                  _loc1_ = §§pop();
                  addr0044:
                  §§push(super.getCurrentSkinState());
               }
            }
            var _loc2_:* = §§pop();
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(this._blinking);
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     §§push(_temp_4);
                     if(_loc4_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              §§pop();
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 §§push(Boolean(enabled));
                                 if(_loc4_ || Boolean(_loc1_))
                                 {
                                    addr00ae:
                                    if(§§pop())
                                    {
                                       if(_loc4_ || Boolean(this))
                                       {
                                          §§push(_loc1_);
                                          if(_loc4_)
                                          {
                                             §§push("AndBlinking");
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      addr00f5:
                                                      §§push(this._inactive);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc4_)
                                                         {
                                                            var _temp_12:* = §§pop();
                                                            addr0106:
                                                            §§push(_temp_12);
                                                            if(_temp_12)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§goto(addr0110);
                                                               }
                                                            }
                                                            §§goto(addr012f);
                                                         }
                                                         addr0110:
                                                         §§pop();
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            addr012f:
                                                            if(Boolean(enabled))
                                                            {
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  §§goto(addr0141);
                                                               }
                                                            }
                                                            §§goto(addr0156);
                                                         }
                                                         addr0141:
                                                         §§goto(addr0157);
                                                      }
                                                      §§goto(addr012f);
                                                   }
                                                   §§goto(addr0156);
                                                }
                                                §§goto(addr0155);
                                             }
                                             §§goto(addr0154);
                                          }
                                          addr0157:
                                          §§push(_loc1_);
                                          if(_loc4_ || _loc3_)
                                          {
                                             addr0155:
                                             _loc2_ = §§pop() + "AndInactive";
                                             addr0156:
                                             §§push(_loc2_);
                                             addr0154:
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr0156);
                                    }
                                    §§goto(addr00f5);
                                 }
                                 §§goto(addr012f);
                              }
                              §§goto(addr00f5);
                           }
                           §§goto(addr0110);
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr0106);
                  }
               }
               §§goto(addr0110);
            }
            §§goto(addr0156);
         }
         §§goto(addr0044);
      }
      
      override protected function stateChanged(param1:String, param2:String, param3:Boolean) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(_loc6_ || Boolean(this))
         {
            §§push(param1);
            if(!(_loc7_ && Boolean(param1)))
            {
               if(!§§pop())
               {
                  if(!(_loc7_ && Boolean(this)))
                  {
                     §§push(this._dispatchChangeFlag);
                     if(!(_loc7_ && Boolean(this)))
                     {
                        if(§§pop())
                        {
                           if(!(_loc7_ && Boolean(param1)))
                           {
                              dispatchEvent(new QuadButtonEvent(QuadButtonEvent.SELECTION_CHANGED));
                              if(!_loc6_)
                              {
                                 §§goto(addr01ec);
                              }
                           }
                           else
                           {
                              addr01a2:
                              §§push(param2);
                              if(!(_loc7_ && Boolean(this)))
                              {
                                 addr01b1:
                                 addr01b4:
                                 if(§§pop() == "downAndInactive")
                                 {
                                    if(!_loc7_)
                                    {
                                       §§goto(addr01be);
                                    }
                                    §§goto(addr0237);
                                 }
                                 §§goto(addr01d6);
                              }
                              §§goto(addr01d8);
                           }
                        }
                        else
                        {
                           this._dispatchChangeFlag = true;
                           if(!(_loc6_ || Boolean(this)))
                           {
                              addr0165:
                              §§push(param2);
                              if(_loc6_)
                              {
                                 addr016c:
                                 §§push("And");
                                 if(_loc6_)
                                 {
                                    addr0175:
                                    §§push(§§pop().split(§§pop()).pop());
                                    if(!_loc7_)
                                    {
                                       addr018b:
                                       §§push(§§pop());
                                       if(!(_loc7_ && Boolean(this)))
                                       {
                                          §§goto(addr019a);
                                       }
                                       §§goto(addr01b1);
                                    }
                                    addr019a:
                                    _loc5_ = §§pop();
                                    if(!_loc7_)
                                    {
                                       §§goto(addr01a2);
                                    }
                                    addr01be:
                                    dispatchEvent(new QuadButtonEvent(QuadButtonEvent.SELECTION_CHANGED));
                                    if(_loc6_)
                                    {
                                       addr01d6:
                                       addr01d8:
                                       if(_loc4_ != _loc5_)
                                       {
                                          if(_loc6_ || Boolean(param1))
                                          {
                                             §§goto(addr01ec);
                                          }
                                       }
                                       §§goto(addr0237);
                                    }
                                    addr01ec:
                                    §§goto(addr01f0);
                                 }
                                 §§goto(addr01b4);
                              }
                              §§goto(addr018b);
                           }
                        }
                        §§goto(addr0237);
                     }
                     else
                     {
                        addr015b:
                        if(§§pop())
                        {
                           if(!_loc7_)
                           {
                              §§goto(addr0165);
                           }
                           §§goto(addr01a2);
                        }
                        else
                        {
                           §§push("normal");
                        }
                     }
                     §§goto(addr018b);
                  }
                  §§goto(addr0165);
               }
               else
               {
                  §§push(param1);
                  if(!_loc7_)
                  {
                     §§push("And");
                     if(_loc6_ || Boolean(param1))
                     {
                        §§push(§§pop().split(§§pop()).length > 1);
                        if(_loc6_)
                        {
                           if(§§pop())
                           {
                              if(_loc6_ || Boolean(this))
                              {
                                 §§push(param1);
                                 if(_loc6_)
                                 {
                                    §§push("And");
                                    if(_loc6_)
                                    {
                                       addr00e9:
                                       §§push(§§pop().split(§§pop()).pop());
                                       if(!_loc7_)
                                       {
                                          addr011d:
                                          §§push(§§pop());
                                          if(_loc6_ || Boolean(param2))
                                          {
                                             addr012c:
                                             _loc4_ = §§pop();
                                             if(_loc6_ || param3)
                                             {
                                                §§push(param2);
                                                if(_loc6_)
                                                {
                                                   addr0143:
                                                   §§push("And");
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop().split(§§pop()).length > 1);
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr015b);
                                                      }
                                                      §§goto(addr01f0);
                                                   }
                                                   §§goto(addr0175);
                                                }
                                                §§goto(addr018b);
                                             }
                                             §§goto(addr01a2);
                                          }
                                          §§goto(addr016c);
                                       }
                                       §§goto(addr01b1);
                                    }
                                    §§goto(addr0175);
                                 }
                                 §§goto(addr012c);
                              }
                              §§goto(addr0165);
                           }
                           else
                           {
                              §§push("normal");
                              if(!(_loc7_ && param3))
                              {
                                 §§goto(addr011d);
                              }
                           }
                           §§goto(addr018b);
                        }
                        addr01f0:
                        if(this._dispatchChangeFlag)
                        {
                           if(!(_loc7_ && Boolean(this)))
                           {
                              dispatchEvent(new QuadButtonEvent(QuadButtonEvent.SELECTION_CHANGED));
                              if(!_loc7_)
                              {
                                 addr0237:
                                 super.stateChanged(param1,param2,param3);
                              }
                           }
                        }
                        else
                        {
                           this._dispatchChangeFlag = true;
                           if(!_loc7_)
                           {
                              §§goto(addr0237);
                           }
                        }
                        §§goto(addr023f);
                     }
                     §§goto(addr00e9);
                  }
                  §§goto(addr0143);
               }
            }
            §§goto(addr01b1);
         }
         addr023f:
      }
      
      public function set showBadge(param1:Boolean) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this.badgeImage);
            if(!(_loc4_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr004f:
                     this.badgeImage.visible = this.badgeImage.includeInLayout = param1;
                  }
               }
               §§goto(addr005d);
            }
            §§goto(addr004f);
         }
         addr005d:
      }
      
      public function get showBadge() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.badgeImage);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr002b:
                     return this.badgeImage.visible;
                     addr0027:
                  }
               }
               return false;
            }
            §§goto(addr002b);
         }
         §§goto(addr0027);
      }
      
      public function get dispatchChangeFlag() : Boolean
      {
         return this._dispatchChangeFlag;
      }
      
      public function set dispatchChangeFlag(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._dispatchChangeFlag = param1;
         }
      }
   }
}

