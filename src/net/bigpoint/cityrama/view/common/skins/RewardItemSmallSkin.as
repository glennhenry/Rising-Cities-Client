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
   
   public class RewardItemSmallSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1628856716buffMultiplier:BriskImageDynaLib;
      
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
      
      public function RewardItemSmallSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               addr0025:
               if(!(_loc2_ && _loc1_))
               {
                  addr0049:
                  this.mxmlContent = [this._RewardItemSmallSkin_Group1_c()];
                  if(!_loc2_)
                  {
                     this.currentState = "normal";
                     if(_loc1_)
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
                     return;
                  }
               }
               §§goto(addr006f);
            }
            §§goto(addr0049);
         }
         §§goto(addr0025);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(this))
            {
               addr0048:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || _loc2_)
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0048);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      private function _RewardItemSmallSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 160;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.width = 115;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._RewardItemSmallSkin_Group2_c(),this._RewardItemSmallSkin_BriskImageDynaLib3_i(),this._RewardItemSmallSkin_BriskMCDynaLib1_i(),this._RewardItemSmallSkin_BriskImageDynaLib4_i(),this._RewardItemSmallSkin_Group4_c(),this._RewardItemSmallSkin_BriskImageDynaLib6_i(),this._RewardItemSmallSkin_BriskImageDynaLib7_i()];
                  §§goto(addr0048);
               }
            }
            §§goto(addr0096);
         }
         addr0048:
         if(!_loc3_)
         {
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr0096:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _RewardItemSmallSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.bottom = 0;
            if(_loc3_)
            {
               _loc1_.height = 65;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.mxmlContent = [this._RewardItemSmallSkin_Group3_c(),this._RewardItemSmallSkin_HGroup1_c()];
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0085:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0085);
      }
      
      private function _RewardItemSmallSkin_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.left = 3;
            if(!_loc3_)
            {
               _loc1_.bottom = 15;
               if(_loc2_)
               {
                  addr0054:
                  _loc1_.mxmlContent = [this._RewardItemSmallSkin_BriskImageDynaLib1_i()];
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0078:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr0078);
         }
         §§goto(addr0054);
      }
      
      private function _RewardItemSmallSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.left = 2;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.verticalCenter = 0;
               if(!_loc2_)
               {
                  addr003e:
                  _loc1_.dynaLibName = "gui_popups_paperPopup";
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.dynaBmpSourceName = "rewardcomponentPriceBg_small";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.id = "pricingBg";
                        if(_loc3_ || Boolean(this))
                        {
                           addr0083:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 addr00a4:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00b5:
                                    this.pricingBg = _loc1_;
                                    if(_loc3_)
                                    {
                                       BindingManager.executeBindings(this,"pricingBg",this.pricingBg);
                                    }
                                 }
                              }
                              §§goto(addr00cc);
                           }
                           §§goto(addr00b5);
                        }
                        §§goto(addr00cc);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr0083);
               }
               addr00cc:
               return _loc1_;
            }
            §§goto(addr003e);
         }
         §§goto(addr00b5);
      }
      
      private function _RewardItemSmallSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.height = 25;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.bottom = 17;
                  addr004b:
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_ || _loc3_)
                     {
                        addr007b:
                        _loc1_.verticalAlign = "middle";
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.mxmlContent = [this._RewardItemSmallSkin_LocaLabel1_i(),this._RewardItemSmallSkin_BriskImageDynaLib2_i()];
                           if(_loc3_)
                           {
                              addr00b1:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00c9);
                        }
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr007b);
               }
               addr00c9:
               return _loc1_;
            }
            §§goto(addr004b);
         }
         §§goto(addr007b);
      }
      
      private function _RewardItemSmallSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.verticalCenter = 3;
            if(_loc3_)
            {
               _loc1_.id = "labelDisplay";
               if(_loc3_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0068:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr0071:
                           this.labelDisplay = _loc1_;
                           if(!_loc2_)
                           {
                              addr007b:
                              BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
                           }
                        }
                        §§goto(addr0088);
                     }
                  }
                  §§goto(addr0071);
               }
               addr0088:
               return _loc1_;
            }
            §§goto(addr007b);
         }
         §§goto(addr0068);
      }
      
      private function _RewardItemSmallSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.verticalCenter = 0;
            if(_loc3_)
            {
               _loc1_.id = "pricingIcon";
               if(_loc3_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0084:
                           this.pricingIcon = _loc1_;
                           if(!_loc2_)
                           {
                              addr008e:
                              BindingManager.executeBindings(this,"pricingIcon",this.pricingIcon);
                           }
                        }
                        §§goto(addr009b);
                     }
                  }
                  §§goto(addr0084);
               }
               addr009b:
               return _loc1_;
            }
         }
         §§goto(addr008e);
      }
      
      private function _RewardItemSmallSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.top = 6;
            if(_loc3_)
            {
               §§goto(addr0029);
            }
            §§goto(addr007c);
         }
         addr0029:
         _loc1_.id = "cardBoardGfx";
         if(!(_loc2_ && _loc3_))
         {
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     addr0072:
                     this.cardBoardGfx = _loc1_;
                     if(_loc3_)
                     {
                        addr007c:
                        BindingManager.executeBindings(this,"cardBoardGfx",this.cardBoardGfx);
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr007c);
            }
            §§goto(addr0072);
         }
         addr0089:
         return _loc1_;
      }
      
      private function _RewardItemSmallSkin_BriskMCDynaLib1_i() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && _loc2_))
            {
               addr003a:
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.percentWidth = 80;
                  if(_loc3_ || Boolean(this))
                  {
                     addr006c:
                     _loc1_.horizontalCenter = 0;
                     if(_loc3_)
                     {
                        addr0076:
                        _loc1_.top = 0;
                        if(_loc3_ || Boolean(this))
                        {
                           addr0088:
                           _loc1_.id = "stickyTape";
                           if(!_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00b4:
                                    _loc1_.document = this;
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       addr00c5:
                                       this.stickyTape = _loc1_;
                                       if(_loc3_)
                                       {
                                          addr00cf:
                                          BindingManager.executeBindings(this,"stickyTape",this.stickyTape);
                                       }
                                       §§goto(addr00dc);
                                    }
                                    §§goto(addr00cf);
                                 }
                                 addr00dc:
                                 return _loc1_;
                              }
                              §§goto(addr00c5);
                           }
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr00c5);
               }
               §§goto(addr006c);
            }
            §§goto(addr0076);
         }
         §§goto(addr003a);
      }
      
      private function _RewardItemSmallSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "hip_badge_common_small";
               if(!_loc3_)
               {
                  §§goto(addr003c);
               }
               §§goto(addr00ac);
            }
            §§goto(addr00c8);
         }
         addr003c:
         _loc1_.top = 6;
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.left = 2;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.includeInLayout = false;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr007c:
                  _loc1_.visible = false;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "qualityBadge";
                     if(_loc2_)
                     {
                        addr0098:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr00ac:
                              _loc1_.document = this;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr00c8:
                                 this.qualityBadge = _loc1_;
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00da:
                                    BindingManager.executeBindings(this,"qualityBadge",this.qualityBadge);
                                 }
                              }
                              §§goto(addr00e7);
                           }
                           §§goto(addr00da);
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr00e7);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr00c8);
            }
            §§goto(addr007c);
         }
         addr00e7:
         return _loc1_;
      }
      
      private function _RewardItemSmallSkin_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._RewardItemSmallSkin_BriskImageDynaLib5_i()];
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0077:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr0077);
            }
         }
         addr007b:
         return _loc1_;
      }
      
      private function _RewardItemSmallSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               addr002b:
               _loc1_.verticalCenter = -20;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0049:
                  _loc1_.id = "item";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0068:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0086:
                              this.item = _loc1_;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr0098:
                                 BindingManager.executeBindings(this,"item",this.item);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr0068);
            }
            §§goto(addr0049);
         }
         §§goto(addr002b);
      }
      
      private function _RewardItemSmallSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.top = 0;
            if(!_loc2_)
            {
               _loc1_.right = 0;
               if(!(_loc2_ && _loc3_))
               {
                  addr0044:
                  _loc1_.dynaBmpSourceName = "new_icon";
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.dynaLibName = "gui_popups_paperPopup";
                     if(_loc3_)
                     {
                        addr006e:
                        _loc1_.id = "newIcon";
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr009f:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    §§goto(addr00a8);
                                 }
                                 §§goto(addr00b2);
                              }
                           }
                           addr00a8:
                           this.newIcon = _loc1_;
                           if(!_loc2_)
                           {
                              addr00b2:
                              BindingManager.executeBindings(this,"newIcon",this.newIcon);
                           }
                           §§goto(addr00bf);
                        }
                     }
                     addr00bf:
                     return _loc1_;
                  }
                  §§goto(addr009f);
               }
               §§goto(addr00a8);
            }
            §§goto(addr0044);
         }
         §§goto(addr006e);
      }
      
      private function _RewardItemSmallSkin_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.top = -1;
            if(_loc2_)
            {
               _loc1_.right = 0;
               if(_loc2_)
               {
                  _loc1_.dynaBmpSourceName = "buff_16_small";
                  if(!_loc3_)
                  {
                     _loc1_.dynaLibName = "gui_popups_citywheel";
                     if(!_loc3_)
                     {
                        addr0054:
                        _loc1_.id = "buffMultiplier";
                        if(_loc2_ || _loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 addr0088:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    §§goto(addr0091);
                                 }
                              }
                              §§goto(addr009b);
                           }
                           §§goto(addr0091);
                        }
                     }
                     §§goto(addr0088);
                  }
                  addr0091:
                  this.buffMultiplier = _loc1_;
                  if(!_loc3_)
                  {
                     addr009b:
                     BindingManager.executeBindings(this,"buffMultiplier",this.buffMultiplier);
                  }
                  §§goto(addr00a8);
               }
            }
            §§goto(addr0054);
         }
         addr00a8:
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get buffMultiplier() : BriskImageDynaLib
      {
         return this._1628856716buffMultiplier;
      }
      
      public function set buffMultiplier(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1628856716buffMultiplier;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1628856716buffMultiplier = param1;
                  if(!_loc4_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buffMultiplier",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0055);
            }
         }
         addr007c:
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._2074527203cardBoardGfx = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cardBoardGfx",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0067);
               }
            }
         }
         addr0076:
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : BriskImageDynaLib
      {
         return this._3242771item;
      }
      
      public function set item(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3242771item;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._3242771item = param1;
                  if(_loc3_)
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0074);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : LocaLabel
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1184053038labelDisplay;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1184053038labelDisplay = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0075);
            }
            addr0084:
            return;
         }
         §§goto(addr0066);
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
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1844873785newIcon = param1;
                  addr0046:
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newIcon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0046);
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
               if(!(_loc4_ && _loc3_))
               {
                  this._2121281877pricingBg = param1;
                  addr0040:
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pricingBg",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr005d);
            }
            addr007c:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get pricingIcon() : BriskImageDynaLib
      {
         return this._1557790047pricingIcon;
      }
      
      public function set pricingIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1557790047pricingIcon;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1557790047pricingIcon = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pricingIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0063);
            }
         }
         addr0072:
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  addr003e:
                  this._191188508qualityBadge = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qualityBadge",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr0073);
               }
            }
            addr0082:
            return;
         }
         §§goto(addr003e);
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
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1177829717stickyTape = param1;
                  if(_loc3_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stickyTape",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr005d);
            }
            addr007b:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : RewardItemComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:RewardItemComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0051:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0060);
               }
               §§goto(addr0051);
            }
         }
         addr0060:
      }
   }
}

