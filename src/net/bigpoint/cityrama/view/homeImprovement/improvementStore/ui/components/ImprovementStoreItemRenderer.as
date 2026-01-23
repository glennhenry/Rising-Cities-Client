package net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementStoreListVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ImprovementStoreItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _1194063234iconBG:BriskImageDynaLib;
      
      private var _1638757991iconNew:BriskImageDynaLib;
      
      private var _1643236957iconSparkle:BriskImageDynaLib;
      
      private var _1177184812itemIcon:BriskImageDynaLib;
      
      private var _283910695masterBG:BriskImageDynaLib;
      
      private var _315061426priceBG:BriskImageDynaLib;
      
      private var _2126080670priceIcon:BriskImageDynaLib;
      
      private var _1481293013priceLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ImprovementStoreListVo;
      
      private var _dirty:Boolean;
      
      private var _currentState:String = "normal";
      
      public function ImprovementStoreItemRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.minWidth = 78;
                  if(_loc1_)
                  {
                     this.minHeight = 72;
                     if(_loc1_)
                     {
                        this.autoDrawBackground = false;
                        if(_loc1_)
                        {
                           this.mxmlContent = [this._ImprovementStoreItemRenderer_BriskImageDynaLib1_i(),this._ImprovementStoreItemRenderer_BriskImageDynaLib2_i(),this._ImprovementStoreItemRenderer_BriskImageDynaLib3_i(),this._ImprovementStoreItemRenderer_BriskImageDynaLib4_i(),this._ImprovementStoreItemRenderer_BriskImageDynaLib5_i(),this._ImprovementStoreItemRenderer_VGroup1_c()];
                           if(!_loc2_)
                           {
                              addr0085:
                              this.currentState = "normal";
                              if(_loc1_ || _loc2_)
                              {
                                 this.addEventListener("creationComplete",this.___ImprovementStoreItemRenderer_ItemRenderer1_creationComplete);
                                 §§goto(addr0099);
                              }
                              §§goto(addr00c5);
                           }
                           §§goto(addr00b4);
                        }
                        addr0099:
                        if(!_loc2_)
                        {
                           addr00b4:
                           this.addEventListener("rollOver",this.___ImprovementStoreItemRenderer_ItemRenderer1_rollOver);
                           if(!_loc2_)
                           {
                              addr00c5:
                              this.addEventListener("rollOut",this.___ImprovementStoreItemRenderer_ItemRenderer1_rollOut);
                              if(_loc1_ || Boolean(this))
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
                                 addr00de:
                              }
                              §§goto(addr017d);
                           }
                           §§goto(addr00de);
                        }
                        §§goto(addr017d);
                     }
                     §§goto(addr00b4);
                  }
               }
            }
            §§goto(addr0085);
         }
         addr017d:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.autoDrawBackground = false;
         }
      }
      
      override public function set selected(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            if(param1)
            {
               if(_loc2_)
               {
                  §§push(this.getCurrentRendererState());
                  if(_loc2_)
                  {
                     §§push("over");
                     if(_loc2_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              this._currentState = "overAndSelected";
                              if(_loc2_)
                              {
                              }
                              addr00f3:
                              super.selected = param1;
                           }
                        }
                        else
                        {
                           §§push(this.getCurrentRendererState());
                           if(_loc2_)
                           {
                              §§push("normal");
                              if(!(_loc3_ && param1))
                              {
                                 addr0081:
                                 if(§§pop() == §§pop())
                                 {
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr0092:
                                       this._currentState = "selected";
                                       if(_loc3_ && _loc2_)
                                       {
                                       }
                                    }
                                 }
                                 §§goto(addr00f3);
                              }
                              else
                              {
                                 addr00b2:
                                 if(§§pop() == §§pop())
                                 {
                                    if(!(_loc3_ && param1))
                                    {
                                       this._currentState = "over";
                                       if(_loc2_ || _loc2_)
                                       {
                                       }
                                       §§goto(addr00f3);
                                    }
                                 }
                                 else
                                 {
                                    this._currentState = "normal";
                                    if(!_loc3_)
                                    {
                                       §§goto(addr00f3);
                                    }
                                 }
                              }
                              §§goto(addr00f8);
                           }
                           else
                           {
                              addr00af:
                              §§push("overAndSelected");
                           }
                           §§goto(addr00b2);
                        }
                        addr00f8:
                        return;
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr00af);
               }
               §§goto(addr0092);
            }
            else
            {
               §§push(this.getCurrentRendererState());
            }
            §§goto(addr00af);
         }
         §§goto(addr00f3);
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.data = param1;
            if(_loc3_ || Boolean(param1))
            {
               if(!RandomUtilities.isEqual(this._data,param1))
               {
                  if(!_loc2_)
                  {
                     this._dirty = true;
                     if(!(_loc2_ && Boolean(param1)))
                     {
                        this._data = ImprovementStoreListVo(param1);
                        if(!_loc2_)
                        {
                           addr007b:
                           invalidateProperties();
                        }
                        §§goto(addr0080);
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr0080);
            }
            §§goto(addr007b);
         }
         addr0080:
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(Boolean(this._data));
            if(!(_loc3_ && Boolean(this)))
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(!_loc3_)
                  {
                     addr0032:
                     §§pop();
                     if(_loc2_ || _loc2_)
                     {
                        addr004a:
                        §§push(this._dirty);
                        if(!_loc3_)
                        {
                           addr0049:
                           §§push(§§pop());
                        }
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              addr0053:
                              this._dirty = false;
                              if(_loc2_)
                              {
                                 this.iconSparkle.visible = this.iconSparkle.includeInLayout = this._data.showSparkle;
                                 if(!_loc3_)
                                 {
                                    addr0087:
                                    this.iconBG.briskDynaVo = this._data.backgroundGfx;
                                    if(_loc2_)
                                    {
                                       this.priceIcon.briskDynaVo = this._data.miniIconGfx;
                                       if(!_loc3_)
                                       {
                                          this.itemIcon.briskDynaVo = this._data.itemGfx;
                                          §§goto(addr00ae);
                                       }
                                    }
                                    §§goto(addr00d4);
                                 }
                                 addr00ae:
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00d4:
                                    this.priceLabel.text = this._data.priceText;
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr00ef:
                                       super.commitProperties();
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr0087);
                           }
                        }
                        §§goto(addr00ef);
                     }
                     §§goto(addr0053);
                  }
                  §§goto(addr0049);
               }
               §§goto(addr004a);
            }
            §§goto(addr0032);
         }
         §§goto(addr00d4);
      }
      
      private function rollOverHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,UIInfolayerDispatcherEvent.CALLER_TYPE_IMPROVEMENT_BOOSTER,this._data.configId));
            if(_loc2_)
            {
               this.setCurrentState("over",false);
            }
         }
      }
      
      private function rollOutHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            if(!selected)
            {
               if(_loc3_)
               {
                  this.setCurrentState("normal",false);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0050:
                     dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER));
                  }
                  §§goto(addr0062);
               }
            }
            §§goto(addr0050);
         }
         addr0062:
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(this))
         {
            this._currentState = param1;
            if(_loc4_ || param2)
            {
               addr0040:
               super.setCurrentState(param1,param2);
            }
            return;
         }
         §§goto(addr0040);
      }
      
      override protected function getCurrentRendererState() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this._currentState);
            if(!_loc1_)
            {
               if(§§pop() != "")
               {
                  if(_loc2_)
                  {
                     §§goto(addr0040);
                  }
               }
               §§goto(addr0041);
            }
            addr0040:
            return this._currentState;
         }
         addr0041:
         return super.getCurrentRendererState();
      }
      
      override public function get measuredWidth() : Number
      {
         return this.minWidth;
      }
      
      override public function get measuredHeight() : Number
      {
         return this.minHeight;
      }
      
      private function _ImprovementStoreItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "item_master_bg_normal";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.top = 3;
                     if(!_loc2_)
                     {
                        addr0070:
                        _loc1_.id = "masterBG";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0093:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    §§goto(addr00a4);
                                 }
                              }
                              §§goto(addr00ae);
                           }
                           addr00a4:
                           this.masterBG = _loc1_;
                           if(!_loc2_)
                           {
                              addr00ae:
                              BindingManager.executeBindings(this,"masterBG",this.masterBG);
                           }
                           §§goto(addr00bb);
                        }
                        §§goto(addr00ae);
                     }
                     addr00bb:
                     return _loc1_;
                  }
                  §§goto(addr0093);
               }
               §§goto(addr0070);
            }
            §§goto(addr00a4);
         }
         §§goto(addr0070);
      }
      
      private function _ImprovementStoreItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "item_amount_bg";
               if(_loc2_)
               {
                  _loc1_.top = 66;
                  if(_loc2_)
                  {
                     §§goto(addr0040);
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr0055);
            }
            §§goto(addr0068);
         }
         addr0040:
         _loc1_.horizontalCenter = 0;
         if(_loc2_)
         {
            addr0055:
            _loc1_.id = "priceBG";
            if(!(_loc3_ && _loc3_))
            {
               addr0068:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        addr0094:
                        this.priceBG = _loc1_;
                        if(!(_loc3_ && _loc2_))
                        {
                           addr00a6:
                           BindingManager.executeBindings(this,"priceBG",this.priceBG);
                        }
                     }
                  }
                  §§goto(addr00b3);
               }
               §§goto(addr0094);
            }
            §§goto(addr00a6);
         }
         addr00b3:
         return _loc1_;
      }
      
      private function _ImprovementStoreItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.top = 6;
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0053:
                     _loc1_.id = "iconBG";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0087:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr0090);
                              }
                           }
                           §§goto(addr009a);
                        }
                        addr0090:
                        this.iconBG = _loc1_;
                        if(!_loc2_)
                        {
                           addr009a:
                           BindingManager.executeBindings(this,"iconBG",this.iconBG);
                        }
                        §§goto(addr00a7);
                     }
                  }
                  addr00a7:
                  return _loc1_;
               }
               §§goto(addr0053);
            }
         }
         §§goto(addr0087);
      }
      
      private function _ImprovementStoreItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "improvement_shop_sparkle";
               if(!_loc3_)
               {
                  _loc1_.top = 0;
                  §§goto(addr003e);
               }
               §§goto(addr007f);
            }
            §§goto(addr0067);
         }
         addr003e:
         if(!_loc3_)
         {
            _loc1_.left = 5;
            if(!_loc3_)
            {
               _loc1_.id = "iconSparkle";
               if(_loc2_)
               {
                  addr0067:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr007f);
                     }
                  }
                  §§goto(addr0090);
               }
               addr007f:
               _loc1_.document = this;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0090:
                  this.iconSparkle = _loc1_;
                  if(!_loc3_)
                  {
                     BindingManager.executeBindings(this,"iconSparkle",this.iconSparkle);
                  }
               }
               §§goto(addr00a7);
            }
            §§goto(addr0067);
         }
         addr00a7:
         return _loc1_;
      }
      
      private function _ImprovementStoreItemRenderer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "new_icon";
               if(!_loc2_)
               {
                  _loc1_.width = 24;
                  if(_loc3_)
                  {
                     §§goto(addr0047);
                  }
               }
               §§goto(addr0068);
            }
            §§goto(addr009f);
         }
         addr0047:
         _loc1_.height = 24;
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            addr0068:
            _loc1_.left = 5;
            if(!(_loc2_ && _loc3_))
            {
               §§goto(addr007a);
            }
            §§goto(addr009f);
         }
         addr007a:
         _loc1_.visible = false;
         if(_loc3_ || Boolean(this))
         {
            _loc1_.includeInLayout = false;
            if(_loc3_)
            {
               _loc1_.id = "iconNew";
               if(_loc3_)
               {
                  addr009f:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr00be:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           §§goto(addr00c7);
                        }
                        §§goto(addr00d1);
                     }
                  }
                  §§goto(addr00c7);
               }
               §§goto(addr00d1);
            }
            §§goto(addr00be);
         }
         addr00c7:
         this.iconNew = _loc1_;
         if(_loc3_)
         {
            addr00d1:
            BindingManager.executeBindings(this,"iconNew",this.iconNew);
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreItemRenderer_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.gap = 1;
            if(!_loc2_)
            {
               addr0032:
               _loc1_.top = 8;
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0058:
                     _loc1_.percentWidth = 100;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.mxmlContent = [this._ImprovementStoreItemRenderer_VGroup2_c(),this._ImprovementStoreItemRenderer_HGroup1_c()];
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr00a1:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr0058);
            }
            addr00a5:
            return _loc1_;
         }
         §§goto(addr0032);
      }
      
      private function _ImprovementStoreItemRenderer_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.height = 60;
            if(!_loc3_)
            {
               addr0031:
               _loc1_.width = 64;
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.verticalAlign = "middle";
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.mxmlContent = [this._ImprovementStoreItemRenderer_BriskImageDynaLib6_i()];
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr0091:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr0095);
                        }
                     }
                     §§goto(addr0091);
                  }
               }
            }
            addr0095:
            return _loc1_;
         }
         §§goto(addr0031);
      }
      
      private function _ImprovementStoreItemRenderer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_improvementStore";
            if(_loc2_ || _loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.id = "itemIcon";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0078:
                              _loc1_.document = this;
                              if(_loc2_ || _loc3_)
                              {
                                 addr0094:
                                 this.itemIcon = _loc1_;
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00a6:
                                    BindingManager.executeBindings(this,"itemIcon",this.itemIcon);
                                 }
                              }
                              §§goto(addr00b3);
                           }
                        }
                        §§goto(addr0094);
                     }
                     addr00b3:
                     return _loc1_;
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr0094);
            }
         }
         §§goto(addr0078);
      }
      
      private function _ImprovementStoreItemRenderer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.gap = 0;
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._ImprovementStoreItemRenderer_LocaLabel1_i(),this._ImprovementStoreItemRenderer_BriskImageDynaLib7_i()];
                     if(!_loc2_)
                     {
                        §§goto(addr007c);
                     }
                  }
               }
               §§goto(addr0090);
            }
            addr007c:
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0090:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0090);
      }
      
      private function _ImprovementStoreItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.maxWidth = 52;
            if(!_loc2_)
            {
               _loc1_.maxDisplayedLines = 1;
               if(_loc3_)
               {
                  addr003e:
                  _loc1_.styleName = "improvementStorePrice";
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.setStyle("paddingTop",5);
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.id = "priceLabel";
                        if(_loc3_ || _loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr009e:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    §§goto(addr00a7);
                                 }
                                 §§goto(addr00b9);
                              }
                           }
                           addr00a7:
                           this.priceLabel = _loc1_;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr00b9:
                              BindingManager.executeBindings(this,"priceLabel",this.priceLabel);
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr009e);
                  }
               }
               addr00c6:
               return _loc1_;
            }
            §§goto(addr00a7);
         }
         §§goto(addr003e);
      }
      
      private function _ImprovementStoreItemRenderer_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "improvement_shop_mm";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "priceIcon";
                  if(!_loc3_)
                  {
                     addr0060:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr0074:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(this))
                           {
                              addr0091:
                              this.priceIcon = _loc1_;
                              if(!(_loc3_ && _loc3_))
                              {
                                 BindingManager.executeBindings(this,"priceIcon",this.priceIcon);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0091);
            }
            §§goto(addr0060);
         }
         §§goto(addr0091);
      }
      
      public function ___ImprovementStoreItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      public function ___ImprovementStoreItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.rollOverHandler(param1);
         }
      }
      
      public function ___ImprovementStoreItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1194063234iconBG;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1194063234iconBG = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconBG",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr0066);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1638757991iconNew = param1;
                  addr0040:
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconNew",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
            addr007c:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get iconSparkle() : BriskImageDynaLib
      {
         return this._1643236957iconSparkle;
      }
      
      public function set iconSparkle(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1643236957iconSparkle;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1643236957iconSparkle = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr0065);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0065:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconSparkle",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
            addr0074:
            return;
         }
         §§goto(addr0065);
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
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1177184812itemIcon = param1;
                  if(!_loc4_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006f);
               }
            }
            addr007e:
            return;
         }
         §§goto(addr0058);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._283910695masterBG = param1;
                  if(_loc4_)
                  {
                     addr004d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masterBG",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr004d);
            }
            addr0074:
            return;
         }
         §§goto(addr0065);
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
                  if(_loc3_)
                  {
                     addr004b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceBG",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004b);
      }
      
      [Bindable(event="propertyChange")]
      public function get priceIcon() : BriskImageDynaLib
      {
         return this._2126080670priceIcon;
      }
      
      public function set priceIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2126080670priceIcon;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._2126080670priceIcon = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr007e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008d);
               }
               §§goto(addr007e);
            }
         }
         addr008d:
      }
      
      [Bindable(event="propertyChange")]
      public function get priceLabel() : LocaLabel
      {
         return this._1481293013priceLabel;
      }
      
      public function set priceLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1481293013priceLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1481293013priceLabel = param1;
                  if(_loc3_)
                  {
                     addr0044:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0054:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0063);
                  }
               }
               §§goto(addr0054);
            }
            addr0063:
            return;
         }
         §§goto(addr0044);
      }
   }
}

