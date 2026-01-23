package net.bigpoint.cityrama.view.cityTreasury.ui.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryInternalPackItemVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class CityTreasuryPackItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _1194063234iconBG:BriskImageDynaLib;
      
      private var _1638757991iconNew:BriskImageDynaLib;
      
      private var _1780140989iconTopLeft:BriskImageDynaLib;
      
      private var _1177184812itemIcon:BriskImageDynaLib;
      
      private var _283910695masterBG:BriskImageDynaLib;
      
      private var _1360146064miniIcon:BriskImageDynaLib;
      
      private var _1360135771miniInfo:LocaLabel;
      
      private var _315061426priceBG:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CityTreasuryInternalPackItemVo;
      
      private var _dirty:Boolean;
      
      private var _currentState:String = "normal";
      
      public function CityTreasuryPackItemRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
            if(_loc1_ || _loc1_)
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc2_)
               {
                  this.minWidth = 78;
                  if(_loc1_ || _loc2_)
                  {
                     this.minHeight = 72;
                     if(_loc1_ || _loc1_)
                     {
                        §§goto(addr006d);
                     }
                     §§goto(addr00e4);
                  }
                  §§goto(addr010e);
               }
               addr006d:
               this.autoDrawBackground = false;
               if(!(_loc2_ && _loc1_))
               {
                  addr007f:
                  this.mxmlContent = [this._CityTreasuryPackItemRenderer_BriskImageDynaLib1_i(),this._CityTreasuryPackItemRenderer_BriskImageDynaLib2_i(),this._CityTreasuryPackItemRenderer_BriskImageDynaLib3_i(),this._CityTreasuryPackItemRenderer_VGroup1_c(),this._CityTreasuryPackItemRenderer_BriskImageDynaLib6_i(),this._CityTreasuryPackItemRenderer_BriskImageDynaLib7_i()];
                  if(!(_loc2_ && _loc1_))
                  {
                     this.currentState = "normal";
                     if(_loc1_ || Boolean(this))
                     {
                        addr00d3:
                        this.addEventListener("creationComplete",this.___CityTreasuryPackItemRenderer_ItemRenderer1_creationComplete);
                        if(_loc1_)
                        {
                           addr00e4:
                           this.addEventListener("rollOver",this.___CityTreasuryPackItemRenderer_ItemRenderer1_rollOver);
                           if(_loc1_)
                           {
                              §§goto(addr00f5);
                           }
                        }
                        §§goto(addr010e);
                     }
                     §§goto(addr00f5);
                  }
                  §§goto(addr00d3);
               }
               addr00f5:
               this.addEventListener("rollOut",this.___CityTreasuryPackItemRenderer_ItemRenderer1_rollOut);
               if(_loc1_ || _loc2_)
               {
                  states = [new State({
                     "name":"normal",
                     "overrides":[]
                  }),new State({
                     "name":"selected",
                     "overrides":[new SetProperty().initializeFromObject({
                        "target":"masterBG",
                        "name":"dynaBmpSourceName",
                        "value":"item_master_bg_green"
                     })]
                  }),new State({
                     "name":"overAndSelected",
                     "overrides":[new SetProperty().initializeFromObject({
                        "target":"masterBG",
                        "name":"dynaBmpSourceName",
                        "value":"item_master_bg_green"
                     })]
                  }),new State({
                     "name":"over",
                     "overrides":[new SetProperty().initializeFromObject({
                        "target":"masterBG",
                        "name":"dynaBmpSourceName",
                        "value":"item_master_bg_green"
                     })]
                  })];
                  addr010e:
               }
               return;
            }
            §§goto(addr00d3);
         }
         §§goto(addr007f);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && _loc3_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  addr0045:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         §§goto(addr0045);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.autoDrawBackground = false;
         }
      }
      
      override public function set selected(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(param1)
            {
               if(_loc2_ || _loc2_)
               {
                  §§push(this.getCurrentRendererState());
                  if(_loc2_)
                  {
                     §§push("over");
                     if(!_loc3_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc2_ || _loc3_)
                           {
                              this._currentState = "overAndSelected";
                              if(_loc2_ || _loc3_)
                              {
                              }
                           }
                           addr00e2:
                           super.selected = param1;
                        }
                        else
                        {
                           §§push(this.getCurrentRendererState());
                           if(_loc2_)
                           {
                              addr0077:
                              §§push("normal");
                              if(!(_loc3_ && param1))
                              {
                                 addr0087:
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       this._currentState = "selected";
                                       if(_loc3_)
                                       {
                                          §§goto(addr00be);
                                       }
                                    }
                                 }
                                 §§goto(addr00e2);
                              }
                              else
                              {
                                 addr00b5:
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       addr00be:
                                       this._currentState = "over";
                                       if(_loc2_ || _loc3_)
                                       {
                                          §§goto(addr00e2);
                                       }
                                       §§goto(addr00e7);
                                    }
                                    §§goto(addr00e2);
                                 }
                                 else
                                 {
                                    this._currentState = "normal";
                                    if(!_loc3_)
                                    {
                                       §§goto(addr00e2);
                                    }
                                 }
                              }
                              §§goto(addr00e7);
                           }
                           else
                           {
                              addr00b2:
                              §§push("overAndSelected");
                           }
                           §§goto(addr00b5);
                        }
                        addr00e7:
                        return;
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0077);
               }
               §§goto(addr00e2);
            }
            else
            {
               §§push(this.getCurrentRendererState());
            }
            §§goto(addr00b2);
         }
         §§goto(addr00e2);
      }
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.data = param1;
            if(_loc2_)
            {
               if(!RandomUtilities.isEqual(this._data,param1))
               {
                  if(!_loc3_)
                  {
                     this._dirty = true;
                     if(_loc2_)
                     {
                        §§goto(addr004b);
                     }
                     §§goto(addr005c);
                  }
                  addr004b:
                  this._data = CityTreasuryInternalPackItemVo(param1);
                  if(!_loc3_)
                  {
                     addr005c:
                     invalidateProperties();
                  }
                  §§goto(addr0061);
               }
               addr0061:
               return;
            }
            §§goto(addr005c);
         }
         §§goto(addr004b);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(Boolean(this._data));
            if(_loc1_ || _loc1_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0051:
                        §§push(this._dirty);
                        if(_loc1_)
                        {
                           addr0050:
                           §§push(§§pop());
                        }
                        if(§§pop())
                        {
                           if(_loc1_ || Boolean(this))
                           {
                              this._dirty = false;
                              if(_loc1_)
                              {
                                 this.iconBG.briskDynaVo = this._data.listBackgroundGfx;
                                 if(!_loc2_)
                                 {
                                    addr008a:
                                    this.miniIcon.briskDynaVo = this._data.amountIconGfx;
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       addr00a6:
                                       this.itemIcon.briskDynaVo = this._data.smallPackGfx;
                                       if(!_loc2_)
                                       {
                                          this.iconTopLeft.briskDynaVo = this._data.smallTopLeftIconGfx;
                                          §§goto(addr00ba);
                                       }
                                       §§goto(addr00d8);
                                    }
                                    §§goto(addr0100);
                                 }
                                 addr00ba:
                                 if(!_loc2_)
                                 {
                                    addr00d8:
                                    this.miniInfo.text = LocaUtils.getThousendSeperatedNumber(this._data.packContentAmount);
                                    if(!_loc2_)
                                    {
                                       toolTip = this._data.tooltip;
                                       if(!_loc2_)
                                       {
                                          addr0100:
                                          super.commitProperties();
                                       }
                                       §§goto(addr0105);
                                    }
                                    §§goto(addr0100);
                                 }
                                 §§goto(addr0105);
                              }
                              §§goto(addr008a);
                           }
                           addr0105:
                           return;
                        }
                        §§goto(addr0100);
                     }
                     §§goto(addr00a6);
                  }
               }
               §§goto(addr0051);
            }
            §§goto(addr0050);
         }
         §§goto(addr0100);
      }
      
      private function rollOverHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.setCurrentState("over",false);
         }
      }
      
      private function rollOutHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!selected)
            {
               if(!_loc2_)
               {
                  this.setCurrentState("normal",false);
               }
            }
         }
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            this._currentState = param1;
            if(!(_loc4_ && Boolean(param1)))
            {
               super.setCurrentState(param1,param2);
            }
         }
      }
      
      override protected function getCurrentRendererState() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._currentState);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop() != "")
               {
                  if(!_loc2_)
                  {
                     addr003f:
                     return this._currentState;
                     addr003b:
                  }
               }
               return super.getCurrentRendererState();
            }
            §§goto(addr003f);
         }
         §§goto(addr003b);
      }
      
      override public function get measuredWidth() : Number
      {
         return this.minWidth;
      }
      
      override public function get measuredHeight() : Number
      {
         return this.minHeight;
      }
      
      private function _CityTreasuryPackItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(_loc2_ || _loc3_)
            {
               §§goto(addr0039);
            }
            §§goto(addr0060);
         }
         addr0039:
         _loc1_.dynaBmpSourceName = "item_master_bg_normal";
         if(_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && _loc2_))
            {
               addr0060:
               _loc1_.top = 3;
               if(_loc2_)
               {
                  _loc1_.id = "masterBG";
                  if(_loc2_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           §§goto(addr00a0);
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr00b1);
                  }
                  addr00a0:
                  _loc1_.document = this;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr00b1:
                     this.masterBG = _loc1_;
                     if(!_loc3_)
                     {
                        addr00bb:
                        BindingManager.executeBindings(this,"masterBG",this.masterBG);
                     }
                  }
                  §§goto(addr00c8);
               }
               §§goto(addr00bb);
            }
            §§goto(addr00b1);
         }
         addr00c8:
         return _loc1_;
      }
      
      private function _CityTreasuryPackItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "item_amount_bg";
               if(_loc3_)
               {
                  _loc1_.top = 66;
                  if(!_loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0065:
                        _loc1_.id = "priceBG";
                        if(_loc3_ || _loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr0090);
                              }
                           }
                           §§goto(addr0099);
                        }
                        §§goto(addr00ab);
                     }
                     addr0090:
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        addr0099:
                        this.priceBG = _loc1_;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr00ab:
                           BindingManager.executeBindings(this,"priceBG",this.priceBG);
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr0099);
            }
         }
         §§goto(addr0065);
      }
      
      private function _CityTreasuryPackItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.top = 6;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.id = "iconBG";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              addr0085:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr008e);
                              }
                           }
                           §§goto(addr0098);
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr008e);
            }
            §§goto(addr0085);
         }
         addr008e:
         this.iconBG = _loc1_;
         if(!_loc2_)
         {
            addr0098:
            BindingManager.executeBindings(this,"iconBG",this.iconBG);
         }
         return _loc1_;
      }
      
      private function _CityTreasuryPackItemRenderer_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.gap = 1;
            if(_loc2_ || _loc2_)
            {
               _loc1_.top = 8;
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0085);
               }
               §§goto(addr006f);
            }
            addr0059:
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               addr006f:
               _loc1_.mxmlContent = [this._CityTreasuryPackItemRenderer_VGroup2_c(),this._CityTreasuryPackItemRenderer_HGroup1_c()];
               if(!_loc3_)
               {
                  addr0085:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0099:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr009d);
               }
               §§goto(addr0099);
            }
            §§goto(addr009d);
         }
         addr009d:
         return _loc1_;
      }
      
      private function _CityTreasuryPackItemRenderer_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.height = 60;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.width = 64;
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§goto(addr0056);
               }
               §§goto(addr0060);
            }
            addr0056:
            _loc1_.horizontalAlign = "center";
            if(!_loc2_)
            {
               addr0060:
               _loc1_.verticalAlign = "middle";
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._CityTreasuryPackItemRenderer_BriskImageDynaLib4_i()];
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr008f:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr009b:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr009f);
                  }
               }
               §§goto(addr009b);
            }
            addr009f:
            return _loc1_;
         }
         §§goto(addr008f);
      }
      
      private function _CityTreasuryPackItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_improvementStore";
            if(_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0053:
                  _loc1_.verticalCenter = 0;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "itemIcon";
                     if(_loc3_ || _loc2_)
                     {
                        addr0082:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr0097);
                              }
                              §§goto(addr00a1);
                           }
                        }
                     }
                     addr0097:
                     this.itemIcon = _loc1_;
                     if(_loc3_)
                     {
                        addr00a1:
                        BindingManager.executeBindings(this,"itemIcon",this.itemIcon);
                     }
                     return _loc1_;
                  }
                  §§goto(addr0082);
               }
               §§goto(addr00a1);
            }
            §§goto(addr0082);
         }
         §§goto(addr0053);
      }
      
      private function _CityTreasuryPackItemRenderer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.width = 60;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.minWidth = 1;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.maxWidth = 60;
                  if(_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.verticalAlign = "middle";
                        if(!_loc3_)
                        {
                           addr0079:
                           _loc1_.gap = 2;
                           if(!_loc3_)
                           {
                              addr0090:
                              _loc1_.mxmlContent = [this._CityTreasuryPackItemRenderer_BriskImageDynaLib5_i(),this._CityTreasuryPackItemRenderer_LocaLabel1_i()];
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr00ae);
                              }
                              §§goto(addr00ba);
                           }
                        }
                        §§goto(addr00ae);
                     }
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0079);
            }
            §§goto(addr00ba);
         }
         addr00ae:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr00ba:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryPackItemRenderer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "mini_icon_good";
               if(_loc2_)
               {
                  _loc1_.minWidth = 14;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.minHeight = 14;
                     if(_loc2_ || Boolean(this))
                     {
                        addr006f:
                        _loc1_.id = "miniIcon";
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0082:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 §§goto(addr0096);
                              }
                              §§goto(addr00c4);
                           }
                           §§goto(addr00b2);
                        }
                        addr0096:
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr00b2:
                           this.miniIcon = _loc1_;
                           if(!(_loc3_ && _loc2_))
                           {
                              addr00c4:
                              BindingManager.executeBindings(this,"miniIcon",this.miniIcon);
                           }
                        }
                        §§goto(addr00d1);
                     }
                     §§goto(addr00c4);
                  }
                  §§goto(addr0082);
               }
               addr00d1:
               return _loc1_;
            }
            §§goto(addr006f);
         }
         §§goto(addr00b2);
      }
      
      private function _CityTreasuryPackItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.maxWidth = 52;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.maxDisplayedLines = 1;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.styleName = "tenLeftDark";
                  if(!_loc2_)
                  {
                     _loc1_.setStyle("paddingTop",5);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.id = "miniInfo";
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr00a8:
                                    this.miniInfo = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00b2:
                                       BindingManager.executeBindings(this,"miniInfo",this.miniInfo);
                                    }
                                 }
                                 §§goto(addr00bf);
                              }
                           }
                        }
                        §§goto(addr00a8);
                     }
                     addr00bf:
                     return _loc1_;
                  }
                  §§goto(addr00b2);
               }
               §§goto(addr00a8);
            }
         }
         §§goto(addr00b2);
      }
      
      private function _CityTreasuryPackItemRenderer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || _loc3_)
            {
               _loc1_.top = 0;
               if(!_loc2_)
               {
                  addr0050:
                  _loc1_.left = 5;
                  if(!_loc2_)
                  {
                     addr005a:
                     _loc1_.id = "iconTopLeft";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr006d:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr008d:
                                 this.iconTopLeft = _loc1_;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr009f:
                                    BindingManager.executeBindings(this,"iconTopLeft",this.iconTopLeft);
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr009f);
                        }
                        §§goto(addr008d);
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr008d);
               }
               §§goto(addr005a);
            }
            §§goto(addr006d);
         }
         §§goto(addr0050);
      }
      
      private function _CityTreasuryPackItemRenderer_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "new_icon";
               if(!(_loc3_ && Boolean(this)))
               {
                  addr003c:
                  _loc1_.width = 24;
                  if(_loc2_ || _loc2_)
                  {
                     addr004e:
                     _loc1_.height = 24;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.left = 5;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr007d:
                           _loc1_.visible = false;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              _loc1_.includeInLayout = false;
                              if(!(_loc3_ && _loc2_))
                              {
                                 _loc1_.id = "iconNew";
                                 if(_loc2_)
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(_loc2_)
                                       {
                                          _loc1_.document = this;
                                          if(!_loc3_)
                                          {
                                             addr00c9:
                                             this.iconNew = _loc1_;
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                BindingManager.executeBindings(this,"iconNew",this.iconNew);
                                             }
                                          }
                                       }
                                       §§goto(addr00e8);
                                    }
                                 }
                                 §§goto(addr00c9);
                              }
                              §§goto(addr00e8);
                           }
                        }
                        §§goto(addr00c9);
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr004e);
            }
            §§goto(addr003c);
         }
         addr00e8:
         return _loc1_;
      }
      
      public function ___CityTreasuryPackItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      public function ___CityTreasuryPackItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.rollOverHandler(param1);
         }
      }
      
      public function ___CityTreasuryPackItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.rollOutHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconBG() : BriskImageDynaLib
      {
         return this._1194063234iconBG;
      }
      
      public function set iconBG(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1194063234iconBG;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1194063234iconBG = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconBG",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0075);
            }
         }
         addr0084:
      }
      
      [Bindable(event="propertyChange")]
      public function get iconNew() : BriskImageDynaLib
      {
         return this._1638757991iconNew;
      }
      
      public function set iconNew(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1638757991iconNew;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1638757991iconNew = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconNew",_loc2_,param1));
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
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get iconTopLeft() : BriskImageDynaLib
      {
         return this._1780140989iconTopLeft;
      }
      
      public function set iconTopLeft(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1780140989iconTopLeft;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1780140989iconTopLeft = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconTopLeft",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemIcon() : BriskImageDynaLib
      {
         return this._1177184812itemIcon;
      }
      
      public function set itemIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1177184812itemIcon;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1177184812itemIcon = param1;
                  if(_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemIcon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get masterBG() : BriskImageDynaLib
      {
         return this._283910695masterBG;
      }
      
      public function set masterBG(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._283910695masterBG;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  addr004f:
                  this._283910695masterBG = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masterBG",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004f);
      }
      
      [Bindable(event="propertyChange")]
      public function get miniIcon() : BriskImageDynaLib
      {
         return this._1360146064miniIcon;
      }
      
      public function set miniIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1360146064miniIcon;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1360146064miniIcon = param1;
                  addr0041:
                  if(!_loc3_)
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"miniIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0059);
            }
            addr007f:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get miniInfo() : LocaLabel
      {
         return this._1360135771miniInfo;
      }
      
      public function set miniInfo(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1360135771miniInfo;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1360135771miniInfo = param1;
                  if(_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"miniInfo",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0055);
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get priceBG() : BriskImageDynaLib
      {
         return this._315061426priceBG;
      }
      
      public function set priceBG(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._315061426priceBG;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._315061426priceBG = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceBG",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
   }
}

