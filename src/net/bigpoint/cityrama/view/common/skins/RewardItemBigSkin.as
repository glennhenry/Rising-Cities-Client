package net.bigpoint.cityrama.view.common.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.RewardItemComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class RewardItemBigSkin extends SparkSkin implements IStateClient2
   {
      
      private var _2074527203cardBoardGfx:BriskImageDynaLib;
      
      private var _3242771item:BriskImageDynaLib;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var _1844873785newIcon:BriskImageDynaLib;
      
      private var _2121281877pricingBg:BriskImageDynaLib;
      
      private var _1557790047pricingIcon:BriskImageDynaLib;
      
      private var _191188508qualityBadge:BriskImageDynaLib;
      
      private var _1177829717stickyTape:BriskMCDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:RewardItemComponent;
      
      public function RewardItemBigSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_ || _loc1_)
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  this.mxmlContent = [this._RewardItemBigSkin_Group1_c()];
                  if(!_loc2_)
                  {
                     §§goto(addr0051);
                  }
                  §§goto(addr006f);
               }
            }
         }
         addr0051:
         this.currentState = "normal";
         if(_loc1_ || _loc1_)
         {
            addr006f:
            states = [new State({
               "name":"normal",
               "overrides":[]
            }),new State({
               "name":"disabled",
               "overrides":[]
            })];
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0043);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0057);
            }
            addr0043:
            return;
         }
         addr0057:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      private function _RewardItemBigSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 251;
            if(_loc2_ || _loc3_)
            {
               _loc1_.width = 200;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._RewardItemBigSkin_Group2_c(),this._RewardItemBigSkin_BriskImageDynaLib3_i(),this._RewardItemBigSkin_BriskMCDynaLib1_i(),this._RewardItemBigSkin_BriskImageDynaLib4_i(),this._RewardItemBigSkin_BriskImageDynaLib5_i(),this._RewardItemBigSkin_Group3_c()];
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _RewardItemBigSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.bottom = 0;
            if(!_loc2_)
            {
               _loc1_.height = 85;
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.mxmlContent = [this._RewardItemBigSkin_BriskImageDynaLib1_i(),this._RewardItemBigSkin_HGroup1_c()];
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0094:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0098);
                     }
                  }
                  §§goto(addr0094);
               }
            }
            addr0098:
            return _loc1_;
         }
         §§goto(addr0094);
      }
      
      private function _RewardItemBigSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.dynaLibName = "gui_popups_paperPopup";
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.dynaBmpSourceName = "rewardcomponentPriceBg_big";
                     if(_loc3_)
                     {
                        addr0070:
                        _loc1_.id = "pricingBg";
                        if(!_loc2_)
                        {
                           addr007b:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0093:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr009c:
                                    this.pricingBg = _loc1_;
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr00ae:
                                       BindingManager.executeBindings(this,"pricingBg",this.pricingBg);
                                    }
                                    §§goto(addr00bb);
                                 }
                                 §§goto(addr00ae);
                              }
                              §§goto(addr00bb);
                           }
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0093);
            }
            addr00bb:
            return _loc1_;
         }
         §§goto(addr0070);
      }
      
      private function _RewardItemBigSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.height = 40;
               if(!_loc2_)
               {
                  _loc1_.bottom = 13;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_ || _loc2_)
                     {
                        addr0065:
                        _loc1_.verticalAlign = "middle";
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0085:
                           _loc1_.mxmlContent = [this._RewardItemBigSkin_LocaLabel1_i(),this._RewardItemBigSkin_BriskImageDynaLib2_i()];
                           if(!_loc2_)
                           {
                              addr009b:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00af:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00b3);
                           }
                           §§goto(addr00af);
                        }
                     }
                     addr00b3:
                     return _loc1_;
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0065);
            }
         }
         §§goto(addr009b);
      }
      
      private function _RewardItemBigSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.verticalCenter = 0;
            if(_loc3_)
            {
               _loc1_.id = "labelDisplay";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0058:
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0069:
                           this.labelDisplay = _loc1_;
                           if(_loc3_)
                           {
                              addr0073:
                              BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
                           }
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0069);
               }
               §§goto(addr0073);
            }
            addr0080:
            return _loc1_;
         }
         §§goto(addr0058);
      }
      
      private function _RewardItemBigSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.verticalCenter = 0;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.id = "pricingIcon";
               addr0037:
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        addr0063:
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr007e);
                        }
                     }
                     §§goto(addr0090);
                  }
                  addr007e:
                  this.pricingIcon = _loc1_;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0090:
                     BindingManager.executeBindings(this,"pricingIcon",this.pricingIcon);
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0063);
         }
         §§goto(addr0037);
      }
      
      private function _RewardItemBigSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.top = 6;
            if(!_loc3_)
            {
               _loc1_.id = "cardBoardGfx";
               if(_loc2_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0065:
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           §§goto(addr0081);
                        }
                        §§goto(addr0093);
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0065);
            }
            addr0081:
            this.cardBoardGfx = _loc1_;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0093:
               BindingManager.executeBindings(this,"cardBoardGfx",this.cardBoardGfx);
            }
            return _loc1_;
         }
         §§goto(addr0093);
      }
      
      private function _RewardItemBigSkin_BriskMCDynaLib1_i() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(_loc3_ || _loc2_)
               {
                  addr005f:
                  _loc1_.percentWidth = 80;
                  if(_loc3_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc3_)
                     {
                        _loc1_.top = 0;
                        if(_loc3_)
                        {
                           addr007d:
                           _loc1_.id = "stickyTape";
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    _loc1_.document = this;
                                    if(_loc3_)
                                    {
                                       addr00b8:
                                       this.stickyTape = _loc1_;
                                       if(_loc3_)
                                       {
                                          addr00c2:
                                          BindingManager.executeBindings(this,"stickyTape",this.stickyTape);
                                       }
                                    }
                                    §§goto(addr00cf);
                                 }
                              }
                              §§goto(addr00b8);
                           }
                           §§goto(addr00c2);
                        }
                        §§goto(addr00cf);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr00b8);
            }
            addr00cf:
            return _loc1_;
         }
         §§goto(addr005f);
      }
      
      private function _RewardItemBigSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "hip_badge_common_big";
               if(!_loc3_)
               {
                  _loc1_.top = 6;
                  if(!_loc3_)
                  {
                     addr003e:
                     _loc1_.includeInLayout = false;
                     if(_loc2_)
                     {
                        _loc1_.visible = false;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0064:
                           _loc1_.id = "qualityBadge";
                           if(_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr0091:
                                    _loc1_.document = this;
                                    if(_loc2_)
                                    {
                                       addr009a:
                                       this.qualityBadge = _loc1_;
                                       if(_loc2_)
                                       {
                                          addr00a4:
                                          BindingManager.executeBindings(this,"qualityBadge",this.qualityBadge);
                                       }
                                       §§goto(addr00b1);
                                    }
                                    §§goto(addr00a4);
                                 }
                                 addr00b1:
                                 return _loc1_;
                              }
                              §§goto(addr009a);
                           }
                           §§goto(addr0091);
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr0064);
                  }
                  §§goto(addr009a);
               }
               §§goto(addr003e);
            }
            §§goto(addr0064);
         }
         §§goto(addr00a4);
      }
      
      private function _RewardItemBigSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.top = 0;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.right = 0;
               if(_loc2_)
               {
                  _loc1_.dynaBmpSourceName = "new_icon";
                  if(_loc2_)
                  {
                     addr005b:
                     _loc1_.dynaLibName = "gui_popups_paperPopup";
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.id = "newIcon";
                        if(_loc2_ || _loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr009b:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    addr00a4:
                                    this.newIcon = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr00ae:
                                       BindingManager.executeBindings(this,"newIcon",this.newIcon);
                                    }
                                 }
                                 §§goto(addr00bb);
                              }
                           }
                        }
                     }
                     §§goto(addr00a4);
                  }
                  addr00bb:
                  return _loc1_;
               }
               §§goto(addr009b);
            }
            §§goto(addr005b);
         }
         §§goto(addr00ae);
      }
      
      private function _RewardItemBigSkin_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.mxmlContent = [this._RewardItemBigSkin_BriskImageDynaLib6_i()];
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0072:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           addr0086:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr008a);
               }
               §§goto(addr0072);
            }
            §§goto(addr0086);
         }
         addr008a:
         return _loc1_;
      }
      
      private function _RewardItemBigSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr0037);
            }
            §§goto(addr00a4);
         }
         addr0037:
         _loc1_.verticalCenter = -20;
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.id = "item";
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     addr0074:
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§goto(addr0092);
                     }
                  }
                  §§goto(addr00a4);
               }
               addr0092:
               this.item = _loc1_;
               if(!(_loc3_ && _loc2_))
               {
                  addr00a4:
                  BindingManager.executeBindings(this,"item",this.item);
               }
               §§goto(addr00b1);
            }
            §§goto(addr0074);
         }
         addr00b1:
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get cardBoardGfx() : BriskImageDynaLib
      {
         return this._2074527203cardBoardGfx;
      }
      
      public function set cardBoardGfx(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2074527203cardBoardGfx;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._2074527203cardBoardGfx = param1;
                  if(!_loc4_)
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cardBoardGfx",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr006b);
            }
            addr007a:
            return;
         }
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : BriskImageDynaLib
      {
         return this._3242771item;
      }
      
      public function set item(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3242771item;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._3242771item = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
               }
               §§goto(addr006e);
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : LocaLabel
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1184053038labelDisplay;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1184053038labelDisplay = param1;
                  if(!_loc4_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get newIcon() : BriskImageDynaLib
      {
         return this._1844873785newIcon;
      }
      
      public function set newIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1844873785newIcon;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1844873785newIcon = param1;
                  addr0039:
                  if(_loc4_)
                  {
                     addr004f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr004f);
            }
            addr0075:
            return;
         }
         §§goto(addr0039);
      }
      
      [Bindable(event="propertyChange")]
      public function get pricingBg() : BriskImageDynaLib
      {
         return this._2121281877pricingBg;
      }
      
      public function set pricingBg(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2121281877pricingBg;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._2121281877pricingBg = param1;
                  if(_loc3_)
                  {
                     §§goto(addr004e);
                  }
                  §§goto(addr0066);
               }
               addr004e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0066:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pricingBg",_loc2_,param1));
                  }
               }
               §§goto(addr0075);
            }
            addr0075:
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get pricingIcon() : BriskImageDynaLib
      {
         return this._1557790047pricingIcon;
      }
      
      public function set pricingIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1557790047pricingIcon;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1557790047pricingIcon = param1;
                  if(_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pricingIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0057);
            }
            addr0075:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get qualityBadge() : BriskImageDynaLib
      {
         return this._191188508qualityBadge;
      }
      
      public function set qualityBadge(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._191188508qualityBadge;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._191188508qualityBadge = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qualityBadge",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get stickyTape() : BriskMCDynaLib
      {
         return this._1177829717stickyTape;
      }
      
      public function set stickyTape(param1:BriskMCDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1177829717stickyTape;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1177829717stickyTape = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stickyTape",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : RewardItemComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:RewardItemComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0075);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr0075:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0084);
            }
            addr0084:
            return;
         }
         §§goto(addr0075);
      }
   }
}

